function evaluate_phase(phase, scenario)
%EVALUATE_PHASE Every Section-6 table from the saved walk-forward forecasts.
%   evaluate_phase('dev')            development pseudo-OOS, main design
%   evaluate_phase('dev','rolling')  a robustness scenario
%   evaluate_phase('test')           locked test (after run_job(...,'test'))
%
%   Writes CSV tables and summary.md to Output/tables/<phase>/<scenario>/.
%   All comparisons use the days on which every compared model has a forecast
%   and the target is observed. Losses are on daily %^2 variance.

if nargin < 2, scenario = 'main'; end
phase = char(phase);  scenario = char(scenario);
cfg = rv_config();
P   = load_panel(cfg);
inDir  = fullfile(cfg.outDir, 'forecasts', phase, scenario);
outDir = fullfile(cfg.outDir, 'tables', phase, scenario);
if ~isfolder(outDir), mkdir(outDir); end

md = fopen(fullfile(outDir, 'summary.md'), 'w');
closer = onCleanup(@() fclose(md));
fprintf(md, '# Results: %s period, scenario "%s"\n\n', phase, scenario);
fprintf(md, ['Generated %s by evaluate_phase.m. Losses are on daily variance in %%^2; ' ...
    'QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, ' ...
    'positive = the model has lower loss than the comparison. MCS at %d%%.\n\n'], ...
    char(datetime('now','Format','yyyy-MM-dd HH:mm')), round(100*cfg.mcs.alpha));

