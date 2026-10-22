%% RV FORECASTING PIPELINE: HAR vs PERSISTENCE (Risk Lab SPY and VOLARE ES)
% Advanced Machine Learning (QFGB-890H-001), Fordham MSQF, Fall 2026
% Team: James, Robin, Aryan.  Instructor: Prof. Dmitry Udler.
% Follows Project Proposal v5.4 (Proposal\RV_Forecasting_Proposal_v5.4.pdf).
%
% What this script does, in order:
%   (a) Load the raw files (Risk Lab SPY, VOLARE ES, Oxford-Man SPX).
%   (b) Clean them: build the NYSE trading-day calendar, put every series
%       on it, leave missing days as NaN (no forward-fill), drop ES rows
%       that fall on non-NYSE days, and cross-check Risk Lab vs Oxford-Man.
%   (c) Build the h-day targets and the HAR features (Corsi, 2009), and
%       run full-sample sanity checks (coefficients, R^2, autocorrelation).
%   (d) Walk-forward: expanding window, yearly re-fits, label gap, HAR vs
%       Persistence, MSE and QLIKE, forecasts saved to Output\.
%
% Everything is on the VARIANCE scale (daily variance), as in the proposal:
%   SPY:  RV_t = (rv5_trade_vol_t)^2 / 252   (Risk Lab gives annualized vol)
%   ES:   RV_t = rv5_t                       (VOLARE already gives daily variance)
%
% Only base MATLAB is used (readtable, datetime, backslash). No toolboxes.
% Paths are relative to this file: data come from the repository's
% "Realize Volatility Data" folder and results go to aryan/output.
%
% Role in the integrated project: an independent cross-check of the main
% pipeline's HAR and Persistence (Code/), built with its own rules (strict
% missing-day rule, ES holiday rows dropped, floor at the training minimum of
% the target, decimal variances). Code/check_integration.m compares the two.
% Like the main pipeline, it respects the team's test lock: while
% cfg.runLockedTest is false in Code/rv_config.m, only development years are
% fitted and scored.

clear; clc;

%% 0. Settings and paths
% Find the folder this script lives in (works for "Run" and "matlab -batch").
scriptDir = fileparts(mfilename('fullpath'));
if isempty(scriptDir), scriptDir = pwd; end
rootDir   = fileparts(scriptDir);                 % <repo>/aryan
repoDir   = fileparts(rootDir);                   % repository root
dataDir   = fullfile(repoDir, 'Realize Volatility Data');
outDir    = fullfile(rootDir, 'output');

% Team test lock (proposal Section 5): the 2018-2026 test is scored only after
% the team sets cfg.runLockedTest = true in Code/rv_config.m.
addpath(fullfile(repoDir, 'Code'));
teamCfg   = rv_config();
testUnlocked = teamCfg.runLockedTest;
if ~exist(outDir, 'dir'), mkdir(outDir); end

% Keep a text log of everything printed to the Command Window.
logFile = fullfile(outDir, 'rv_har_pipeline_log.txt');
if exist(logFile, 'file'), delete(logFile); end
diary(logFile);
fprintf('Run started %s\n', char(datetime('now')));

% Key dates from the proposal (Section 3.1 and Section 5).
cfg.horizons      = [1 5 22];                     % forecast horizons in trading days
cfg.spyStart      = datetime(2005,1,3);           % main sample start (IV surface starts here)
cfg.esDevStart    = datetime(2010,1,4);           % ES development start
cfg.devEnd        = datetime(2017,12,29);         % last development session
cfg.testStart     = datetime(2018,1,2);           % first locked-test session
cfg.spyDevFcYear  = 2010;                         % SPY dev forecasts start once 5 years of training exist
cfg.esDevFcYear   = 2015;                         % ES dev forecasts start once 5 years of training exist
cfg.annFactor     = 252;                          % trading days per year (vol -> variance)

%% (a) LOAD DATA
% Risk Lab SPY: daily ANNUALIZED volatility built from intraday trades
% (regular session). rv5_trade_vol = 5-minute subsampled realized vol.
% The README says to use trade-based series (quote-based ones have outliers).
fRL = fullfile(dataDir, 'risklab_SPY_daily_annualized_vol_1996-2026.csv');
rl  = readDated(fRL);

