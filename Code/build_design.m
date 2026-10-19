function Dz = build_design(P, spec, cfg)
%BUILD_DESIGN Targets and nested feature groups for one target series.
%   Row t is a forecast origin at the end of NYSE day t. Every feature in row t
%   uses only information public by then (ES day t ends 17:00 ET). The target
%   for horizon h is the average RV over sessions t+1..t+h (eq. 2).
%
%   Feature groups (a set is a union of groups, see set_columns):
%     A  HAR lags of the target series (daily, weekly, monthly)
%     B  market: negative-return averages, Parkinson range, log VIX, IV surface,
%        VRP, rates, VVIX / SKEW / VIX9D / cross-market IV
%     C  macro / stress: ADS, EPU, news sentiment, GPR, CISS, NFCI, STLFSI4,
%        Hang Seng, calendar flags
%     D  ES measures: continuous / jump averages, +/- semivariances,
%        sqrt(quarticity) x RV, realized kernel, overnight variance
%     O  Oxford-Man jump / semivariance features (robustness)
%     V  log VIX only (1996 VIX-only robustness)
%     L  log RV of the target, used FFD-transformed in place of the HAR lags
%        (FFD-lags robustness variant)

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

names = {};  group = {};  X = zeros(N, 0);
    function add(name, x, g)
        names{end+1} = name;  group{end+1} = g;  X(:, end+1) = x;
    end

mf = cfg.lagMinFrac;

% ---- A: HAR lags (eq. 4) -------------------------------------------------------
rvM = rollmean(rv, 22, mf);
add('rv_d', rv,                 'A');
add('rv_w', rollmean(rv, 5, mf),'A');
add('rv_m', rvM,                'A');

% ---- L: log RV of the target (FFD-lags robustness variant, proposal v5.4 4.3) --------
add('log_rv', log(rv), 'L');

% ---- B: market (as of the close of day t) ---------------------------------------
rneg = min(P.spx_ret, 0);
vix  = ffill_limit(P.vix, 5);
add('negret_d',  rneg,                       'B');
add('negret_w',  rollmean(rneg, 5, mf),      'B');
add('negret_m',  rollmean(rneg, 22, mf),     'B');
add('parkinson_d', P.spx_pk,                 'B');
add('parkinson_w', rollmean(P.spx_pk, 5, mf),'B');
add('log_vix',   log(vix),                   'B');
add('vrp',       vix.^2 / 252 - rvM,         'B');   % VIX^2/252 minus monthly RV, daily %^2
add('iv_atm_1m', ffill_limit(P.iv_atm_1m, 5),  'B');
add('iv_atm_3m', ffill_limit(P.iv_atm_3m, 5),  'B');
add('iv_atm_1y', ffill_limit(P.iv_atm_1y, 5),  'B');
add('iv_skew_1m',ffill_limit(P.iv_skew_1m, 5), 'B');
add('iv_term',   ffill_limit(P.iv_term, 5),    'B');
add('t10y3m',    ffill_limit(P.t10y3m, 5),     'B');
add('dgs10',     ffill_limit(P.dgs10, 5),      'B');
add('vvix',      ffill_limit(P.vvix, 5),       'B');   % from 2007 (enters via coverage rule)
add('skew',      ffill_limit(P.skew, 5),       'B');
add('vix9d_spread', ffill_limit(P.vix9d, 5) - vix, 'B');   % from Jan 2011
add('log_vxn',   log(ffill_limit(P.vxn, 5)),   'B');
add('log_rvx',   log(ffill_limit(P.rvx, 5)),   'B');

% ---- C: macro / stress, shifted by publication lag (trading days) ------------------
% ADS: real-time vintage from 8 Dec 2008; before that the current vintage, lagged.
ads = ffill_limit(P.ads_rt, 10);
pre = isnan(ads) & dates < datetime(2008,12,8);
adsCV = lagk(ffill_limit(P.ads_cv, 5), 5);
ads(pre) = adsCV(pre);
add('ads',        ads,                                     'C');
add('log_epu',    ffill_limit(lagk(log(P.epu), 1), 5),     'C');   % +1 day
add('ciss',       ffill_limit(lagk(P.ciss, 2), 5),         'C');   % +2
add('news_sent',  ffill_limit(lagk(P.news, 5), 10),        'C');   % +5 (weekly)
add('log_gpr',    ffill_limit(lagk(log(P.gprd), 5), 10),   'C');   % +5 (weekly)
add('nfci',       ffill_limit(P.nfci, 10),                 'C');   % already on release date
add('stlfsi4',    ffill_limit(P.stlfsi4, 10),              'C');   % already on release date
hsi = P.hsi_sq;  hsi(isnan(hsi)) = 0;                              % HKEX closed: no shock
add('hsi_sq',     hsi,                                     'C');
add('early_close_next', [P.early_close(2:end); 0],         'C');   % NYSE schedule is public
gap = [days(diff(dates)); 1];
add('gap_days_next', gap,                                  'C');   % weekend / holiday ahead

% ---- D: ES measures (holiday rows merged, or dropped for robustness) ----------------
sfx = '';
if strcmp(spec.esHoliday, 'drop'), sfx = '_nohol'; end
es  = @(v) P.(['es_' v sfx]);
rv5 = es('rv5');  bv5 = es('bv5');
J   = posPart(rv5 - bv5);        % eq. 3 (NaN stays NaN)
Cc  = rv5 - J;
add('es_C_d', Cc,                    'D');
add('es_C_w', rollmean(Cc, 5, mf),   'D');
add('es_C_m', rollmean(Cc, 22, mf),  'D');
add('es_J_d', J,                     'D');
add('es_J_w', rollmean(J, 5, mf),    'D');
add('es_J_m', rollmean(J, 22, mf),   'D');
add('es_rsp_d', es('rsp5'),                  'D');
add('es_rsn_d', es('rsn5'),                  'D');
add('es_rsp_w', rollmean(es('rsp5'), 5, mf), 'D');
add('es_rsn_w', rollmean(es('rsn5'), 5, mf), 'D');
add('es_sqrtrq_rv', sqrt(es('rq5')) .* rv5,  'D');
add('es_rk_d',  es('rk'),                    'D');
on = posPart(rv5 - P.rv_spy);                % overnight variance max(ES - SPY, 0)
add('overnight_d', on,                       'D');
add('overnight_w', rollmean(on, 5, 0.6),     'D');

% ---- O: Oxford-Man SPX jump / semivariance features (robustness, to Feb 2022) -------
Jo = posPart(P.om_rv5 - P.om_bv);  Co = P.om_rv5 - Jo;
add('om_C_d', Co,                     'O');
add('om_C_w', rollmean(Co, 5, mf),    'O');
add('om_C_m', rollmean(Co, 22, mf),   'O');
add('om_J_d', Jo,                     'O');
add('om_J_w', rollmean(Jo, 5, mf),    'O');
add('om_rsn_d', P.om_rsv,             'O');
add('om_rsn_w', rollmean(P.om_rsv, 5, mf), 'O');

% ---- V: VIX only (1996-start robustness) -------------------------------------------
add('log_vix_only', log(vix), 'V');

X(isinf(X)) = NaN;

Dz.dates = dates;   Dz.rv = rv;   Dz.lastValid = lastValid;
Dz.Y = Y;           Dz.tEnd = tEnd;
Dz.X = X;           Dz.names = names;   Dz.group = group;
Dz.spec = spec;
end

function z = posPart(x)
% max(x, 0) that keeps NaN (MATLAB's max would turn NaN into 0)
z = x;
z(x < 0) = 0;
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