allRatios = table();  succ = table();
for target = {'SPY','ES'}
    for h = cfg.horizons
        f = fullfile(inDir, sprintf('%s_h%d.mat', target{1}, h));
        if ~isfile(f), continue; end
        S = load(f);
        R = S.R;  spec = S.spec;
        tag = sprintf('%s_h%d', target{1}, h);
        Dz  = build_design(P, spec, cfg);
        A   = align_forecasts(R);
        fprintf(md, '## %s target, h = %d\n\n', target{1}, h);
        seed = cfg.seed + h;

        % ---- 1. statistical accuracy on the all-model common sample -----------------
        rows = all(~isnan(A.F), 2) & ~isnan(A.y);
        T1 = loss_table(A, rows, h, cfg, seed);
        writetable(T1, fullfile(outDir, ['loss_' tag '.csv']));
        fprintf(md, '### Accuracy, all models on common days (%s to %s, n = %d)\n\n', ...
            dstr(A.dates(find(rows,1))), dstr(A.dates(find(rows,1,'last'))), sum(rows));
        md_table(md, T1);
        allRatios = [allRatios; ratio_rows(T1, target{1}, h, 'all-model common days')]; %#ok<AGROW>
        succ = [succ; success_row(T1, target{1}, h)]; %#ok<AGROW>

        % SPY set D starts in 2010, so sets A-C also get their own longer common sample
        noD = ~endsWith(A.keys, '_D');
        rowsNoD = all(~isnan(A.F(:, noD)), 2) & ~isnan(A.y);
        if any(~noD) && sum(rowsNoD) > 1.05 * sum(rows)
            Ab = subset(A, noD);
            T1b = loss_table(Ab, rowsNoD, h, cfg, seed);
            writetable(T1b, fullfile(outDir, ['loss_noD_' tag '.csv']));
            fprintf(md, '### Accuracy, sets A-C on their common days (%s to %s, n = %d)\n\n', ...
                dstr(A.dates(find(rowsNoD,1))), dstr(A.dates(find(rowsNoD,1,'last'))), sum(rowsNoD));
            md_table(md, T1b);
            allRatios = [allRatios; ratio_rows(T1b, target{1}, h, 'sets A-C common days')]; %#ok<AGROW>
        end

        % ---- 2. RQ1: set A only ----------------------------------------------------
        T2 = rq1_table(A, h, cfg, seed);
        if ~isempty(T2)
            writetable(T2, fullfile(outDir, ['rq1_' tag '.csv']));
            fprintf(md, '### RQ1: set A (volatility history only)\n\n');
            md_table(md, T2);
        end

        % ---- 3. RQ2: RF-minus-EN gain from set A to richer sets (eq. 8) -------------
        T3 = rq2_table(A, h);
        if ~isempty(T3)
            writetable(T3, fullfile(outDir, ['rq2_' tag '.csv']));
            fprintf(md, ['### RQ2: does RF gain more than EN from richer features?\n\n' ...
                'gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; ' ...
                'p1 is one-sided for DiD > 0.\n\n']);
            md_table(md, T3);
        end

        % ---- 4. calm vs high-RV regimes and stress episodes --------------------------
        T4 = regime_table(A, Dz, rows, cfg);
        writetable(T4, fullfile(outDir, ['regimes_' tag '.csv']));
        fprintf(md, '### QLIKE ratio vs HAR by regime and stress episode\n\n');
        md_table(md, T4);
        if any(~noD) && sum(rowsNoD) > 1.05 * sum(rows)          % SPY sets A-C from 2008 (GFC)
            T4b = regime_table(subset(A, noD), Dz, rowsNoD, cfg);
            writetable(T4b, fullfile(outDir, ['regimes_noD_' tag '.csv']));
            fprintf(md, '### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample\n\n');
            md_table(md, T4b);
        end

        % ---- 5. economic value -------------------------------------------------------
        T5 = utility_table(A, rows, cfg);
        writetable(T5, fullfile(outDir, ['utility_' tag '.csv']));
        fprintf(md, '### Vol-targeting realized utility (Bollerslev et al., 2018), %% per year\n\n');
        md_table(md, T5);
        if h == 22
            T6 = varswap_table(A, rows, P, Dz, spec, cfg);
            succ = add_varswap(succ, T6, T1, target{1});
            writetable(T6, fullfile(outDir, ['varswap_' tag '.csv']));
            fprintf(md, ['### Variance-swap check vs VIX^2 (eq. 9), vol points^2\n\n' ...
                'Timing rule: sell variance when the annualized forecast is below K = VIX^2, ' ...
                'buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target%s; ' ...
                '"cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).\n\n'], ...
                ternary(strcmp(spec.target,'SPY'), ' (SPY rescaled by the training close-to-close / RV ratio)', ''));
            md_table(md, T6);
        end

        % ---- 6. elastic-net coefficients and forest importance ---------------------
        T7 = explain_table(R);
        writetable(T7, fullfile(outDir, ['explain_' tag '.csv']));
        explain_md(md, T7);
        T7b = har_table(R);
        writetable(T7b, fullfile(outDir, ['har_coefficients_' tag '.csv']));
        T8 = ffd_table(R);
        if ~isempty(T8)
            writetable(T8, fullfile(outDir, ['ffd_' tag '.csv']));
            fprintf(md, ['### Fractional differencing of inputs (proposal 4.3)\n\n' ...
                'd* chosen on each training window (smallest grid value passing ADF at 95%%); ' ...
                'rho = correlation with the original series (memory retained). Inputs with d* = 0 ' ...
                'in every fold are left out of this table.\n\n']);
            md_table(md, T8);
        end

        % ---- 7. lost origins --------------------------------------------------------
        lostY = sum(~isnan(A.F(:, strcmp(A.keys,'HAR_A'))) & isnan(A.y));
        fprintf(md, ['Lost origins (HAR forecast made, target unobserved because more than %d%% ' ...
            'of its window is missing): %d.\n\n'], round(100*cfg.maxMissFrac), lostY);

        if h == 22, plot_forecasts(A, rows, T1, fullfile(outDir, ['forecasts_' tag '.png']), tag); end
    end
end
if ~isempty(succ)
    writetable(succ, fullfile(outDir, 'success_criterion.csv'));
    fprintf(md, ['## Success criterion (proposal Section 6)\n\nPer target and horizon: the ' ...
        'lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), ' ...
        'whether it is in the 10%% MCS, and for h = 22 whether its variance-swap timing is ' ...
        'directionally consistent (positive mean P&L on the close-to-close leg and positive ' ...
        'signal-payoff correlation). Persistence is the floor: "uninformative" lists every ' ...
        'forecast that does not significantly beat it.\n\n']);
    md_table(md, succ);
end
if ~isempty(allRatios)
    writetable(allRatios, fullfile(outDir, 'loss_ratios_vs_HAR.csv'));
    fprintf(md, '## Loss ratios vs HAR (set A), every target, horizon and set\n\n');
    md_table(md, allRatios);
end
fprintf('evaluate_phase: wrote %s\n', outDir);
end

