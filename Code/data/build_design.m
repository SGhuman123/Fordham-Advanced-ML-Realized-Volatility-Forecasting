function Dz = build_design(P, spec, cfg)
%BUILD_DESIGN Targets and nested feature groups for one target series.
%   Row t is a forecast origin at the end of NYSE day t. Every feature in row t
%   uses only information public by then (ES day t ends 17:00 ET). The target
%   for horizon h is the average RV over sessions t+1..t+h (eq. 2).
%
%   Feature groups (a set is a union of groups, see set_columns):
%     A  HAR lags of the target series (daily, weekly, monthly)
%     B  market: negative-return averages, Parkinson range, log VIX, IV surface,
%        VRP, rates, VVIX / SKEW / VIX9D and VIX3M spreads / cross-market IV
%     C  macro / stress: ADS, EPU, news sentiment, GPR, CISS, NFCI, STLFSI4,
%        Hang Seng, calendar flags
%     D  ES measures: continuous / jump averages, +/- semivariances,
%        sqrt(quarticity) x RV, realized kernel, overnight variance
%     O  Oxford-Man jump / semivariance features (robustness)
%     V  log VIX only (1996 VIX-only robustness)
%     L  log RV of the target, used FFD-transformed in place of the HAR lags
%        (FFD-lags robustness variant)
%
%   Missing days (proposal 3.2): a multi-day target is dropped if more than
%   cfg.maxMissFrac of its window is missing, and weekly / monthly lags need
%   cfg.lagMinFrac of their window. spec.strict (robustness scenario 'strict')
%   tightens both to "no missing day at all" for the target series.
%   Dz.source / Dz.shift record each feature's source file and publication
%   shift in sessions (written out by export_design).

if spec.strict
    cfg.maxMissFrac = 0;   % drop any target window that touches a missing day
    mfA = 1;               % and any origin whose lag window does
else
    mfA = cfg.lagMinFrac;
end
N     = height(P);
dates = P.date;
H     = cfg.horizons;
rv    = target_series(P, spec);
lastValid = find(~isnan(rv), 1, 'last');

% ---- targets: RV_{t+1:t+h}; never filled, dropped if >20% of the window is missing
Y = NaN(N, numel(H));  tEnd = NaN(N, numel(H));
idx = (1:N)';
obs = ~isnan(rv);  x0 = rv;  x0(~obs) = 0;
for k = 1:numel(H)
    h = H(k);
    s = movsum(x0,  [0 h-1]);  c = movsum(double(obs), [0 h-1]);
    s = [s(2:end); NaN];       c = [c(2:end); NaN];        % window t+1..t+h
    y = s ./ c;
    bad = c == 0 | (h - c) > cfg.maxMissFrac * h | idx + h > lastValid;
    y(bad) = NaN;
    Y(:, k)    = y;
    tEnd(:, k) = idx + h;          % last session of the target window (label gap)
end

names = {};  group = {};  source = {};  shift = [];  X = zeros(N, 0);
    function add(name, x, g, src, lag)
        names{end+1} = name;  group{end+1} = g;  X(:, end+1) = x;
        source{end+1} = src;  shift(end+1) = lag;
    end
tsrc = target_source(spec);

mf = cfg.lagMinFrac;

% ---- A: HAR lags (eq. 4) -------------------------------------------------------
rvM = rollmean(rv, 22, mfA);
add('rv_d', rv,                  'A', tsrc, 0);
add('rv_w', rollmean(rv, 5, mfA),'A', tsrc, 0);
add('rv_m', rvM,                 'A', tsrc, 0);

% ---- L: log RV of the target (FFD-lags robustness variant, proposal v5.4 4.3) --------
add('log_rv', log(rv), 'L', tsrc, 0);

