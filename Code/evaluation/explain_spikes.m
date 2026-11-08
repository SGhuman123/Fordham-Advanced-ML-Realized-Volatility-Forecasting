function explain_spikes(target, h, setName, phase, days)
%EXPLAIN_SPIKES Day-level Shapley values for one forest around stress episodes.
%   explain_spikes()                        SPY, h = 1, set C, locked test, default days
%   explain_spikes('SPY', 1, 'C', 'test', {'2020-03-16', '2025-04-08'})
%
%   For each fold year that holds a requested origin, the forest is rebuilt
%   exactly as walk_forward / fit_rf built it: same training rows, features, FFD
%   orders, median fill, tuned hyperparameters and RNG seed. The rebuilt forest
%   must reproduce that year's saved forecasts (it errors otherwise), so the
%   values explain the forecasts that were scored. Interventional kernel SHAP,
%   100 training rows as background. Nothing is re-estimated or overwritten.
%
%   Output: Output/tables/<phase>/main/spike_shap_<target>_h<h>_<set>.csv, one
%   row per origin x feature: the forecast, HAR and realized next-period vol
%   (annualized %), the baseline, each feature's Shapley value (daily %^2), its
%   share of the push from the baseline to the forecast, its value and the
%   training median.

if nargin < 1, target = 'SPY'; end
if nargin < 2, h = 1; end
if nargin < 3, setName = 'C'; end
if nargin < 4, phase = 'test'; end
if nargin < 5
    % before, at and after the three largest test episodes (COVID 2020, the
    % 20 Sep 2022 forecast and the April 2025 tariffs)
    days = {'2020-02-21','2020-02-26','2020-02-27','2020-03-11','2020-03-16','2020-04-15','2020-05-15', ...
            '2022-09-12','2022-09-20', ...
            '2025-04-02','2025-04-03','2025-04-04','2025-04-08','2025-04-25','2025-05-15'};
end
cfg = rv_config();
P   = load_panel(cfg);
S   = load(fullfile(cfg.outDir, 'forecasts', phase, 'main', sprintf('%s_h%d.mat', target, h)));
if ~isfield(S.spec, 'esLag'), S.spec.esLag = 0; end      % forecasts saved before eslag1
Dz  = build_design(P, S.spec, cfg);
key = ['RF_' setName];
fc  = S.R.(key).fc;  har = S.R.HAR_A.fc;
k   = find(cfg.horizons == h);  y = Dz.Y(:, k);  yr = year(Dz.dates);
vol = @(v) sqrt(252 * max(v, 0));
dd  = reshape(datetime(days), 1, []);                   % a row: for-loops run over columns

rows = {};
for Y = unique(year(dd))
    fo = S.R.(key).folds([S.R.(key).folds.year] == Y);
    if isempty(fo), warning('explain_spikes: no %d fold, skipped', Y); continue; end

    % rebuild the fold's inputs exactly as walk_forward does
    [~, keep] = ismember(fo.features, Dz.names);
    X = Dz.X(:, keep);
    for j = 1:numel(keep)
        if fo.ffd_d(j) > 0, X(:, j) = ffd(X(:, j), fo.ffd_d(j), cfg.ffd.tau); end
    end
    req = ismember(Dz.group(keep), {'A','L'}) | strcmp(fo.features, 'es_rk_d');
    ok  = all(~isnan(X(:, req)), 2);
    lastTrain = find(yr <= Y - 1, 1, 'last');
    tr  = Dz.dates >= sample_start(S.spec, setName, cfg) & Dz.tEnd(:, k) <= lastTrain & ~isnan(y) & ok;
    te  = yr == Y & ok & Dz.tEnd(:, k) <= Dz.lastValid;
    med = median(X(tr,:), 1, 'omitnan');
    for j = 1:size(X, 2), X(isnan(X(:, j)), j) = med(j); end

    % the final forest of fit_rf, with walk_forward's seed for this fold
    seed = cfg.seed + 1000 * (Y - 2000) + 10 * h + 3;
    rng(seed + 1, 'twister');
    mdl = TreeBagger(cfg.rf.nTrees, X(tr,:), y(tr), 'Method', 'regression', ...
        'MinLeafSize', fo.params.leaf, 'NumPredictorsToSample', fo.params.mtry);
    f = @(Z) predict(mdl, Z);

    sel = fc.foldYear == Y;
    [~, loc] = ismember(fc.date(sel), Dz.dates);
    gap = max(abs(f(X(loc, :)) - fc.f(sel)));
    if gap > 1e-8
        error('explain_spikes: the rebuilt %d forest does not reproduce the saved forecasts (max gap %.3g)', Y, gap);
    end

    rng(cfg.seed, 'twister');
    bg = X(tr,:);  bg = bg(randperm(size(bg, 1), min(100, size(bg, 1))), :);
    for d = dd(year(dd) == Y)
        i = find(Dz.dates == d);
        if isempty(i) || ~te(i), warning('explain_spikes: %s is not a scored origin, skipped', char(d)); continue; end
        ex   = shapley(f, bg, 'QueryPoints', X(i, :));
        sv   = ex.ShapleyValues{:, 2};          % column 1 = predictor, column 2 = value
        pred = f(X(i, :));
        push = sum(sv);                          % baseline + sum of Shapley values = forecast
        ih = find(har.date == d);  hf = NaN;  if ~isempty(ih), hf = har.f(ih); end
        for j = 1:numel(keep)
            rows(end+1, :) = {d, Y, vol(pred), vol(hf), vol(y(i)), vol(pred - push), ...
                fo.features{j}, sv(j), sv(j) / push, X(i, j), med(j)}; %#ok<AGROW>
        end
    end
    fprintf('explain_spikes: fold %d reproduced (max gap %.2g)\n', Y, gap);
end

T = cell2table(rows, 'VariableNames', {'origin','fold','vol_forecast','vol_HAR','vol_realized', ...
    'vol_baseline','feature','shap','share_of_push','value','train_median'});
outDir = fullfile(cfg.outDir, 'tables', phase, 'main');
writetable(T, fullfile(outDir, sprintf('spike_shap_%s_h%d_%s.csv', target, h, setName)));
fprintf('explain_spikes: %d origins -> %s\n', numel(unique(T.origin)), outDir);
end