% =============================================================================
function A = align_forecasts(R)
keys = fieldnames(R)';
order = {'PER_A','HAR_A','EN_A','RF_A','EN_B','RF_B','EN_C','RF_C','EN_D','RF_D','EN_COM','RF_COM','EN_AV','RF_AV', ...
         'EN_AL','RF_AL','EN_BL','RF_BL','EN_CL','RF_CL','EN_DL','RF_DL'};
[~, o] = sort(cellfun(@(k) find([strcmp(order, k), true], 1), keys));
keys = keys(o);
dates = [];
for k = keys, dates = [dates; R.(k{1}).fc.date]; end %#ok<AGROW>
dates = unique(dates);
T = numel(dates);  m = numel(keys);
A.keys = keys;  A.dates = dates;
A.y = NaN(T,1);  A.F = NaN(T,m);  A.TM = NaN(T,m);  A.FL = false(T,m);  A.fold = NaN(T,1);
for i = 1:m
    fc = R.(keys{i}).fc;
    [~, loc] = ismember(fc.date, dates);
    A.F(loc, i)  = fc.f;
    A.TM(loc, i) = fc.trainMean;
    if ismember('floored', fc.Properties.VariableNames), A.FL(loc, i) = fc.floored; end
    A.y(loc)     = fc.y;
    A.fold(loc)  = fc.foldYear;
end
end

function B = subset(A, cols)
B = A;
B.keys = A.keys(cols);  B.F = A.F(:, cols);  B.TM = A.TM(:, cols);  B.FL = A.FL(:, cols);
end

function T = loss_table(A, rows, h, cfg, seed)
y = A.y(rows);  F = A.F(rows, :);  TM = A.TM(rows, :);
m = numel(A.keys);
LQ = qlike(y, F);  LM = (y - F).^2;
iH = find(strcmp(A.keys, 'HAR_A'));
bl = max(h, floor(sqrt(sum(rows))));            % MCS block length
[inQ, pQ] = mcs(LQ, cfg.mcs.alpha, cfg.mcs.B, bl, seed);
[inM, pM] = mcs(LM, cfg.mcs.alpha, cfg.mcs.B, bl, seed);
[model, featureSet] = split_keys(A.keys);
n = repmat(sum(rows), m, 1);
QLIKE = mean(LQ)';  MSE = mean(LM)';  MAE = mean(abs(y - F))';
% one benchmark for every row: the HAR (set A) training-window mean of the target
R2oos = (1 - sum(LM) ./ sum((y - TM(:, iH)).^2))';
QLIKE_ratio = QLIKE / QLIKE(iH);  MSE_ratio = MSE / MSE(iH);
floor_pct = 100 * mean(A.FL(rows, :), 1)';
% against the naive Persistence benchmark (proposal v5.4, 4.4 and 6)
iP = find(strcmp(A.keys, 'PER_A'));
QLIKE_ratio_PER = NaN(m,1);  p1_vs_PER = NaN(m,1);
if ~isempty(iP)
    QLIKE_ratio_PER = QLIKE / QLIKE(iP);
    for i = setdiff(1:m, iP)
        [~, ~, p1_vs_PER(i)] = dm_test(LQ(:,iP) - LQ(:,i), h);
    end
end
DM_QLIKE = NaN(m,1);  p_QLIKE = NaN(m,1);  p1_QLIKE = NaN(m,1);  DM_MSE = NaN(m,1);  p_MSE = NaN(m,1);
for i = setdiff(1:m, iH)
    [DM_QLIKE(i), p_QLIKE(i), p1_QLIKE(i)] = dm_test(LQ(:,iH) - LQ(:,i), h);
    [DM_MSE(i),   p_MSE(i)]   = dm_test(LM(:,iH) - LM(:,i), h);
end
T = table(model', featureSet', n, QLIKE, MSE, MAE, R2oos, QLIKE_ratio, MSE_ratio, ...
    DM_QLIKE, p_QLIKE, p1_QLIKE, DM_MSE, p_MSE, inQ', pQ', inM', pM', floor_pct, ...
    QLIKE_ratio_PER, p1_vs_PER, ...
    'VariableNames', {'model','set','n','QLIKE','MSE','MAE','R2oos','QLIKE_ratio','MSE_ratio', ...
    'DM_QLIKE','p_QLIKE','p1_QLIKE','DM_MSE','p_MSE','inMCS_QLIKE','pMCS_QLIKE','inMCS_MSE', ...
    'pMCS_MSE','floor_pct','QLIKE_ratio_PER','p1_vs_PER'});
