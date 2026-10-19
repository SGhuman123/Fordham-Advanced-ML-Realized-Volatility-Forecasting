function P = load_panel(cfg, rebuild)
%LOAD_PANEL Align every input file on the NYSE session calendar.
%   P is a table with one row per NYSE session (2 Jan 1990 - 6 Oct 2026).
%   Every variance is a daily variance in %^2 (decimal x cfg.scale). Values sit
%   on their observation date; publication lags are applied in build_design.
%   The result is cached in Output/panel.mat.

if nargin < 2, rebuild = false; end
cacheFile = fullfile(cfg.outDir, 'panel.mat');
if isfile(cacheFile) && ~rebuild
    S = load(cacheFile, 'P'); P = S.P; return
end
D  = cfg.dataDir;
sc = cfg.scale;

% ---- features_daily.csv defines the calendar ---------------------------------
opts = detectImportOptions(fullfile(D, 'features_daily.csv'));
txt  = {'date','nyse_close_time_et','nfci_obs_week_ending','stlfsi4_obs_week_ending', ...
        'ads_index_realtime_obs_date','vxn_source','vxd_source','rvx_source'};
opts = setvartype(opts, setdiff(opts.VariableNames, txt), 'double');
opts = setvartype(opts, 'date', 'datetime');
F = readtable(fullfile(D, 'features_daily.csv'), opts);
dates = dateshift(F.date, 'start', 'day');
N = numel(dates);
P = table(dates, 'VariableNames', {'date'});

% ---- Risk Lab SPY: annualized vol -> daily variance ---------------------------
R = readtable(fullfile(D, 'risklab_SPY_daily_annualized_vol_1996-2026.csv'));
[ok, loc] = ismember(dateshift(R.date,'start','day'), dates);
assert(all(ok), 'load_panel: a Risk Lab date is not an NYSE session');
P.rv_spy   = place(N, loc, R.rv5_trade_vol.^2  / 252 * sc);   % main target
P.rv15_spy = place(N, loc, R.rv15_trade_vol.^2 / 252 * sc);   % robustness target
P.qmle_spy = place(N, loc, R.qmle_trade_vol.^2 / 252 * sc);   % robustness target

% ---- VOLARE ES: holiday Globex rows are added to the next NYSE session ---------
E = readtable(fullfile(D, 'VOLARE_ES_realized_measures_2009-2026.csv'));
eDates = dateshift(E.date, 'start', 'day');
nextIdx = arrayfun(@(d) find(dates >= d, 1, 'first'), eDates);
onCal   = ismember(eDates, dates);
esVars  = {'rv1','rv5','bv5','rsp5','rsn5','rk','rq5'};
esScale = [sc sc sc sc sc sc sc^2];          % rq5 is a variance^2
for k = 1:numel(esVars)
    v = E.(esVars{k}) * esScale(k);
    P.(['es_' esVars{k}])           = accumarray(nextIdx, v, [N 1], @sum, NaN);
    P.(['es_' esVars{k} '_nohol'])  = place(N, nextIdx(onCal), v(onCal));
end
P.es_holiday_merged = accumarray(nextIdx, double(~onCal), [N 1], @sum, 0);

% ---- Cboe indices (vol_indices.mat) --------------------------------------------
S = load(fullfile(D, 'vol_indices.mat'), 'V');
V = S.V;
[ok, loc] = ismember(dates, dateshift(V.d, 'start', 'day'));
for v = {'VIX','VIX9D','VIX3M','VIX6M','VIX1Y','SKEW'}
    x = NaN(N,1); x(ok) = V.(v{1})(loc(ok));
    P.(lower(v{1})) = x;
end

% ---- Bloomberg SPX implied-vol surface (iv_surface.mat), in vol points ----------
S = load(fullfile(D, 'iv_surface.mat'));
[ok, loc] = ismember(dates, dateshift(S.ivDates, 'start', 'day'));
m = S.moneyness(:); t = S.tenorYrs(:);
iATM = find(abs(m - 1.00) < 1e-9); i90 = find(abs(m - 0.90) < 1e-9); i110 = find(abs(m - 1.10) < 1e-9);
j1M = find(abs(t - 1/12) < 1e-6); j3M = find(abs(t - 3/12) < 1e-6); j1Y = find(abs(t - 1) < 1e-6);
iv = @(i,j) fillrows(N, ok, loc, 100 * S.IV(:, i, j));
P.iv_atm_1m  = iv(iATM, j1M);
P.iv_atm_3m  = iv(iATM, j3M);
P.iv_atm_1y  = iv(iATM, j1Y);
P.iv_skew_1m = iv(i90, j1M) - iv(i110, j1M);     % IV(90%) - IV(110%) at 1 month
P.iv_term    = P.iv_atm_1y - P.iv_atm_1m;        % ATM IV(1Y) - IV(1M)

% ---- features_daily.csv columns used in sets B and C ---------------------------
P.spx_ret     = F.spx_logret_cc_pct;                 % percent
P.spx_pk      = F.spx_parkinson_var_daily * sc;      % daily %^2
P.t10y3m      = F.t10y3m_spread_pctpts;
P.dgs10       = F.dgs10_yield_pct;
P.vvix        = F.vvix_close;
P.vxn         = F.vxn_close;
P.rvx         = F.rvx_close;
P.epu         = F.epu_daily_index;
P.nfci        = F.nfci_index_asof_release;
P.stlfsi4     = F.stlfsi4_index_asof_release;
P.ads_rt      = F.ads_index_realtime_latest;
P.ads_cv      = F.ads_index_current_vintage;
P.ciss        = F.ciss_us_new_index;
P.news        = F.sf_news_sentiment_index;
P.gprd        = F.gprd_classic_index;
P.hsi_sq      = F.hsi_sq_logret_pct2;
P.early_close = F.nyse_early_close_flag;

% ---- Oxford-Man SPX (robustness: pre-2010 jump / semivariance features) --------
O = readtable(fullfile(D, 'oxfordman_SPX_2000-01-03_2022-02-25.csv'));
[ok, loc] = ismember(dateshift(O.date,'start','day'), dates);
P.om_rv5 = place(N, loc(ok), O.rv5(ok) * sc);
P.om_bv  = place(N, loc(ok), O.bv(ok)  * sc);
P.om_rsv = place(N, loc(ok), O.rsv(ok) * sc);

if ~isfolder(cfg.outDir), mkdir(cfg.outDir); end
save(cacheFile, 'P');
fprintf('load_panel: %d sessions, %s to %s; %d ES holiday rows merged.\n', N, ...
    string(dates(1)), string(dates(end)), sum(~onCal));
end

function x = place(N, loc, v)
x = NaN(N, 1);
x(loc) = v;
end

function x = fillrows(N, ok, loc, v)
x = NaN(N, 1);
x(ok) = v(loc(ok));
end