% VOLARE ES (E-mini futures, Globex session): daily VARIANCES; rv5 = 5-minute RV.
fES = fullfile(dataDir, 'VOLARE_ES_realized_measures_2009-2026.csv');
es  = readDated(fES);

% Oxford-Man SPX (archived mirror): daily variances; rv5 = 5-minute RV. Cross-check only.
fOM = fullfile(dataDir, 'oxfordman_SPX_2000-01-03_2022-02-25.csv');
om  = readDated(fOM);

fprintf('\n(a) Loaded: Risk Lab SPY %d rows (%s to %s); VOLARE ES %d rows (%s to %s); Oxford-Man %d rows (%s to %s)\n', ...
    height(rl), ds(min(rl.date)), ds(max(rl.date)), height(es), ds(min(es.date)), ds(max(es.date)), ...
    height(om), ds(min(om.date)), ds(max(om.date)));

%% (b) CLEAN DATA
% --- b1. NYSE trading-day calendar ------------------------------------------
% Weekdays minus NYSE holidays (rules coded below in nyseHolidays) and
% special closures: 9/11 (2001), Reagan (2004-06-11), Ford (2007-01-02),
% Hurricane Sandy (2012-10-29/30), G.H.W. Bush (2018-12-05), Carter (2025-01-09).
nyse = nyseCalendar(datetime(1996,1,1), datetime(2026,12,31));
writetable(table(string(nyse, 'yyyy-MM-dd'), 'VariableNames', {'date'}), fullfile(outDir, 'nyse_calendar_built.csv'));
fprintf('\n(b) NYSE calendar built: %d sessions 1996-2026\n', numel(nyse));

% --- b2. Basic validity checks on the raw rows -------------------------------
% Realized measures must be positive (QLIKE takes logs); duplicates not allowed.
rl = dropBadRows(rl, 'rv5_trade_vol', 'Risk Lab SPY');
es = dropBadRows(es, 'rv5',           'VOLARE ES');
om = dropBadRows(om, 'rv5',           'Oxford-Man');

% --- b3. SPY target on the NYSE calendar ---------------------------------------
% Late-start rule: the series begins at its first valid observation on or
% after the sample start (3 Jan 2005) and ends at its last valid observation.
% Days on the calendar with no Risk Lab value stay NaN. NO forward-fill.
spyVarRaw = rl.rv5_trade_vol.^2 / cfg.annFactor;            % annualized vol -> daily variance
spyFirst  = min(rl.date(rl.date >= cfg.spyStart));
spyLast   = max(rl.date);
SPY.name  = 'SPY';
SPY.date  = nyse(nyse >= spyFirst & nyse <= spyLast);
SPY.rv    = alignToCalendar(SPY.date, rl.date, spyVarRaw);
SPY.trainStart = cfg.spyStart;                                % first origin allowed in training
SPY.devFcYear  = cfg.spyDevFcYear;

% Risk Lab rows on non-NYSE days (should be none) are reported and ignored.
nOffCalRL = sum(~ismember(rl.date(rl.date >= spyFirst), nyse));
missSPY   = SPY.date(isnan(SPY.rv));
fprintf('SPY: %d NYSE sessions %s to %s; %d missing (dev %d, test %d); %d Risk Lab rows off the NYSE calendar\n', ...
    numel(SPY.date), ds(SPY.date(1)), ds(SPY.date(end)), numel(missSPY), ...
    sum(missSPY <= cfg.devEnd), sum(missSPY >= cfg.testStart), nOffCalRL);
fprintf('SPY missing sessions: %s\n', strjoin(cellstr(char(missSPY, 'yyyy-MM-dd')), ', '));
writetable(table(missSPY, 'VariableNames', {'missing_date'}), fullfile(outDir, 'spy_missing_sessions.csv'));

% --- b4. ES target on the NYSE calendar ----------------------------------------
% VOLARE has rows on non-NYSE dates (short Globex holiday sessions). Per the
% current team decision these rows are DROPPED (the proposal's main spec rolls
% them into the next NYSE day; that is listed as pending professor sign-off).
esOff     = ~ismember(es.date, nyse);
esHol     = es.date(esOff);
fprintf('ES: %d rows on non-NYSE dates dropped (pre-2010 %d, 2010-2017 %d, 2018+ %d)\n', ...
    sum(esOff), sum(esHol < datetime(2010,1,1)), sum(esHol >= datetime(2010,1,1) & esHol <= cfg.devEnd), sum(esHol >= cfg.testStart));
