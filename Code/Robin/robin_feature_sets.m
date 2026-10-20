function robin_feature_sets()
%ROBIN_FEATURE_SETS Task 3 (Robin, data): nested feature sets A-D (proposal
%   v5.4, Section 4.2), one file per target. Reads the outputs of
%   robin_targets and robin_align_features, so run those two first.
%
%     A  HAR lags of the target: daily, weekly (5-day), monthly (22-day) RV
%     B  A + negative-return averages, Parkinson range, log VIX, IV surface,
%        VRP, rates, VVIX / SKEW / VIX9D spread / cross-market IV
%     C  B + ADS, EPU, news sentiment, GPR, CISS, NFCI, STLFSI4, Hang Seng,
%        calendar flags
%     D  C + ES continuous / jump averages, +/- semivariances,
%        sqrt(quarticity) x RV, realized kernel, overnight variance
%
%   Row t is a forecast origin at the close of NYSE day t; every feature uses
%   only the values in row t or earlier of features_aligned.csv, which already
%   carry the publication lags. Agreed rules (proposal 3.2): weekly and monthly
%   averages are built from the observed days if at least 80% of the window is
%   present, and an origin whose own RV_t (or a HAR lag) is missing is not used
%   (column origin_ok).
%
%   Outputs (Output/Robin/):
%     feature_sets_SPY.csv, feature_sets_ES.csv  date, origin_ok, the three
%         h-day targets y_h1 / y_h5 / y_h22 and every feature, from the sample
%         start (SPY 2005, ES 2010; set D is used from 2010 for both)
%     feature_set_columns.csv  each feature's group, first date and the sets
%         that contain it

here = fileparts(mfilename('fullpath'));
addpath(fileparts(here));                      % Code/: rv_config, rollmean
cfg    = rv_config();
outDir = fullfile(cfg.outDir, 'Robin');
T = readtable(fullfile(outDir, 'targets.csv'));
A = readtable(fullfile(outDir, 'features_aligned.csv'));
assert(isequal(T.date, A.date), 'robin_feature_sets: targets and features are on different calendars');

targets = struct('name', {'SPY', 'ES'}, 'rv', {'rv_spy', 'rv_es'}, 'start', {cfg.spyStart, cfg.esStart});
cols = table();
for k = 1:numel(targets)
    tg = targets(k);
    [X, names, group] = build_sets(T.(tg.rv), T.rv_spy, A, cfg.lagMinFrac);

    Z = table(T.date, 'VariableNames', {'date'});
    Z.origin_ok = all(~isnan(X(:, strcmp(group, 'A'))), 2);
    for h = cfg.horizons
        Z.(sprintf('y_h%d', h)) = T.(sprintf('y_%s_h%d', tg.rv, h));
    end
    Z = [Z, array2table(X, 'VariableNames', names)]; %#ok<AGROW>
    Z = Z(Z.date >= tg.start, :);
    Z.date.Format = 'yyyy-MM-dd';
    writetable(Z, fullfile(outDir, sprintf('feature_sets_%s.csv', tg.name)));

    for j = 1:numel(names)
        x = Z.(names{j});
        i0 = find(~isnan(x), 1);
        if isempty(i0), d0 = NaT; else, d0 = Z.date(i0); end
        cols = [cols; table(string(tg.name), string(names{j}), string(group{j}), d0, ...
            any(strcmp(group{j}, {'A'})), any(strcmp(group{j}, {'A','B'})), ...
            any(strcmp(group{j}, {'A','B','C'})), true, ...
            'VariableNames', {'target','feature','group','first_date','in_A','in_B','in_C','in_D'})]; %#ok<AGROW>
    end
    fprintf('robin_feature_sets: %s  %d origins from %s (%d with origin_ok), %d features (A %d, B %d, C %d, D %d)\n', ...
        tg.name, height(Z), string(Z.date(1)), sum(Z.origin_ok), numel(names), ...
        sum(strcmp(group, 'A')), sum(ismember(group, {'A','B'})), ...
        sum(ismember(group, {'A','B','C'})), numel(names));
end
cols.first_date.Format = 'yyyy-MM-dd';
writetable(cols, fullfile(outDir, 'feature_set_columns.csv'));
fprintf('robin_feature_sets: wrote feature_sets_SPY.csv, feature_sets_ES.csv and feature_set_columns.csv to %s\n', outDir);
end

