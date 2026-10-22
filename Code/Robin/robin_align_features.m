function [A, info] = robin_align_features()
%ROBIN_ALIGN_FEATURES Task 2 (Robin, data): align every input on the NYSE
%   calendar and apply publication lags (proposal v5.4, Sections 3.2 and 5).
%
%   Row t holds the value of each input that is public at the close of NYSE
%   day t, the forecast origin:
%     - a series published after day t is shifted down by its lag in sessions
%       (EPU +1, CISS +2, SF Fed news sentiment and classic GPR +5);
%     - ADS uses the real-time vintage released before t; before 8 Dec 2008,
%       when no real-time vintage exists, the current vintage lagged 5 sessions;
%     - NFCI and STLFSI4 already sit on their release date in features_daily.csv;
%     - ES measures are known at the Globex close (17:00 ET on t), lag 0;
%       Globex holiday rows are added to the next NYSE session.
%   Agreed missing-value rule (proposal 3.2): when a daily input has no value on
%   an NYSE day (e.g. a bond-market holiday), its last published value is used
%   for at most ffill_max sessions, which uses no future information. Hang Seng
%   is set to 0 on Hong Kong holidays (no shock). Late-starting series stay NaN
%   before their first observation.
%
%   Levels only: logs, rolling means and spreads are built in
%   robin_feature_sets. Variances are daily %^2 (decimal x cfg.scale).
%
%   Outputs: Output/Robin/features_aligned.csv (one row per NYSE session) and
%   Output/Robin/features_aligned_info.csv (source, lag, fill limit and coverage
%   of every column).

here = fileparts(mfilename('fullpath'));
addpath(fileparts(here));                      % Code/: rv_config, lagk, ffill_limit
cfg = rv_config();
D   = cfg.dataDir;
sc  = cfg.scale;

% ---- features_daily.csv defines the calendar -------------------------------------
opts = detectImportOptions(fullfile(D, 'features_daily.csv'));
txt  = {'date','nyse_close_time_et','nfci_obs_week_ending','stlfsi4_obs_week_ending', ...
        'ads_index_realtime_obs_date','vxn_source','vxd_source','rvx_source'};
opts = setvartype(opts, setdiff(opts.VariableNames, txt), 'double');
opts = setvartype(opts, 'date', 'datetime');
F = readtable(fullfile(D, 'features_daily.csv'), opts);
dates = dateshift(F.date, 'start', 'day');
N = numel(dates);

A = table(dates, 'VariableNames', {'date'});
info = table();
    function add(name, x, source, shift, ffillMax)
        A.(name) = x;
        info = [info; table(string(name), string(source), shift, ffillMax, ...
            'VariableNames', {'column','source','shift_sessions','ffill_max'})];
    end

% ---- Cboe indices (vol_indices.mat), known at the close of t ----------------------
S = load(fullfile(D, 'vol_indices.mat'), 'V');
V = S.V;
[ok, loc] = ismember(dates, dateshift(V.d, 'start', 'day'));
cboe = @(v) ffill_limit(fillrows(N, ok, loc, V.(v)), 5);
add('vix',   cboe('VIX'),   'Cboe vol_indices.mat', 0, 5);
add('vix9d', cboe('VIX9D'), 'Cboe vol_indices.mat', 0, 5);
add('skew',  cboe('SKEW'),  'Cboe vol_indices.mat', 0, 5);

% ---- Bloomberg SPX implied-vol surface (iv_surface.mat), vol points ----------------
S = load(fullfile(D, 'iv_surface.mat'));
[ok, loc] = ismember(dates, dateshift(S.ivDates, 'start', 'day'));
m = S.moneyness(:);  t = S.tenorYrs(:);
iATM = find(abs(m - 1.00) < 1e-9);  i90 = find(abs(m - 0.90) < 1e-9);  i110 = find(abs(m - 1.10) < 1e-9);
j1M  = find(abs(t - 1/12) < 1e-6);  j3M = find(abs(t - 3/12) < 1e-6);  j1Y  = find(abs(t - 1) < 1e-6);
iv = @(i, j) fillrows(N, ok, loc, 100 * S.IV(:, i, j));
atm1m = iv(iATM, j1M);  atm1y = iv(iATM, j1Y);
src = 'Bloomberg iv_surface.mat';
add('iv_atm_1m',  ffill_limit(atm1m, 5),                       src, 0, 5);
add('iv_atm_3m',  ffill_limit(iv(iATM, j3M), 5),               src, 0, 5);
add('iv_atm_1y',  ffill_limit(atm1y, 5),                       src, 0, 5);
add('iv_skew_1m', ffill_limit(iv(i90, j1M) - iv(i110, j1M), 5), src, 0, 5);   % IV(90%) - IV(110%), 1M
add('iv_term',    ffill_limit(atm1y - atm1m, 5),               src, 0, 5);   % ATM IV(1Y) - IV(1M)

