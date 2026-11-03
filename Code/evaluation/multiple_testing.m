function multiple_testing(phase, scenario)
%MULTIPLE_TESTING Holm corrections for the DM tests already written by evaluate_phase.
%   multiple_testing('test')            locked test, main design
%   multiple_testing('dev','rolling')   any phase / scenario with saved tables
%
%   Reads loss_*.csv, success_criterion.csv and varswap_*_h22.csv from
%   Output/tables/<phase>/<scenario>/ and writes, next to them:
%     holm_ml_vs_har.csv  every EN / RF forecast vs HAR (target x h x set):
%                         one-sided QLIKE and MSE p-values, Holm-adjusted over
%                         all of them ('all') and over the 8 ML forecasts of
%                         the same target and horizon ('cell')
%     holm_scorecard.csv  the success-criterion rows (best ML per target x h)
%     holm_varswap.csv    every variance-swap timing rule (always-sell excluded)
%   The MSE column of loss_*.csv is two-sided; the one-sided p-value is
%   recovered from DM_MSE with the same Student t (T-1 df) as dm_test.
%   Nothing is re-estimated, so the locked test is not re-run.

if nargin < 2, scenario = 'main'; end
phase = char(phase);  scenario = char(scenario);
cfg = rv_config();
tabDir = fullfile(cfg.outDir, 'tables', phase, scenario);

% ---- 1. every ML forecast against HAR ---------------------------------------------
T = table();
for target = {'SPY','ES'}
    for h = cfg.horizons
        f = fullfile(tabDir, sprintf('loss_%s_h%d.csv', target{1}, h));
        if ~isfile(f), continue; end
        L = readtable(f, 'TextType', 'string');
        L = L(ismember(L.model, ["EN","RF"]), :);
        p1MSE = tcdf(-L.DM_MSE, L.n - 1);
        cellQ = holm(L.p1_QLIKE);
        cellM = holm(p1MSE);
        T = [T; table(repmat(string(target{1}), height(L), 1), repmat(h, height(L), 1), ...
            L.model + "_" + L.set, L.n, L.QLIKE_ratio, L.p1_QLIKE, cellQ, ...
            L.MSE_ratio, L.p_MSE, p1MSE, cellM, L.inMCS_QLIKE, L.inMCS_MSE, ...
            'VariableNames', {'target','h','forecast','n','QLIKE_ratio','p1_QLIKE','holm_cell_QLIKE', ...
            'MSE_ratio','p2_MSE','p1_MSE','holm_cell_MSE','inMCS_QLIKE','inMCS_MSE'})]; %#ok<AGROW>
    end
end
if isempty(T)
    error('multiple_testing: no loss_*.csv in %s; run evaluate_phase first.', tabDir);
end
T.holm_all_QLIKE = holm(T.p1_QLIKE);
T.holm_all_MSE   = holm(T.p1_MSE);
T = movevars(T, 'holm_all_QLIKE', 'After', 'holm_cell_QLIKE');
T = movevars(T, 'holm_all_MSE', 'After', 'holm_cell_MSE');
writetable(T, fullfile(tabDir, 'holm_ml_vs_har.csv'));

% ---- 2. the success-criterion scorecard ------------------------------------------
S = readtable(fullfile(tabDir, 'success_criterion.csv'), 'TextType', 'string');
S = S(:, {'target','h','best_ML','QLIKE_ratio','p1_vs_HAR'});
S.holm_scorecard = holm(S.p1_vs_HAR);
[~, k] = ismember(S.target + "|" + S.h + "|" + S.best_ML, T.target + "|" + T.h + "|" + T.forecast);
S.holm_cell = T.holm_cell_QLIKE(k);
S.holm_all  = T.holm_all_QLIKE(k);
writetable(S, fullfile(tabDir, 'holm_scorecard.csv'));

% ---- 3. variance-swap timing rules (h = 22), H1: mean P&L > 0 ------------------------
V = table();
for target = {'SPY','ES'}
    f = fullfile(tabDir, sprintf('varswap_%s_h22.csv', target{1}));
    if ~isfile(f), continue; end
    W = readtable(f, 'TextType', 'string');
    W = W(W.strategy ~= "Always sell variance", :);
    V = [V; table(repmat(string(target{1}), height(W), 1), W.strategy, W.n, W.pnl_cc_leg, W.t_cc_leg, ...
        tcdf(-W.t_cc_leg, W.n - 1), W.corr_signal_payoff, ...
        'VariableNames', {'target','strategy','n','pnl_cc_leg','t_cc_leg','p1_cc_leg','corr_signal_payoff'})]; %#ok<AGROW>
end
if ~isempty(V)
    V.holm_all = holm(V.p1_cc_leg);
    writetable(V, fullfile(tabDir, 'holm_varswap.csv'));
end

fprintf('multiple_testing: %d ML-vs-HAR tests, %d scorecard rows, %d swap rules -> %s\n', ...
    height(T), height(S), height(V), tabDir);
end