function [X, names, group] = build_sets(rv, rvSpy, A, mf)
% rv is the target's daily RV, rvSpy the SPY daily RV (for overnight variance).
N = numel(rv);
names = {};  group = {};  X = zeros(N, 0);
    function add(name, x, g)
        names{end+1} = name;  group{end+1} = g;  X(:, end+1) = x;
    end

% ---- A: HAR lags (proposal eq. 7) ------------------------------------------------
rvM = rollmean(rv, 22, mf);
add('rv_d', rv,                  'A');
add('rv_w', rollmean(rv, 5, mf), 'A');
add('rv_m', rvM,                 'A');

% ---- B: market (as of the close of day t) -----------------------------------------
rneg = min(A.spx_ret, 0);
add('negret_d',     rneg,                          'B');
add('negret_w',     rollmean(rneg, 5, mf),         'B');
add('negret_m',     rollmean(rneg, 22, mf),        'B');
add('parkinson_d',  A.spx_pk,                      'B');
add('parkinson_w',  rollmean(A.spx_pk, 5, mf),     'B');
add('log_vix',      log(A.vix),                    'B');
add('vrp',          A.vix.^2 / 252 - rvM,          'B');   % VIX^2/252 minus monthly RV, daily %^2
add('iv_atm_1m',    A.iv_atm_1m,                   'B');
add('iv_atm_3m',    A.iv_atm_3m,                   'B');
add('iv_atm_1y',    A.iv_atm_1y,                   'B');
add('iv_skew_1m',   A.iv_skew_1m,                  'B');
add('iv_term',      A.iv_term,                     'B');
add('t10y3m',       A.t10y3m,                      'B');
add('dgs10',        A.dgs10,                       'B');
add('vvix',         A.vvix,                        'B');
add('skew',         A.skew,                        'B');
add('vix9d_spread', A.vix9d - A.vix,               'B');
add('log_vxn',      log(A.vxn),                    'B');
add('log_rvx',      log(A.rvx),                    'B');

% ---- C: macro / stress (publication lags already applied) ----------------------------
add('ads',       A.ads,        'C');
add('log_epu',   log(A.epu),   'C');
add('ciss',      A.ciss,       'C');
add('news_sent', A.news,       'C');
add('log_gpr',   log(A.gprd),  'C');
add('nfci',      A.nfci,       'C');
add('stlfsi4',   A.stlfsi4,    'C');
add('hsi_sq',    A.hsi_sq,     'C');
add('early_close_next', [A.early_close(2:end); 0], 'C');   % NYSE schedule is public
add('gap_days_next',    [days(diff(A.date)); 1],    'C');   % weekend / holiday ahead

% ---- D: ES measures (proposal eq. 3) ---------------------------------------------------
rv5 = A.es_rv5;
J   = posPart(rv5 - A.es_bv5);
Cc  = rv5 - J;
add('es_C_d',   Cc,                           'D');
add('es_C_w',   rollmean(Cc, 5, mf),          'D');
add('es_C_m',   rollmean(Cc, 22, mf),         'D');
add('es_J_d',   J,                            'D');
add('es_J_w',   rollmean(J, 5, mf),           'D');
add('es_J_m',   rollmean(J, 22, mf),          'D');
add('es_rsp_d', A.es_rsp5,                    'D');
add('es_rsn_d', A.es_rsn5,                    'D');
add('es_rsp_w', rollmean(A.es_rsp5, 5, mf),   'D');
add('es_rsn_w', rollmean(A.es_rsn5, 5, mf),   'D');
add('es_sqrtrq_rv', sqrt(A.es_rq5) .* rv5,    'D');
add('es_rk_d',  A.es_rk,                      'D');
on = posPart(rv5 - rvSpy);                    % overnight variance max(ES - SPY, 0)
add('overnight_d', on,                        'D');
add('overnight_w', rollmean(on, 5, 0.6),      'D');

X(isinf(X)) = NaN;
end

function z = posPart(x)
% max(x, 0) that keeps NaN (MATLAB's max would turn NaN into 0)
z = x;
z(x < 0) = 0;
end
