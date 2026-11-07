function utility_test(phase)
%UTILITY_TEST DM tests on daily vol-targeting utility differences against HAR.
%   utility_test('test')   locked test, main design (default)
%   utility_test('dev')    development period
%
%   Daily realized utility U = SR^2/gamma * (sqrt(RV/F) - RV/(2F)) in % per year
%   (eq. 14, Bollerslev et al., 2018), on the all-model common days used by
%   utility_*.csv. For each forecast, d = U_model - U_HAR is tested with dm_test
%   (Newey-West + HLN, bandwidth for horizon h); p1 is one-sided for "the model
%   has higher utility than HAR". Holm-adjusted over every EN / RF forecast.
%   Nothing is re-estimated.
%
%   Writes Output/tables/<phase>/main/utility_tests.csv.

if nargin < 1, phase = 'test'; end
phase = char(phase);
cfg = rv_config();
P   = load_panel(cfg);
outDir = fullfile(cfg.outDir, 'tables', phase, 'main');

T = table();
for target = {'SPY','ES'}
    for h = cfg.horizons
        A = load_forecasts(target{1}, h, phase, 'main', P, cfg);
        rows = all(~isnan(A.F), 2) & ~isnan(A.y);
        y = A.y(rows);  F = A.F(rows, :);
        U = 100 * cfg.econ.SR^2 / cfg.econ.gamma * (sqrt(y ./ F) - y ./ (2 * F));
        iH = find(strcmp(A.keys, 'HAR_A'));
        m = numel(A.keys);
        stat = NaN(m, 1);  p2 = NaN(m, 1);  p1 = NaN(m, 1);
        for i = setdiff(1:m, iH)
            [stat(i), p2(i), p1(i)] = dm_test(U(:,i) - U(:,iH), h);
        end
        Ts = table(repmat(string(target{1}), m, 1), repmat(h, m, 1), string(A.keys'), ...
            repmat(sum(rows), m, 1), mean(U)', 100 * (mean(U) - mean(U(:,iH)))', stat, p1, p2, ...
            'VariableNames', {'target','h','forecast','n','utility_pct','diff_vs_HAR_bp', ...
            'DM','p1','p2'});
        check_main(Ts, outDir, target{1}, h);
        T = [T; Ts]; %#ok<AGROW>
    end
end
k = ismember(extractBefore(T.forecast, "_"), ["EN","RF"]);
T.holm_all = NaN(height(T), 1);
T.holm_all(k) = holm_adjust(T.p1(k));
writetable(T, fullfile(outDir, 'utility_tests.csv'));
fprintf('utility_test: %d rows -> %s\n', height(T), outDir);
end

function check_main(Ts, outDir, target, h)
% mean utility must reproduce utility_*.csv from evaluate_phase
f = fullfile(outDir, sprintf('utility_%s_h%d.csv', target, h));
if ~isfile(f), return; end
L = readtable(f, 'TextType', 'string');
[ok, k] = ismember(L.model + "_" + L.set, Ts.forecast);
if ~all(ok) || any(abs(L.utility_pct - Ts.utility_pct(k)) > 1e-10)
    warning('utility_test: %s h=%d mean utility does not match utility_*.csv', target, h);
end
end