end

function T = rq1_table(A, h, cfg, seed)
% set A: Persistence, HAR, EN and RF (proposal v5.4, RQ1)
k = {'PER_A','HAR_A','EN_A','RF_A'};
if ~all(ismember(k, A.keys)), T = table(); return; end
c = cellfun(@(x) find(strcmp(A.keys, x)), k);
rows = all(~isnan(A.F(:, c)), 2) & ~isnan(A.y);
y = A.y(rows);  F = A.F(rows, c);
LQ = qlike(y, F);  LM = (y - F).^2;
pairs = {'HAR_A vs PER_A', 2, 1; 'EN_A vs PER_A', 3, 1; 'RF_A vs PER_A', 4, 1; ...
         'EN_A vs HAR_A', 3, 2; 'RF_A vs HAR_A', 4, 2; 'RF_A vs EN_A', 4, 3};
bl = max(h, floor(sqrt(sum(rows))));
[~, pQ] = mcs(LQ, cfg.mcs.alpha, cfg.mcs.B, bl, seed);
[~, pM] = mcs(LM, cfg.mcs.alpha, cfg.mcs.B, bl, seed);
T = table();
for r = 1:size(pairs, 1)
    i = pairs{r,2};  j = pairs{r,3};
    [sQ, p2Q, p1Q] = dm_test(LQ(:,j) - LQ(:,i), h);
    [sM, p2M, p1M] = dm_test(LM(:,j) - LM(:,i), h);
    T = [T; table(string(pairs{r,1}), sum(rows), mean(LQ(:,i))/mean(LQ(:,j)), sQ, p2Q, p1Q, ...
        mean(LM(:,i))/mean(LM(:,j)), sM, p2M, p1M, pQ(i), pM(i), ...
        'VariableNames', {'comparison','n','QLIKE_ratio','DM_QLIKE','p2_QLIKE','p1_QLIKE', ...
        'MSE_ratio','DM_MSE','p2_MSE','p1_MSE','pMCS_QLIKE_first','pMCS_MSE_first'})]; %#ok<AGROW>
end
end

function T = rq2_table(A, h)
T = table();
for s = {'B','C','D'}
    k = {'EN_A', ['EN_' s{1}], 'RF_A', ['RF_' s{1}]};
    if ~all(ismember(k, A.keys)), continue; end
    c = cellfun(@(x) find(strcmp(A.keys, x)), k);
    rows = all(~isnan(A.F(:, c)), 2) & ~isnan(A.y);
    y = A.y(rows);  F = A.F(rows, c);
    for loss = {'QLIKE','MSE'}
        if strcmp(loss{1}, 'QLIKE'), L = qlike(y, F); else, L = (y - F).^2; end
        gEN = L(:,1) - L(:,2);  gRF = L(:,3) - L(:,4);
        d = gRF - gEN;
        [stat, p2, p1] = dm_test(d, h);
        T = [T; table(string(['A->' s{1}]), string(loss{1}), sum(rows), ...
            mean(gEN), 100*mean(gEN)/mean(L(:,1)), mean(gRF), 100*mean(gRF)/mean(L(:,3)), ...
            mean(d), stat, p1, p2, ...
            'VariableNames', {'step','loss','n','gain_EN','gain_EN_pct','gain_RF','gain_RF_pct', ...
            'DiD','DM','p1','p2'})]; %#ok<AGROW>
    end
end
end

function T = regime_table(A, Dz, rows, cfg)
% high-RV regime: monthly RV lag at the origin above its 2005-2017 percentile
rvm = Dz.X(:, strcmp(Dz.names, 'rv_m'));
dev = Dz.dates >= datetime(2005,1,1) & Dz.dates < datetime(cfg.devLastYear + 1, 1, 1);
thr = prctile(rvm(dev), cfg.regimePct);
[~, loc] = ismember(A.dates, Dz.dates);
high = rvm(loc) > thr;

% extreme days (Rahimikia & Poon, 2026): realized target above Q3 + 1.5 IQR of the
% evaluated sample, assigned ex post
yq = prctile(A.y(rows), [25 75]);
extreme = A.y > yq(2) + 1.5 * diff(yq);

