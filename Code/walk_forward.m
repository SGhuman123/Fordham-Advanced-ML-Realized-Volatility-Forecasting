function [FC, folds] = walk_forward(Dz, setName, model, h, years, cfg)
%WALK_FORWARD Annual re-estimation; forecast every origin of each year (proposal 5).
%   After the last session of year Y-1 every model is re-fitted on the origins
%   from the sample start (or Y - rollYears for the rolling check) whose whole
%   target window ends by that session (label gap, eq. 10), and is used
%   unchanged for every origin in year Y. Hyperparameters are tuned by fitting
%   on targets that end by Y-3 and scoring origins in Y-2..Y-1.
%
%   Inputs (proposal 4.3): every feature except the raw HAR lags and calendar
%   flags enters the ML models as FFD with d* chosen on the training window only
%   (smallest grid value that passes ADF at 95%; d* = 0 leaves it unchanged),
%   re-chosen at every re-fit. Then train-only screening and median imputation.
%   Linear forecasts (HAR, EN) below the training-window minimum of daily RV are
%   floored at it (4.1). Persistence (eq. 6) is not estimated.
%
%   FC    table: date, foldYear, y, f, trainMean, floored
%   folds struct array: per-fold parameters, kept features, coefficients,
%         importances and FFD orders d* with retained correlations

spec  = Dz.spec;
k     = find(cfg.horizons == h);
cols  = set_columns(Dz, setName);
Xraw  = Dz.X(:, cols);
names = Dz.names(cols);
grp   = Dz.group(cols);
isLag = strcmp(grp, 'A');                     % raw HAR lags: never transformed
req   = isLag | strcmp(grp, 'L');             % lags (or FFD log RV) are required
req   = req | strcmp(names, 'es_rk_d');       % set D: only days with an ES session (to 30 Sep 2026)
canFFD = ~isLag & ~ismember(names, cfg.ffd.skip);
y     = Dz.Y(:, k);
tEnd  = Dz.tEnd(:, k);
dates = Dz.dates;
yr    = year(dates);
N     = numel(dates);
start = sample_start(spec, setName, cfg);
idx   = (1:N)';

FC = table();  folds = struct([]);
for Y = years
    lastTrain = find(yr <= Y - 1, 1, 'last');
    lastSub   = find(yr <= Y - 1 - cfg.tuneYears, 1, 'last');
    trStart = start;
    if strcmp(spec.window, 'rolling')
        trStart = max(start, datetime(Y - cfg.rollYears.(spec.target), 1, 1));
    end
    inWin = @(last) dates >= trStart & idx <= last;

    % ---- inputs: FFD with d* chosen on this training window only -------------------
    X = Xraw;
    dstar = zeros(1, numel(names));  rho = ones(1, numel(names));
    if any(strcmp(model, {'EN','RF'}))
        key = sprintf('%s|%s|%s|%d|%s', spec.target, spec.variant, spec.esHoliday, Y, char(string(trStart)));
        for j = find(canFFD)
            [X(:, j), dstar(j), rho(j)] = ffd_cached(Xraw(:, j), names{j}, inWin(lastTrain), key, cfg);
        end
    end
    hasReq = all(~isnan(X(:, req)), 2);

    tr  = inWin(lastTrain) & tEnd <= lastTrain & ~isnan(y) & hasReq;
    sub = tr & tEnd <= lastSub;
    val = tr & yr >= Y - cfg.tuneYears;
    te  = yr == Y & dates >= start & hasReq & tEnd <= Dz.lastValid;
    if ~any(te) || sum(sub) < 100 || sum(val) < 100
        warning('walk_forward: skipping %d (%s %s h=%d): too few rows', Y, model, setName, h);
        continue
    end

    % train-only feature screening and median imputation: a late-starting series
    % (VVIX, VIX9D, ...) enters once it has cfg.minFeatureYears of history
    keep = sum(~isnan(X(tr,:)), 1) >= 252 * cfg.minFeatureYears | req;
    Xk   = X(:, keep);
    med  = median(Xk(tr,:), 1, 'omitnan');
    for j = 1:size(Xk, 2)
        Xk(isnan(Xk(:, j)), j) = med(j);
    end

    seed = cfg.seed + 1000 * (Y - 2000) + 10 * h + find(strcmp(model, {'HAR','EN','RF','PER'}));
    Xtr = Xk(tr,:);  ytr = y(tr);
    s = sub(tr);  v = val(tr);
    floorTr  = min(Dz.rv(inWin(lastTrain)));
    floorSub = min(Dz.rv(inWin(lastSub)));
    switch model
        case 'PER'
            M = fit_persistence(Dz.rv, h, cfg);
        case 'HAR'
            M = fit_har(Xtr, ytr, floorTr);
        case 'EN'
            M = fit_en(Xtr, ytr, s, v, cfg, floorSub, floorTr);
        case 'RF'
            M = fit_rf(Xtr, ytr, s, v, cfg, seed);
    end
    if strcmp(model, 'PER')
        [f, floored] = M.predict(idx(te));
    else
        [f, floored] = M.predict(Xk(te,:));
    end
    okF = ~isnan(f);
    n = sum(okF);
    tdates = dates(te);  ty = y(te);
    FC = [FC; table(tdates(okF), repmat(Y, n, 1), ty(okF), f(okF), repmat(mean(ytr), n, 1), floored(okF), ...
        'VariableNames', {'date','foldYear','y','f','trainMean','floored'})]; %#ok<AGROW>

    fo.year = Y;  fo.nTrain = sum(tr);  fo.nSub = sum(sub);  fo.nVal = sum(val);
    fo.features = names(keep);
    fo.ffd_d   = dstar(keep);
    fo.ffd_rho = rho(keep);
    fo.params = M.params;
    fo.coef = [];  fo.importance = [];
    if isfield(M, 'coef'),       fo.coef = M.coef; end
    if isfield(M, 'importance'), fo.importance = M.importance; end
    if strcmp(model, 'HAR'),     fo.coef = M.b(2:end)'; end
    folds = [folds, fo]; %#ok<AGROW>
end
end

function [xf, d, rho] = ffd_cached(x, name, trainRows, key, cfg)
% d* depends only on the series and the training window, so it is computed once
% per (feature, fold) and shared by every model, set and horizon in this process.
persistent cache
if isempty(cache), cache = containers.Map(); end
ck = [key '|' name];
if isKey(cache, ck)
    c = cache(ck);  xf = c{1};  d = c{2};  rho = c{3};  return
end
[d, rho] = ffd_choose(x, trainRows, cfg);
if isnan(d), d = cfg.ffd.grid(end); rho = NaN; end    % no grid value passes: use d = 1
xf = ffd(x, d, cfg.ffd.tau);
cache(ck) = {xf, d, rho};
end