esN       = es(~esOff, :);
ES.name   = 'ES';
ES.date   = nyse(nyse >= min(esN.date) & nyse <= max(esN.date));
ES.rv     = alignToCalendar(ES.date, esN.date, esN.rv5);
ES.trainStart = cfg.esDevStart;                               % ES models start in 2010
ES.devFcYear  = cfg.esDevFcYear;
fprintf('ES: %d NYSE sessions %s to %s; %d missing\n', numel(ES.date), ds(ES.date(1)), ds(ES.date(end)), sum(isnan(ES.rv)));

% --- b5. Cross-check: Risk Lab SPY rv5 vs Oxford-Man SPX rv5 --------------------
% Same quantity (5-minute RV, cash session) from two sources; correlation of
% daily variances over the 2005-2022 overlap should be about 0.968.
[~, iA, iB] = intersect(rl.date, om.date);
keep  = rl.date(iA) >= cfg.spyStart;
vRL   = spyVarRaw(iA(keep));  vOM = om.rv5(iB(keep));
cLev  = corr2(vRL, vOM);  cLog = corr2(log(vRL), log(vOM));
fprintf('Oxford-Man cross-check 2005-2022: %d common days, corr(variance) = %.4f, corr(log variance) = %.4f, median ratio RL/OM = %.3f\n', ...
    numel(vRL), cLev, cLog, median(vRL ./ vOM));

%% (c) BUILD TARGETS AND HAR FEATURES
% Forecast origin = end of NYSE day t. For horizon h:
%   target     y_t(h) = (1/h) * sum_{k=1..h} RV_{t+k}         (average daily VARIANCE)
%   HAR daily  RV_d   = RV_t
%   HAR weekly RV_w   = mean(RV_{t-4..t})
%   HAR monthly RV_m  = mean(RV_{t-21..t})
%   Persistence P_t(h) = mean(RV_{t-h+1..t})  (h = 1: RV_t)
% Any window that touches a NaN day gives NaN, so that origin is dropped.
% "Usable" = target and all three HAR features observed (22-day lag window
% plus the h-day target window are complete).
TG = {SPY, ES};                                   % the two targets, processed the same way
for k = 1:numel(TG)
    for h = cfg.horizons
        TG{k}.(sprintf('h%d', h)) = buildHAR(TG{k}.rv, h);
    end
end
SPY = TG{1}; ES = TG{2};

% --- c1. Full-sample sanity checks (DIAGNOSTIC ONLY) -----------------------------
% While the test is locked, only origins whose target ends by the last
% development session are used, so no test-period data enter these fits.
if testUnlocked
    fprintf('\n(c) Full-sample HAR fits (OLS on variance scale; diagnostic only, includes test years)\n');
else
    fprintf('\n(c) Development-sample HAR fits (OLS on variance scale; diagnostic only; test locked)\n');