% episodes: GFC and euro crisis windows from Kilic (2026); the test-period
% episodes are the ones named in proposal Section 6
ep = {'Calm (monthly RV <= threshold)', [], ~high;
      'High RV (monthly RV > threshold)', [], high;
      'Normal days (target <= Q3 + 1.5 IQR)', [], ~extreme;
      'Extreme days (target > Q3 + 1.5 IQR)', [], extreme;
      'GFC (Dec 2007 - Jun 2009)',        [datetime(2007,12,1) datetime(2009,6,30)], [];
      'Euro crisis (Jan 2010 - Jun 2013)', [datetime(2010,1,1) datetime(2013,6,30)], [];
      'Aug 2015 devaluation',  [datetime(2015,8,17) datetime(2015,10,30)], [];
      'Feb 2018 Volmageddon',  [datetime(2018,1,29) datetime(2018,3,30)], [];
      'COVID 2020',            [datetime(2020,2,20) datetime(2020,5,29)], [];
      '2022 bear market',      [datetime(2022,1,3)  datetime(2022,10,31)], [];
      'Apr 2025 tariffs',      [datetime(2025,4,1)  datetime(2025,5,30)], []};
iH = strcmp(A.keys, 'HAR_A');
T = table();
for e = 1:size(ep, 1)
    if isempty(ep{e,2}), sel = rows & ep{e,3};
    else, sel = rows & A.dates >= ep{e,2}(1) & A.dates <= ep{e,2}(2);
    end
    if sum(sel) < 10, continue; end
    L = mean(qlike(A.y(sel), A.F(sel, :)), 1);
    r = array2table(L / L(iH), 'VariableNames', A.keys);
    T = [T; [table(string(ep{e,1}), sum(sel), L(iH), 'VariableNames', {'sample','n','HAR_QLIKE'}), r]]; %#ok<AGROW>
end
end

function T = success_row(T1, target, h)
ml = ~ismember(T1.model, {'HAR','PER'});
q = T1.QLIKE;  q(~ml) = Inf;
[~, i] = min(q);
% Persistence is the floor: a forecast that does not significantly beat it is
% "uninformative" at that horizon (proposal v5.4, 6)
unin = ~strcmp(T1.model, 'PER') & ~(T1.p1_vs_PER < 0.05);
names = strcat(T1.model, '_', T1.set);
T = table(string(target), h, string([T1.model{i} '_' T1.set{i}]), T1.QLIKE_ratio(i), ...
    T1.p1_QLIKE(i), T1.inMCS_QLIKE(i), T1.p1_QLIKE(i) < 0.05 && T1.inMCS_QLIKE(i), ...
    T1.QLIKE_ratio_PER(i), T1.p1_vs_PER(i) < 0.05, string(strjoin(names(unin), ' ')), NaN, NaN, ...
    'VariableNames', {'target','h','best_ML','QLIKE_ratio','p1_vs_HAR','in_MCS', ...
    'beats_HAR','ratio_vs_PER','beats_PER','uninformative','swap_pnl_cc','swap_corr'});
end

function succ = add_varswap(succ, T6, T1, target)
r = find(succ.target == target & succ.h == 22, 1, 'last');
k = find(T6.strategy == succ.best_ML(r), 1);
if isempty(k), return; end
succ.swap_pnl_cc(r) = T6.pnl_cc_leg(k);
succ.swap_corr(r)   = T6.corr_signal_payoff(k);
end