% ---- B: market (as of the close of day t) ---------------------------------------
rneg = min(P.spx_ret, 0);
vix  = ffill_limit(P.vix, 5);
add('negret_d',  rneg,                       'B', 'features_daily spx_logret_cc_pct', 0);
add('negret_w',  rollmean(rneg, 5, mf),      'B', 'features_daily spx_logret_cc_pct', 0);
add('negret_m',  rollmean(rneg, 22, mf),     'B', 'features_daily spx_logret_cc_pct', 0);
add('parkinson_d', P.spx_pk,                 'B', 'features_daily spx_parkinson_var_daily', 0);
add('parkinson_w', rollmean(P.spx_pk, 5, mf),'B', 'features_daily spx_parkinson_var_daily', 0);
add('log_vix',   log(vix),                   'B', 'Cboe VIX', 0);
add('vrp',       vix.^2 / 252 - rvM,         'B', 'Cboe VIX; target RV', 0);   % VIX^2/252 minus monthly RV, daily %^2
add('iv_atm_1m', ffill_limit(P.iv_atm_1m, 5),  'B', 'Bloomberg iv_surface', 0);
add('iv_atm_3m', ffill_limit(P.iv_atm_3m, 5),  'B', 'Bloomberg iv_surface', 0);
add('iv_atm_1y', ffill_limit(P.iv_atm_1y, 5),  'B', 'Bloomberg iv_surface', 0);
add('iv_skew_1m',ffill_limit(P.iv_skew_1m, 5), 'B', 'Bloomberg iv_surface', 0);
add('iv_term',   ffill_limit(P.iv_term, 5),    'B', 'Bloomberg iv_surface', 0);
add('t10y3m',    ffill_limit(P.t10y3m, 5),     'B', 'FRED T10Y3M', 0);
add('dgs10',     ffill_limit(P.dgs10, 5),      'B', 'FRED DGS10', 0);
add('vvix',      ffill_limit(P.vvix, 5),       'B', 'Cboe VVIX', 0);   % from 2007 (enters via coverage rule)
add('skew',      ffill_limit(P.skew, 5),       'B', 'Cboe SKEW', 0);
add('vix9d_spread', ffill_limit(P.vix9d, 5) - vix, 'B', 'Cboe VIX9D, VIX', 0);   % from Jan 2011
add('vix3m_spread', ffill_limit(P.vix3m, 5) - vix, 'B', 'Cboe VIX3M, VIX', 0);   % term structure, from Sep 2009
add('log_vxn',   log(ffill_limit(P.vxn, 5)),   'B', 'Cboe/FRED VXN', 0);
add('log_rvx',   log(ffill_limit(P.rvx, 5)),   'B', 'Cboe RVX', 0);

% ---- C: macro / stress, shifted by publication lag (trading days) ------------------
% ADS: real-time vintage from 8 Dec 2008; before that the current vintage, lagged.
ads = ffill_limit(P.ads_rt, 10);
pre = isnan(ads) & dates < datetime(2008,12,8);
adsCV = lagk(ffill_limit(P.ads_cv, 5), 5);
ads(pre) = adsCV(pre);
add('ads',        ads,                                     'C', 'Philadelphia Fed ADS (real-time vintage)', 0);
add('log_epu',    ffill_limit(lagk(log(P.epu), 1), 5),     'C', 'Baker-Bloom-Davis EPU', 1);   % +1 day
add('ciss',       ffill_limit(lagk(P.ciss, 2), 5),         'C', 'ECB CISS (US)', 2);   % +2
add('news_sent',  ffill_limit(lagk(P.news, 5), 10),        'C', 'SF Fed news sentiment', 5);   % +5 (weekly)
add('log_gpr',    ffill_limit(lagk(log(P.gprd), 5), 10),   'C', 'Caldara-Iacoviello classic GPR', 5);   % +5 (weekly)
add('nfci',       ffill_limit(P.nfci, 10),                 'C', 'Chicago Fed NFCI (release date)', 0);   % already on release date
add('stlfsi4',    ffill_limit(P.stlfsi4, 10),              'C', 'St. Louis Fed STLFSI4 (release date)', 0);   % already on release date
hsi = P.hsi_sq;  hsi(isnan(hsi)) = 0;                              % HKEX closed: no shock
add('hsi_sq',     hsi,                                     'C', 'Yahoo Hang Seng', 0);
add('early_close_next', [P.early_close(2:end); 0],         'C', 'NYSE calendar', 0);   % NYSE schedule is public
gap = [days(diff(dates)); 1];
add('gap_days_next', gap,                                  'C', 'NYSE calendar', 0);   % weekend / holiday ahead