end
coefRows = {};
for k = 1:numel(TG)
    S = TG{k};
    for h = cfg.horizons
        F   = S.(sprintf('h%d', h));
        use = F.usable & S.date >= S.trainStart;
        if ~testUnlocked                          % target must end by the last development session
            lastDev = find(S.date <= cfg.devEnd, 1, 'last');
            use = use & ((1:numel(S.date))' + h <= lastDev);
        end
        [b, r2] = olsFit(F.X(use, :), F.y(use));
        fprintf('%-3s h=%2d  N=%4d  b0=%.3e  b_d=%.3f  b_w=%.3f  b_m=%.3f  (sum %.3f)  R2=%.3f\n', ...
            S.name, h, sum(use), b(1), b(2), b(3), b(4), sum(b(2:4)), r2);
        coefRows(end+1, :) = {S.name, h, sum(use), b(1), b(2), b(3), b(4), sum(b(2:4)), r2}; %#ok<SAGROW>
    end
end
coefTbl = cell2table(coefRows, 'VariableNames', {'target','h','N','b0','b_d','b_w','b_m','sum_betas','R2'});
writetable(coefTbl, fullfile(outDir, 'har_fullsample_coefficients.csv'));

% --- c2. Persistence / long memory: autocorrelation of daily RV ----------------
lags = [1 5 10 22 50 100 250];
fprintf('\nAutocorrelation of daily RV (pairwise complete; NaN days skipped)\n');
for k = 1:numel(TG)
    S = TG{k};
    a  = nanAcf(S.rv, lags);  aL = nanAcf(log(S.rv), lags);
    fprintf('%-3s RV     : %s\n', S.name, sprintf('lag%-3d %.3f  ', [lags; a]));
    fprintf('%-3s log RV : %s\n', S.name, sprintf('lag%-3d %.3f  ', [lags; aL]));
end

% --- c3. Longer horizons are smoother: std and lag-1 autocorrelation of targets -
fprintf('\nTarget smoothness (annualized-vol equivalents use sqrt(252*RV))\n');
for k = 1:numel(TG)
    S = TG{k};
    for h = cfg.horizons
        y = S.(sprintf('h%d', h)).y;
        fprintf('%-3s h=%2d  std(y)=%.3e  std(daily change)=%.3e  mean ann. vol=%.1f%%\n', ...
            S.name, h, std(y, 'omitnan'), std(diff(y), 'omitnan'), 100*mean(sqrt(252*y), 'omitnan'));
    end
end

% --- c4. How many forecast origins lose their target or lag window to missing days
fprintf('\nSPY locked-test origins affected by missing days (proposal Section 3.2 table)\n');
for h = cfg.horizons
    F = SPY.(sprintf('h%d', h));
    o = calendarOrigins(SPY.date, h, cfg.testStart, SPY.date(end));
    fprintf('h=%2d  test origins %d | target window has missing %d | 22-day lag window has missing %d | usable %d\n', ...
        h, numel(o), sum(F.tgtMiss(o)), sum(F.lagMiss(o)), sum(F.usable(o)));
end

%% (d) WALK-FORWARD: HAR vs PERSISTENCE (expanding window, yearly re-fits)
% Re-fit rule (proposal Section 5): after the close of the last session of
% year Y-1 (date T), HAR is re-fitted by OLS on ALL usable rows from the
% training start (SPY 3 Jan 2005, ES 4 Jan 2010) through T, and used unchanged
% for every origin in year Y.
%   Locked test : origins 2 Jan 2018 onward -> re-fits at end of 2017..2025 (9 re-fits).
%   Development : pseudo-out-of-sample years once training holds 5 years
%                 (SPY 2010-2017, ES 2015-2017); dev targets must end by 29 Dec 2017.
% Label gap (eq. 10): a training row with origin s is used only if its target
% is fully observed by T, i.e. s + h <= T, so the last h rows are dropped.
% Floor: a HAR forecast below the training-window minimum target is set to
% that minimum (Christensen et al., 2023), so QLIKE is always defined.
% Scoring: only origins whose target AND 22-day HAR window are complete
% ("usable"); HAR and Persistence are scored on exactly the same origins.
% Losses on the variance scale (Patton, 2011):
%   MSE   = mean((y - f).^2)
%   QLIKE = mean(y./f - log(y./f) - 1)
fprintf('\n(d) Walk-forward (expanding window, yearly re-fits, label gap h)\n');
allFc = table(); allCoef = table(); sumRows = {};
for k = 1:numel(TG)
    S = TG{k};
    for h = cfg.horizons
        periods = {'dev'};
        if testUnlocked, periods = {'dev', 'test'}; end
        for period = periods
            [fc, cf] = harWalkForward(S, h, period{1}, cfg);
            allFc   = [allFc; fc];   %#ok<AGROW>
            allCoef = [allCoef; cf]; %#ok<AGROW>
            sc = fc(fc.scored, :);
            mseH = mean((sc.y - sc.har).^2);   mseP = mean((sc.y - sc.persistence).^2);
            qlH  = mean(sc.y./sc.har - log(sc.y./sc.har) - 1);
            qlP  = mean(sc.y./sc.persistence - log(sc.y./sc.persistence) - 1);
            sumRows(end+1, :) = {S.name, period{1}, h, height(cf), height(fc), height(sc), ...
                sum(sc.floored), mseH, mseP, mseH/mseP, qlH, qlP, qlH/qlP}; %#ok<SAGROW>
        end
    end
end
summary = cell2table(sumRows, 'VariableNames', {'target','period','h','n_refits', ...
    'n_origins','n_scored','n_har_floored','MSE_HAR','MSE_Persistence','MSE_ratio_HAR_over_P', ...
    'QLIKE_HAR','QLIKE_Persistence','QLIKE_ratio_HAR_over_P'});

% Print a readable table (MSE shown x 1e8 because daily variances are ~1e-4).
fprintf('%-4s %-5s %3s %6s %8s %7s %6s %11s %11s %7s %10s %10s %7s\n', 'tgt','per','h','refits', ...
    'origins','scored','floor','MSE_HARx1e8','MSE_Px1e8','ratio','QLIKE_HAR','QLIKE_P','ratio');
for r = 1:height(summary)
    q = summary(r, :);
    fprintf('%-4s %-5s %3d %6d %8d %7d %6d %11.4f %11.4f %7.3f %10.4f %10.4f %7.3f\n', q.target{1}, q.period{1}, ...
        q.h, q.n_refits, q.n_origins, q.n_scored, q.n_har_floored, 1e8*q.MSE_HAR, 1e8*q.MSE_Persistence, ...
        q.MSE_ratio_HAR_over_P, q.QLIKE_HAR, q.QLIKE_Persistence, q.QLIKE_ratio_HAR_over_P);
end

% Check the locked-test origin counts against the proposal (SPY: 2,200 / 2,196 / 2,179).
% These counts use only the calendar and data availability, not any forecast.
expected = [2200 2196 2179];
for j = 1:3
    n = numel(calendarOrigins(SPY.date, cfg.horizons(j), cfg.testStart, SPY.date(end)));
    fprintf('SPY test origins h=%2d: %d (proposal %d) -> %s\n', cfg.horizons(j), n, expected(j), ...
        string(ifelse(n == expected(j), 'MATCH', 'MISMATCH')));
end

% Save results.
allFc.origin_date     = string(allFc.origin_date, 'yyyy-MM-dd');
allFc.target_end_date = string(allFc.target_end_date, 'yyyy-MM-dd');
allFc.refit_date      = string(allFc.refit_date, 'yyyy-MM-dd');
allCoef.refit_date    = string(allCoef.refit_date, 'yyyy-MM-dd');
writetable(allFc,   fullfile(outDir, 'har_persistence_forecasts.csv'));
writetable(allCoef, fullfile(outDir, 'har_walkforward_coefficients.csv'));
writetable(summary, fullfile(outDir, 'har_persistence_oos_summary.csv'));
fprintf('Saved forecasts, re-fit coefficients and summary to aryan/output\n');
fprintf('Run finished %s\n', char(datetime('now')));
diary off;

%% ===================== LOCAL FUNCTIONS =====================================
% (MATLAB allows local functions at the end of a script since R2016b.)

function T = readDated(f)
% Read a CSV whose first column "date" is yyyy-MM-dd; sort by date.
opts = detectImportOptions(f);
opts = setvartype(opts, 'date', 'datetime');
opts = setvaropts(opts, 'date', 'InputFormat', 'yyyy-MM-dd');
T = readtable(f, opts);
T = sortrows(T, 'date');
end

function T = dropBadRows(T, col, name)
% Remove rows with missing/non-positive values or duplicated dates (and say so).
bad = isnan(T.(col)) | T.(col) <= 0;
[~, firstIdx] = unique(T.date, 'first');
dup = true(height(T), 1); dup(firstIdx) = false;
fprintf('%s: %d rows with missing/non-positive %s, %d duplicate dates removed\n', name, sum(bad), col, sum(dup & ~bad));
T = T(~bad & ~dup, :);
end

function x = alignToCalendar(cal, d, v)
% Place values v (dated d) on calendar cal. Days with no value stay NaN.
x = nan(numel(cal), 1);
[tf, loc] = ismember(cal, d);
x(tf) = v(loc(tf));
end

function F = buildHAR(rv, h)
% Targets, HAR features and Persistence for one horizon h. Windows with a NaN give NaN.
n = numel(rv);
F.y = nan(n,1); F.X = nan(n,3); F.P = nan(n,1);
F.tgtMiss = false(n,1); F.lagMiss = false(n,1);
for t = 1:n
    if t + h <= n
        w = rv(t+1:t+h);
        F.y(t) = mean(w);                       % NaN if any day missing
        F.tgtMiss(t) = any(isnan(w));
    end
    if t >= 22
        L = rv(t-21:t);
        F.X(t,:) = [rv(t), mean(rv(t-4:t)), mean(L)];
        F.lagMiss(t) = any(isnan(L));
        F.P(t) = mean(rv(t-h+1:t));
    else
        F.lagMiss(t) = true;                    % not enough history yet (late start)
    end
end
F.usable = ~isnan(F.y) & all(~isnan(F.X), 2) & ~isnan(F.P);
end

function [b, r2] = olsFit(X, y)
% OLS with intercept via backslash. Returns [b0; b_d; b_w; b_m] and in-sample R^2.
A  = [ones(size(X,1),1), X];
b  = A \ y;
e  = y - A*b;
r2 = 1 - sum(e.^2) / sum((y - mean(y)).^2);
end

function a = nanAcf(x, lags)
% Sample autocorrelation using all pairs where both values are observed.
mu = mean(x, 'omitnan'); z = x - mu; v = mean(z.^2, 'omitnan');
a = zeros(size(lags));
for k = 1:numel(lags)
    p = z(1:end-lags(k)) .* z(1+lags(k):end);
    a(k) = mean(p, 'omitnan') / v;
end
end

function c = corr2(a, b)
% Pearson correlation without the Statistics Toolbox.
a = a - mean(a); b = b - mean(b);
c = sum(a.*b) / sqrt(sum(a.^2) * sum(b.^2));
end

function idx = calendarOrigins(dates, h, first, lastTargetDay)
% Indices of origins t with date >= first whose h-day target ends by lastTargetDay.
n = numel(dates); idx = [];
for t = 1:n-h
    if dates(t) >= first && dates(t+h) <= lastTargetDay
        idx(end+1,1) = t; %#ok<AGROW>
    end
end
end

function [fc, cf] = harWalkForward(S, h, period, cfg)
% Expanding-window walk-forward for one target S, horizon h and period
% ('dev' or 'test'). Returns one row per calendar origin (fc) and one row
% per re-fit (cf).
F  = S.(sprintf('h%d', h));
n  = numel(S.date);
yr = year(S.date);
if strcmp(period, 'dev')
    years = S.devFcYear:year(cfg.devEnd);
else
    years = year(cfg.testStart):yr(end);
end
trainFirst = find(S.date >= S.trainStart, 1);
O = []; R = []; Yh = []; Hf = []; Pf = []; Fl = []; Ok = []; Cf = [];
for Y = years
    idxY = find(yr == Y);
    if isempty(idxY), continue; end
    T  = idxY(1) - 1;                               % last session of year Y-1 = re-fit date
    s  = (trainFirst:T)';
    s  = s(s + h <= T & F.usable(s));               % label gap + complete windows only
    [b, r2] = olsFit(F.X(s,:), F.y(s));
    flo = min(F.y(s));                              % training-window minimum target
    Cf = [Cf; T, numel(s), b', r2, flo];            %#ok<AGROW>
    for t = idxY'
        if t + h > n, continue; end                 % target must end by the last data day
        if strcmp(period, 'dev') && S.date(t + h) > cfg.devEnd, continue; end
        f = NaN; isFl = false;
        if F.usable(t)
            f = b(1) + F.X(t,:) * b(2:4);
            if f < flo, f = flo; isFl = true; end
        end
        O = [O; t]; R = [R; T]; Yh = [Yh; F.y(t)]; Hf = [Hf; f]; %#ok<AGROW>
        Pf = [Pf; F.P(t)]; Fl = [Fl; isFl]; Ok = [Ok; F.usable(t)]; %#ok<AGROW>
    end
end
m  = numel(O);
fc = table(repmat(string(S.name), m, 1), repmat(string(period), m, 1), repmat(h, m, 1), ...
    S.date(O), S.date(O + h), S.date(R), Yh, Hf, Pf, logical(Fl), logical(Ok), ...
    'VariableNames', {'target','period','h','origin_date','target_end_date','refit_date', ...
    'y','har','persistence','floored','scored'});
k  = size(Cf, 1);
cf = table(repmat(string(S.name), k, 1), repmat(string(period), k, 1), repmat(h, k, 1), ...
    S.date(Cf(:,1)), Cf(:,2), Cf(:,3), Cf(:,4), Cf(:,5), Cf(:,6), Cf(:,7), Cf(:,8), ...
    'VariableNames', {'target','period','h','refit_date','n_train','b0','b_d','b_w','b_m','R2_in_sample','floor'});
end

function out = ifelse(c, a, b)
if c, out = a; else, out = b; end
end

function s = ds(d)
s = char(d, 'yyyy-MM-dd');
end

function cal = nyseCalendar(d0, d1)
% NYSE sessions between d0 and d1: weekdays minus holidays and special closures.
d   = (d0:caldays(1):d1)';
d   = d(~ismember(weekday(d), [1 7]));          % drop Sundays (1) and Saturdays (7)
hol = [];
for y = year(d0):year(d1)
    hol = [hol; nyseHolidays(y)]; %#ok<AGROW>
end
special = datetime({'2001-09-11','2001-09-12','2001-09-13','2001-09-14', ... % 9/11
                    '2004-06-11', ...                                         % Reagan funeral
                    '2007-01-02', ...                                         % Ford funeral
                    '2012-10-29','2012-10-30', ...                            % Hurricane Sandy
                    '2018-12-05', ...                                         % G.H.W. Bush funeral
                    '2025-01-09'}', 'InputFormat', 'yyyy-MM-dd');             % Carter funeral
cal = d(~ismember(d, [hol; special]));
end

function h = nyseHolidays(y)
% Regular NYSE full-day holidays for year y (rules checked against the NYSE calendar 1996-2026).
h = datetime.empty(0,1);
% New Year's Day: Jan 1; Sunday -> Monday; Saturday -> no weekday holiday (NYSE rule).
nyd = datetime(y,1,1);
if weekday(nyd) == 1, h(end+1,1) = nyd + 1; elseif weekday(nyd) ~= 7, h(end+1,1) = nyd; end
if y >= 1998, h(end+1,1) = nthWeekday(y, 1, 2, 3); end   % MLK Day: 3rd Monday Jan (NYSE closed from 1998)
h(end+1,1) = nthWeekday(y, 2, 2, 3);           % Presidents' Day: 3rd Monday Feb
h(end+1,1) = easterSunday(y) - 2;              % Good Friday
h(end+1,1) = lastWeekday(y, 5, 2);             % Memorial Day: last Monday May
if y >= 2022, h(end+1,1) = observed(datetime(y,6,19)); end   % Juneteenth (from 2022)
h(end+1,1) = observed(datetime(y,7,4));        % Independence Day
h(end+1,1) = nthWeekday(y, 9, 2, 1);           % Labor Day: 1st Monday Sep
h(end+1,1) = nthWeekday(y, 11, 5, 4);          % Thanksgiving: 4th Thursday Nov
h(end+1,1) = observed(datetime(y,12,25));      % Christmas
end

function d = observed(d)
% Saturday holiday -> Friday before; Sunday holiday -> Monday after.
if weekday(d) == 7, d = d - 1; elseif weekday(d) == 1, d = d + 1; end
end

function d = nthWeekday(y, m, wd, n)
% n-th weekday wd (1=Sun..7=Sat) of month m in year y.
first = datetime(y, m, 1);
d = first + mod(wd - weekday(first), 7) + 7*(n-1);
end

function d = lastWeekday(y, m, wd)
% Last weekday wd (1=Sun..7=Sat) of month m in year y.
last = dateshift(datetime(y, m, 1), 'end', 'month');
d = last - mod(weekday(last) - wd, 7);
end

function d = easterSunday(y)
% Gregorian Easter Sunday (anonymous Gregorian / Meeus algorithm).
a = mod(y,19); b = floor(y/100); c = mod(y,100); dd = floor(b/4); e = mod(b,4);
f = floor((b+8)/25); g = floor((b-f+1)/3); hh = mod(19*a+b-dd-g+15, 30);
i = floor(c/4); k = mod(c,4); l = mod(32+2*e+2*i-hh-k, 7); m = floor((a+11*hh+22*l)/451);
mon = floor((hh+l-7*m+114)/31); day = mod(hh+l-7*m+114, 31) + 1;
d = datetime(y, mon, day);
end