function T = utility_table(A, rows, cfg)
% U = SR^2/gamma * (sqrt(RV/F) - RV/(2F)); the maximum SR^2/(2 gamma) is reached at F = RV
y = A.y(rows);  F = A.F(rows, :);
U = 100 * cfg.econ.SR^2 / cfg.econ.gamma * (sqrt(y ./ F) - y ./ (2 * F));
[model, featureSet] = split_keys(A.keys);
T = table(model', featureSet', mean(U)', 'VariableNames', {'model','set','utility_pct'});
T.max_possible_pct = repmat(100 * cfg.econ.SR^2 / (2 * cfg.econ.gamma), height(T), 1);
end

function T = varswap_table(A, rows, P, Dz, spec, cfg)
[~, loc] = ismember(A.dates, P.date);
loc = loc(rows);  fold = A.fold(rows);
K = ffill_limit(P.vix, 5);  K = K(loc).^2;                   % strike, vol points^2
r2 = P.spx_ret.^2;
cc = movmean(r2, [0 21]);  cc = [cc(2:end); NaN];             % mean of t+1..t+22
cc = 252 * cc(loc);
cc(loc + 22 > height(P)) = NaN;

% SPY intraday RV omits the overnight move: rescale by the training-window ratio
c = ones(size(loc));
if strcmp(spec.target, 'SPY')
    start = sample_start(spec, 'A', cfg);
    for Y = unique(fold)'
        w = P.date >= start & P.date < datetime(Y,1,1) & ~isnan(Dz.rv);
        c(fold == Y) = mean(r2(w)) / mean(Dz.rv(w));
    end
end
legT = 252 * c .* A.y(rows);
ok = ~isnan(K) & ~isnan(cc);

T = table();
base = {'Always sell variance', ones(size(K))};
for i = 0:numel(A.keys)
    if i == 0
        name = base{1};  pos = base{2};  fa = NaN(size(K));
    else
        name = A.keys{i};  fa = 252 * c .* A.F(rows, i);  pos = sign(K - fa);
    end
    pT = pos .* (K - legT);  pC = pos .* (K - cc);
    [tT] = dm_test(pT(ok), 22);  [tC] = dm_test(pC(ok), 22);
    hit = NaN;  rho = NaN;
    if i > 0
        hit = mean(sign(K(ok) - fa(ok)) == sign(K(ok) - cc(ok)));
        rho = corr(K(ok) - fa(ok), K(ok) - cc(ok));
    end
    T = [T; table(string(name), sum(ok), mean(pT(ok)), tT, mean(pC(ok)), tC, hit, rho, ...
        mean(pos(ok) > 0), 'VariableNames', {'strategy','n','pnl_target_leg','t_target_leg', ...
        'pnl_cc_leg','t_cc_leg','hit_rate_cc','corr_signal_payoff','frac_short'})]; %#ok<AGROW>
end
end

function T = explain_table(R)
T = table();
for k = fieldnames(R)'
    [model, set] = split_keys(k);
    if any(strcmp(model{1}, {'HAR','PER'})), continue; end
    folds = R.(k{1}).folds;
    feats = unique([folds.features], 'stable');
    nF = numel(folds);
    coef = zeros(nF, numel(feats));  imp = zeros(nF, numel(feats));
    for j = 1:nF
        [~, loc] = ismember(folds(j).features, feats);
        if ~isempty(folds(j).coef),       coef(j, loc) = folds(j).coef; end
        if ~isempty(folds(j).importance), imp(j, loc)  = folds(j).importance; end
    end
    T = [T; table(repmat(model, numel(feats), 1), repmat(set, numel(feats), 1), feats', ...
        mean(coef, 1)', mean(coef ~= 0, 1)', mean(imp, 1)', ...
        'VariableNames', {'model','set','feature','mean_std_coef','selection_freq','mean_importance'})]; %#ok<AGROW>
end
end

function T = har_table(R)
% HAR (eq. 7) coefficients of every annual re-fit
fo = R.HAR_A.folds;
C = vertcat(fo.coef);
b0 = arrayfun(@(f) f.params.b0, fo)';
T = table([fo.year]', [fo.nTrain]', b0, C(:,1), C(:,2), C(:,3), sum(C, 2), ...
    'VariableNames', {'forecast_year','n_train','b0','b_d','b_w','b_m','persistence_sum'});
end

function T = ffd_table(R)
% d* and retained correlation per input across the folds of the largest set
T = table();
keys = fieldnames(R)';
cand = keys(startsWith(keys, 'EN_'));
if isempty(cand), return; end
k = cand{end};
folds = R.(k).folds;
if isempty(folds) || ~isfield(folds, 'ffd_d'), return; end
feats = unique([folds.features], 'stable');
D = NaN(numel(folds), numel(feats));  Rho = D;
for j = 1:numel(folds)
    [~, loc] = ismember(folds(j).features, feats);
    D(j, loc) = folds(j).ffd_d;  Rho(j, loc) = folds(j).ffd_rho;
end
use = any(D > 0, 1);
if ~any(use), return; end
T = table(repmat(string(k), sum(use), 1), feats(use)', min(D(:,use), [], 1)', median(D(:,use), 1, 'omitnan')', ...
    max(D(:,use), [], 1)', mean(D(:,use) > 0, 1)', mean(Rho(:,use), 1, 'omitnan')', ...
    'VariableNames', {'model_set','feature','d_min','d_median','d_max','share_folds_ffd','mean_rho'});
end

function explain_md(md, T)
if isempty(T), return; end
sets = unique(T.set(strcmp(T.model, 'RF')));
last = sets{end};
for mdl = {'EN','RF'}
    S = T(strcmp(T.model, mdl{1}) & strcmp(T.set, last), :);
    if isempty(S), continue; end
    if strcmp(mdl{1}, 'EN')
        [~, o] = sort(abs(S.mean_std_coef), 'descend');
        S = S(o(1:min(8, end)), {'feature','mean_std_coef','selection_freq'});
        fprintf(md, '### Elastic net on set %s: largest average standardized coefficients\n\n', last);
    else
        [~, o] = sort(S.mean_importance, 'descend');
        S = S(o(1:min(8, end)), {'feature','mean_importance'});
        fprintf(md, '### Random forest on set %s: impurity importance (share)\n\n', last);
    end
    md_table(md, S);
end
end

function T = ratio_rows(T1, target, h, sample)
T = T1(:, {'model','set','QLIKE_ratio','MSE_ratio','p_QLIKE','inMCS_QLIKE','QLIKE_ratio_PER'});
T.target = repmat(string(target), height(T), 1);
T.h = repmat(h, height(T), 1);
T.sample = repmat(string(sample), height(T), 1);
T = T(:, [8 9 10 1:7]);
end

function [model, set] = split_keys(keys)
parts = cellfun(@(k) strsplit(k, '_'), keys, 'UniformOutput', false);
model = cellfun(@(p) p{1}, parts, 'UniformOutput', false);
set   = cellfun(@(p) p{2}, parts, 'UniformOutput', false);
end

function plot_forecasts(A, rows, T1, file, tag)
try
    qE = T1.QLIKE;  qE(~strcmp(T1.model, 'EN')) = Inf;
    qR = T1.QLIKE;  qR(~strcmp(T1.model, 'RF')) = Inf;
    [~, iE] = min(qE);  [~, iR] = min(qR);
    iH = find(strcmp(A.keys, 'HAR_A'));
    vol = @(v) sqrt(252 * v);                 % annualized vol in %
    fig = figure('Visible', 'off', 'Position', [100 100 1100 420]);
    try, theme(fig, 'light'); catch, end
    d = A.dates(rows);
    p1 = plot(d, vol(A.y(rows)), 'Color', [0.55 0.55 0.55], 'LineWidth', 1.4); hold on
    p2 = plot(d, vol(A.F(rows, iH)), 'LineWidth', 1.1);
    p3 = plot(d, vol(A.F(rows, iE)), 'LineWidth', 1.1);
    p4 = plot(d, vol(A.F(rows, iR)), 'LineWidth', 1.1);
    legend([p1 p2 p3 p4], {'Realized', 'HAR (set A)', ['EN (set ' A.keys{iE}(4:end) ')'], ...
        ['RF (set ' A.keys{iR}(4:end) ')']}, 'Location', 'northwest');
    ylabel('Annualized volatility over next 22 days (%)');
    title(strrep(tag, '_', ' '));
    grid on
    print(fig, file, '-dpng', '-r150');
    close(fig);
catch err
    warning('plot_forecasts: %s', err.message);
end
end

function md_table(fid, T)
if isempty(T), fprintf(fid, '_no rows_\n\n'); return; end
v = T.Properties.VariableNames;
fprintf(fid, '| %s |\n', strjoin(v, ' | '));
fprintf(fid, '|%s\n', repmat('---|', 1, numel(v)));
for i = 1:height(T)
    cells = cell(1, numel(v));
    for j = 1:numel(v)
        x = T{i, j};
        if iscell(x), x = x{1}; end
        if isstring(x) || ischar(x), cells{j} = char(x);
        elseif islogical(x),         cells{j} = ternary(x, 'yes', 'no');
        elseif isnumeric(x) && x == round(x) && abs(x) >= 1, cells{j} = sprintf('%d', x);
        else,                        cells{j} = sprintf('%.4g', x);
        end
    end
    fprintf(fid, '| %s |\n', strjoin(cells, ' | '));
end
fprintf(fid, '\n');
end

function s = dstr(d)
s = char(string(d, 'yyyy-MM-dd'));
end

function out = ternary(c, a, b)
if c, out = a; else, out = b; end
end