% ---- D: ES measures (holiday rows merged, or dropped for robustness) ----------------
sfx = '';
if strcmp(spec.esHoliday, 'drop'), sfx = '_nohol'; end
es  = @(v) P.(['es_' v sfx]);
rv5 = es('rv5');  bv5 = es('bv5');
J   = posPart(rv5 - bv5);        % eq. 3 (NaN stays NaN)
Cc  = rv5 - J;
add('es_C_d', Cc,                    'D', 'VOLARE ES', 0);
add('es_C_w', rollmean(Cc, 5, mf),   'D', 'VOLARE ES', 0);
add('es_C_m', rollmean(Cc, 22, mf),  'D', 'VOLARE ES', 0);
add('es_J_d', J,                     'D', 'VOLARE ES', 0);
add('es_J_w', rollmean(J, 5, mf),    'D', 'VOLARE ES', 0);
add('es_J_m', rollmean(J, 22, mf),   'D', 'VOLARE ES', 0);
add('es_rsp_d', es('rsp5'),                  'D', 'VOLARE ES', 0);
add('es_rsn_d', es('rsn5'),                  'D', 'VOLARE ES', 0);
add('es_rsp_w', rollmean(es('rsp5'), 5, mf), 'D', 'VOLARE ES', 0);
add('es_rsn_w', rollmean(es('rsn5'), 5, mf), 'D', 'VOLARE ES', 0);
add('es_sqrtrq_rv', sqrt(es('rq5')) .* rv5,  'D', 'VOLARE ES', 0);
add('es_rk_d',  es('rk'),                    'D', 'VOLARE ES', 0);
on = posPart(rv5 - P.rv_spy);                % overnight variance max(ES - SPY, 0)
add('overnight_d', on,                       'D', 'VOLARE ES rv5; Risk Lab SPY rv5', 0);
add('overnight_w', rollmean(on, 5, 0.6),     'D', 'VOLARE ES rv5; Risk Lab SPY rv5', 0);

% ---- O: Oxford-Man SPX jump / semivariance features (robustness, to Feb 2022) -------
Jo = posPart(P.om_rv5 - P.om_bv);  Co = P.om_rv5 - Jo;
add('om_C_d', Co,                     'O', 'Oxford-Man SPX', 0);
add('om_C_w', rollmean(Co, 5, mf),    'O', 'Oxford-Man SPX', 0);
add('om_C_m', rollmean(Co, 22, mf),   'O', 'Oxford-Man SPX', 0);
add('om_J_d', Jo,                     'O', 'Oxford-Man SPX', 0);
add('om_J_w', rollmean(Jo, 5, mf),    'O', 'Oxford-Man SPX', 0);
add('om_rsn_d', P.om_rsv,             'O', 'Oxford-Man SPX', 0);
add('om_rsn_w', rollmean(P.om_rsv, 5, mf), 'O', 'Oxford-Man SPX', 0);

% ---- V: VIX only (1996-start robustness) -------------------------------------------
add('log_vix_only', log(vix), 'V', 'Cboe VIX', 0);

X(isinf(X)) = NaN;

Dz.dates = dates;   Dz.rv = rv;   Dz.lastValid = lastValid;
Dz.Y = Y;           Dz.tEnd = tEnd;
Dz.X = X;           Dz.names = names;   Dz.group = group;
Dz.source = source;  Dz.shift = shift;
Dz.lagMinFrac = mfA;
Dz.spec = spec;
end

function z = posPart(x)
% max(x, 0) that keeps NaN (MATLAB's max would turn NaN into 0)
z = x;
z(x < 0) = 0;
end

function s = target_source(spec)
if strcmp(spec.target, 'SPY'), s = ['Risk Lab SPY ' spec.variant];
else, s = ['VOLARE ES ' spec.variant];
end
end

function rv = target_series(P, spec)
switch spec.target
    case 'SPY'
        switch spec.variant
            case 'rv5',  rv = P.rv_spy;
            case 'rv15', rv = P.rv15_spy;
            case 'qmle', rv = P.qmle_spy;
        end
    case 'ES'
        sfx = '';
        if strcmp(spec.esHoliday, 'drop'), sfx = '_nohol'; end
        switch spec.variant
            case 'rv5', rv = P.(['es_rv5' sfx]);
            case 'rv1', rv = P.(['es_rv1' sfx]);
            case 'rk',  rv = P.(['es_rk'  sfx]);
        end
end
end
