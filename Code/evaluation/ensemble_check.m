function ensemble_check()
%ENSEMBLE_CHECK HAR + random forest combinations from the saved forecasts (exploratory).
%   ensemble_check()
%
%   For every target, horizon and forest set s, the combined forecast is
%       ENS_s = w * RF_s + (1 - w) * HAR_A
%   built from the saved walk-forward forecasts (Output/forecasts/<phase>/main).
%   Nothing is re-estimated. Two weight rules:
%     equal  w = 0.5 everywhere
%     dev    w from {0.25, 0.5, 0.75}, chosen per target, horizon and set as the
%            lowest QLIKE on the development common days (2015-2017), then
%            applied unchanged to the test
%   The idea came after the locked test had been seen, so every test result is
%   exploratory.
%
%   Each combination is scored as in the main loss tables, on the same
%   all-model common days: QLIKE and MSE ratios; one-sided DM tests (Newey-West
%   + HLN) against HAR and against the forest alone; the 10% QLIKE MCS over the
%   ten main forecasts plus the four combinations of that rule; QLIKE ratios on
%   extreme days and in the COVID 2020 episode (definitions of evaluate_phase).
%   Holm adjustments are taken over the 24 combinations of one phase and rule,
%   separately for "beats HAR" (QLIKE and MSE) and "beats the forest" (QLIKE).
%
%   Writes Output/tables/test/main/ensemble.csv (both phases) and
%   ensemble_weights.csv (development QLIKE for every weight).

cfg  = rv_config();
P    = load_panel(cfg);
grid = [0.25 0.5 0.75];
sets = {'A','B','C','D'};
outDir = fullfile(cfg.outDir, 'tables', 'test', 'main');

T = table();  W = table();
for phase = {'dev', 'test'}
    rules = {'equal'};
    if strcmp(phase{1}, 'test'), rules = {'equal', 'dev'}; end
    for target = {'SPY', 'ES'}
        for h = cfg.horizons
            A = load_forecasts(target{1}, h, phase{1}, 'main', P, cfg);
            rows = all(~isnan(A.F), 2) & ~isnan(A.y);
            check_main(A, rows, fullfile(cfg.outDir, 'tables', phase{1}, 'main'), target{1}, h);
            y = A.y(rows);  F = A.F(rows, :);  d = A.dates(rows);
            iH = find(strcmp(A.keys, 'HAR_A'));
            iR = cellfun(@(s) find(strcmp(A.keys, ['RF_' s])), sets);

            % development: QLIKE of every weight, and the chosen one
            if strcmp(phase{1}, 'dev')
                for j = 1:numel(sets)
                    q = arrayfun(@(w) mean(qlike(y, w * F(:, iR(j)) + (1 - w) * F(:, iH))), grid);
                    [~, b] = min(q);
                    g = numel(grid);
                    W = [W; table(repmat(string(target{1}), g, 1), repmat(h, g, 1), repmat(string(sets{j}), g, 1), ...
                        grid', q', grid' == grid(b), ...
                        'VariableNames', {'target','h','set','w_RF','dev_QLIKE','chosen'})]; %#ok<AGROW>
                end
            end

            % extreme days and COVID 2020, as in evaluate_phase's regime_table
            yq  = prctile(y, [25 75]);
            ext = y > yq(2) + 1.5 * diff(yq);
            cov = d >= datetime(2020,2,20) & d <= datetime(2020,5,29);

            for rule = rules
                if strcmp(rule{1}, 'equal')
                    w = 0.5 * ones(1, numel(sets));
                else
                    w = arrayfun(@(j) W.w_RF(W.target == target{1} & W.h == h & W.set == sets{j} & W.chosen), ...
                        1:numel(sets));
                end
                E  = F(:, iR) .* w + F(:, iH) .* (1 - w);
                LQ = qlike(y, [F E]);  LM = (y - [F E]).^2;
                m  = size(F, 2);
                bl = max(h, floor(sqrt(sum(rows))));
                inQ = mcs(LQ, cfg.mcs.alpha, cfg.mcs.B, bl, cfg.seed + h);
                q  = mean(LQ);  s2 = mean(LM);
                for j = 1:numel(sets)
                    e = m + j;  r = iR(j);
                    [~, ~, pH]  = dm_test(LQ(:, iH) - LQ(:, e), h);
                    [~, ~, pR]  = dm_test(LQ(:, r)  - LQ(:, e), h);
                    [~, ~, pHm] = dm_test(LM(:, iH) - LM(:, e), h);
                    [~, ~, pRm] = dm_test(LM(:, r)  - LM(:, e), h);
                    T = [T; table(string(phase{1}), string(target{1}), h, string(sets{j}), string(rule{1}), w(j), ...
                        sum(rows), q(e), q(e) / q(iH), s2(e) / s2(iH), q(e) / q(r), q(r) / q(iH), ...
                        pH, pR, pHm, pRm, inQ(e), inQ(iH), inQ(r), ...
                        sub_ratio(LQ, ext, e, iH), sub_ratio(LQ, ext, r, iH), ...
                        sub_ratio(LQ, cov, e, iH), sub_ratio(LQ, cov, r, iH), ...
                        'VariableNames', {'phase','target','h','set','rule','w_RF','n','QLIKE', ...
                        'QLIKE_ratio','MSE_ratio','ratio_vs_RF','RF_QLIKE_ratio', ...
                        'p1_vs_HAR','p1_vs_RF','p1_MSE_vs_HAR','p1_MSE_vs_RF', ...
                        'inMCS_QLIKE','HAR_inMCS','RF_inMCS', ...
                        'extreme_ratio','RF_extreme_ratio','covid_ratio','RF_covid_ratio'})]; %#ok<AGROW>
                end
            end
        end
    end
end

% Holm over the 24 combinations of each phase and rule
T.holm_vs_HAR = NaN(height(T), 1);  T.holm_vs_RF = NaN(height(T), 1);  T.holm_MSE_vs_HAR = NaN(height(T), 1);
for g = unique(T.phase + "/" + T.rule)'
    k = T.phase + "/" + T.rule == g;
    T.holm_vs_HAR(k)     = holm_adjust(T.p1_vs_HAR(k));
    T.holm_vs_RF(k)      = holm_adjust(T.p1_vs_RF(k));
    T.holm_MSE_vs_HAR(k) = holm_adjust(T.p1_MSE_vs_HAR(k));
end
writetable(T, fullfile(outDir, 'ensemble.csv'));
writetable(W, fullfile(outDir, 'ensemble_weights.csv'));
fprintf('ensemble_check: %d rows -> %s\n', height(T), outDir);
end

function r = sub_ratio(LQ, sel, i, iH)
% QLIKE ratio of column i to HAR on the selected days (NaN if fewer than 10)
r = NaN;
if sum(sel) >= 10, r = mean(LQ(sel, i)) / mean(LQ(sel, iH)); end
end

function check_main(A, rows, outDir, target, h)
% the ten main forecasts must reproduce loss_*.csv on the same rows
f = fullfile(outDir, sprintf('loss_%s_h%d.csv', target, h));
if ~isfile(f), return; end
L = readtable(f, 'TextType', 'string');
q = mean(qlike(A.y(rows), A.F(rows, :)));
[ok, k] = ismember(L.model + "_" + L.set, string(A.keys));
if ~all(ok) || any(abs(L.QLIKE - q(k)') > 1e-10) || any(L.n ~= sum(rows))
    error('ensemble_check: %s h=%d saved forecasts do not reproduce %s', target, h, f);
end
end
