function data_audit()
%DATA_AUDIT Reproduce the missing-data counts of proposal v5.4, Section 3.2.
%   1. Risk Lab SPY sessions missing from the NYSE calendar, 3 Jan 2005 - 5 Oct
%      2026, split into development and test.
%   2. NYSE days without a value, within each input's coverage (2005 - Oct 2026).
%   3. Affected SPY test forecast origins by horizon: origins are NYSE sessions
%      from 2 Jan 2018 whose h-day target ends by 5 Oct 2026; for each origin t
%      count missing sessions in t+1..t+h (target) and t-21..t (HAR lags).
%   Only data availability is inspected (no model is run), so the test lock is
%   not affected. Output: Output/tables/data_audit.md and .csv files.

cfg = rv_config();
P   = load_panel(cfg);
outDir = fullfile(cfg.outDir, 'tables');
if ~isfolder(outDir), mkdir(outDir); end
d = P.date;
lastRL = datetime(2026,10,5);
inMain = d >= datetime(2005,1,3) & d <= lastRL;
miss = isnan(P.rv_spy);

% ---- 1. missing Risk Lab sessions ----------------------------------------------
nMain = sum(inMain);  nMiss = sum(miss & inMain);
nDev  = sum(miss & inMain & d < datetime(2018,1,1));
T1 = table(nMain, nMiss, nDev, nMiss - nDev, ...
    'VariableNames', {'NYSE_sessions_2005_to_5Oct2026','RiskLab_missing','missing_in_development','missing_in_test'});
writetable(T1, fullfile(outDir, 'audit_risklab_missing.csv'));

% ---- 2. missing input values within coverage ------------------------------------
opts = detectImportOptions(fullfile(cfg.dataDir, 'features_daily.csv'));
F = readtable(fullfile(cfg.dataDir, 'features_daily.csv'), opts);
F = F(F.date >= datetime(2005,1,1) & F.date <= datetime(2026,10,6), :);
vars = {'hsi_close_pts','t10y3m_spread_pctpts','dgs10_yield_pct','vvix_close','rvx_close','vxd_close'};
T2 = table();
for v = vars
    x = F.(v{1});
    if ~isnumeric(x), x = str2double(string(x)); end
    first = find(~isnan(x), 1);  last = find(~isnan(x), 1, 'last');
    cov = false(size(x));  cov(first:last) = true;
    m = isnan(x) & cov;
    T2 = [T2; table(string(v{1}), sum(m), sum(m & year(F.date) == 2006), ...
        'VariableNames', {'input','missing_NYSE_days_within_coverage','of_which_2006'})]; %#ok<AGROW>
end
writetable(T2, fullfile(outDir, 'audit_input_missing.csv'));

% ---- 3. affected test origins by horizon ----------------------------------------
lastIdx = find(d <= lastRL, 1, 'last');
T3 = table();
for h = cfg.horizons
    org = find(d >= datetime(2018,1,2) & (1:numel(d))' + h <= lastIdx);
    tgtMiss = arrayfun(@(t) sum(miss(t+1:t+h)), org);
    lagMiss = arrayfun(@(t) sum(miss(t-21:t)), org);
    T3 = [T3; table(h, numel(org), sum(tgtMiss > 0), sum(tgtMiss > cfg.maxMissFrac * h), sum(lagMiss > 0), ...
        'VariableNames', {'h','test_origins','target_window_has_missing_day', ...
        'more_than_20pct_missing','lag_window_22d_has_missing_day'})]; %#ok<AGROW>
end
writetable(T3, fullfile(outDir, 'audit_test_origins.csv'));

disp(T1); disp(T2); disp(T3);
fprintf('data_audit: wrote audit_*.csv to %s\n', outDir);
end