% ---- market, rates and cross-market IV (features_daily.csv) ------------------------
src = 'features_daily.csv';
add('spx_ret', F.spx_logret_cc_pct,            src, 0, 0);          % percent
add('spx_pk',  F.spx_parkinson_var_daily * sc, src, 0, 0);          % daily %^2
add('t10y3m',  ffill_limit(F.t10y3m_spread_pctpts, 5), src, 0, 5);
add('dgs10',   ffill_limit(F.dgs10_yield_pct, 5),      src, 0, 5);
add('vvix',    ffill_limit(F.vvix_close, 5),           src, 0, 5);
add('vxn',     ffill_limit(F.vxn_close, 5),            src, 0, 5);
add('rvx',     ffill_limit(F.rvx_close, 5),            src, 0, 5);

% ---- macro / stress, shifted by publication lag -----------------------------------
ads   = ffill_limit(F.ads_index_realtime_latest, 10);
pre   = isnan(ads) & dates < datetime(2008,12,8);
adsCV = lagk(ffill_limit(F.ads_index_current_vintage, 5), 5);
ads(pre) = adsCV(pre);
add('ads',     ads,                                         src, 0, 10);   % real-time vintage
add('epu',     ffill_limit(lagk(F.epu_daily_index, 1), 5),  src, 1, 5);
add('ciss',    ffill_limit(lagk(F.ciss_us_new_index, 2), 5), src, 2, 5);
add('news',    ffill_limit(lagk(F.sf_news_sentiment_index, 5), 10), src, 5, 10);
add('gprd',    ffill_limit(lagk(F.gprd_classic_index, 5), 10),      src, 5, 10);
add('nfci',    ffill_limit(F.nfci_index_asof_release, 10),    src, 0, 10);   % on release date
add('stlfsi4', ffill_limit(F.stlfsi4_index_asof_release, 10), src, 0, 10);   % on release date
hsi = F.hsi_sq_logret_pct2;  hsi(isnan(hsi)) = 0;                            % HKEX closed: no shock
add('hsi_sq',  hsi,                        src, 0, 0);
add('early_close', F.nyse_early_close_flag, src, 0, 0);

% ---- VOLARE ES measures: holiday Globex rows added to the next NYSE session --------
E = readtable(fullfile(D, 'VOLARE_ES_realized_measures_2009-2026.csv'));
eDates  = dateshift(E.date, 'start', 'day');
nextIdx = arrayfun(@(d) find(dates >= d, 1, 'first'), eDates);
src = 'VOLARE ES (holidays merged)';
esVars  = {'rv5','bv5','rsp5','rsn5','rk','rq5'};
esScale = [sc sc sc sc sc sc^2];                       % rq5 is a variance^2
for k = 1:numel(esVars)
    add(['es_' esVars{k}], accumarray(nextIdx, E.(esVars{k}) * esScale(k), [N 1], @sum, NaN), src, 0, 0);
end

% ---- coverage of every column ------------------------------------------------------
inMain = dates >= cfg.spyStart;
nc = height(info);
first = NaT(nc, 1);  last = NaT(nc, 1);  nObs = zeros(nc, 1);  nMiss = zeros(nc, 1);
for k = 1:nc
    x = A.(info.column(k));
    i0 = find(~isnan(x), 1);  i1 = find(~isnan(x), 1, 'last');
    first(k) = dates(i0);  last(k) = dates(i1);
    cov = false(N, 1);  cov(i0:i1) = true;
    nObs(k)  = sum(~isnan(x) & inMain);
    nMiss(k) = sum(isnan(x) & cov & inMain);
end
first.Format = 'yyyy-MM-dd';  last.Format = 'yyyy-MM-dd';
info.first_date = first;  info.last_date = last;
info.n_obs_from_2005 = nObs;  info.n_missing_after_fill_from_2005 = nMiss;   % NaN left inside coverage

outDir = fullfile(cfg.outDir, 'Robin');
if ~isfolder(outDir), mkdir(outDir); end
A.date.Format = 'yyyy-MM-dd';
writetable(A,    fullfile(outDir, 'features_aligned.csv'));
writetable(info, fullfile(outDir, 'features_aligned_info.csv'));
disp(info);
fprintf('robin_align_features: %d columns on %d NYSE sessions; wrote %s\n', ...
    nc, N, fullfile(outDir, 'features_aligned.csv'));
end

function x = fillrows(N, ok, loc, v)
x = NaN(N, 1);
x(ok) = v(loc(ok));
end
