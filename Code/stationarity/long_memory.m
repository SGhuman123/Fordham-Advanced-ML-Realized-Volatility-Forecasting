function long_memory(phase)
%LONG_MEMORY Long-memory diagnostics that motivate the HAR structure.
%   1. Fractional-integration order d of SPY and ES realized variance (levels
%      and logs; proposal v5.4 4.3 "Memory of log RV"): local Whittle (Robinson,
%      1995) at bandwidths T^0.5 and T^0.65; Bhatti's (2026) detectability-
%      boundary estimator d_LTM (for each d on a grid, FFD the series, regress
%      log|ACF| on log lag over lags 20..K2 and record the RMSE; d_LTM is the
%      d with the largest RMSE), which sits below the true order by about his
%      resolution limit d0(T) = 5.81 T^-0.367; and the plain ACF-tail slope
%      d = (beta + 1)/2.
%   2. Whether the h = 1 forecast errors of each model still carry memory:
%      local Whittle d, Ljung-Box Q(10) and the ACF-tail fit.
%   Only data up to the end of the development period (2017) are used, so the
%   locked test is not touched. Output: Output/tables/<phase>/main/long_memory_*

if nargin < 1, phase = 'dev'; end
cfg = rv_config();
P   = load_panel(cfg);
outDir = fullfile(cfg.outDir, 'tables', phase, 'main');
if ~isfolder(outDir), mkdir(outDir); end
devEnd = datetime(cfg.devLastYear, 12, 31);

% ---- 1. memory of the RV series ------------------------------------------------
series = {'SPY RV 1996-2017', P.rv_spy, datetime(1996,1,1);
          'SPY RV 2005-2017', P.rv_spy, cfg.spyStart;
          'ES RV 2010-2017',  P.es_rv5, cfg.esStart};
T1 = table();
acfs = {};
for i = 1:size(series, 1)
    sel = P.date >= series{i,3} & P.date <= devEnd;
    for tr = {'level', 'log'}
        x = series{i,2}(sel);
        x = x(~isnan(x));
        if strcmp(tr{1}, 'log'), x = log(x); end
        T1 = [T1; memory_row(string(series{i,1}), string(tr{1}), x)]; %#ok<AGROW>
        acfs(end+1, :) = {sprintf('%s (%s)', series{i,1}, tr{1}), acf(x, 250)}; %#ok<AGROW>
    end
end
writetable(T1, fullfile(outDir, 'long_memory_series.csv'));

% ---- 2. memory left in the h = 1 forecast errors -------------------------------
T2 = table();
errs = {};
for target = {'SPY', 'ES'}
    f = fullfile(cfg.outDir, 'forecasts', phase, 'main', sprintf('%s_h1.mat', target{1}));
    if ~isfile(f), continue; end
    S = load(f);
    keys = fieldnames(S.R)';
    common = [];
    for k = keys
        d = S.R.(k{1}).fc.date(~isnan(S.R.(k{1}).fc.y));
        if isempty(common), common = d; else, common = intersect(common, d); end
    end
    for k = keys
        fc = S.R.(k{1}).fc;
        e = fc.y(ismember(fc.date, common)) - fc.f(ismember(fc.date, common));
        r = memory_row(string(target{1}), string(k{1}), e);
        [Q, pQ] = ljung_box(e, 10);
        r.LjungBox_Q10 = Q;  r.LjungBox_p = pQ;
        T2 = [T2; r]; %#ok<AGROW>
        if strcmp(k{1}, 'HAR_A'), errs(end+1, :) = {sprintf('%s target', target{1}), acf(e, 250), numel(e)}; end %#ok<AGROW>
    end
end
T2.Properties.VariableNames{1} = 'target';
T2.Properties.VariableNames{2} = 'model';
writetable(T2, fullfile(outDir, 'long_memory_errors.csv'));

% ---- figure: RV autocorrelations (log-log) and forecast-error autocorrelations -----
try
    fig = figure('Visible', 'off', 'Position', [100 100 1150 430]);
    try, theme(fig, 'light'); catch, end
    tl = tiledlayout(fig, 1, 2, 'TileSpacing', 'compact', 'Padding', 'compact');
    ax1 = nexttile(tl);  hold(ax1, 'on');
    for i = [1 2 5 6]                          % SPY 1996-2017 and ES 2010-2017, level and log
        r = acfs{i, 2};  r(r <= 0) = NaN;
        plot(ax1, 1:250, r, 'LineWidth', 1.3, 'DisplayName', acfs{i, 1});
    end
    set(ax1, 'XScale', 'log', 'YScale', 'log');  ylim(ax1, [0.01 1]);
    xline(ax1, [20 200], '--', 'HandleVisibility', 'off');
    xlabel(ax1, 'Lag (trading days, log scale)');  ylabel(ax1, 'Autocorrelation (log scale)');
    title(ax1, 'Realized variance: hyperbolic decay');
    legend(ax1, 'Location', 'southwest');  grid(ax1, 'on');
    ax2 = nexttile(tl);  hold(ax2, 'on');
    for i = 1:size(errs, 1)
        plot(ax2, 1:60, errs{i, 2}(1:60), 'LineWidth', 1.3, 'DisplayName', errs{i, 1});
    end
    band = 1.96 / sqrt(errs{1, 3});
    yline(ax2, [-band band], ':', 'Color', [0.4 0.4 0.4], 'HandleVisibility', 'off');
    yline(ax2, 0, '-', 'Color', [0.6 0.6 0.6], 'HandleVisibility', 'off');
    xlabel(ax2, 'Lag (trading days)');  ylabel(ax2, 'Autocorrelation');
    title(ax2, 'HAR h = 1 forecast errors, 2013-2017 (dotted: 95% band)');
    legend(ax2, 'Location', 'northeast');  grid(ax2, 'on');
    print(fig, fullfile(outDir, 'long_memory_acf.png'), '-dpng', '-r150');
    close(fig);
catch err
    warning('long_memory: %s', err.message);
end
fprintf('long_memory: wrote long_memory_series.csv, long_memory_errors.csv, long_memory_acf.png\n');
end

% =============================================================================
function r = memory_row(name, tr, x)
T = numel(x);
m1 = floor(T^0.5);  m2 = floor(T^0.65);
[beta, R2tail] = acf_tail(x);
dltm = bhatti_dltm(x);
d0 = 5.81 * T^-0.367;
r = table(name, tr, T, local_whittle(x, m1), 1 / (2*sqrt(m1)), local_whittle(x, m2), ...
    1 / (2*sqrt(m2)), dltm, d0, dltm + d0, (beta + 1) / 2, R2tail, ...
    'VariableNames', {'series','transform','T','d_LW_T050','se_T050','d_LW_T065','se_T065', ...
    'd_LTM','d0_floor','d_LTM_plus_d0','d_ACFtail','R2_ACFtail'});
end

function d = bhatti_dltm(x)
% Bhatti (2026): d_LTM = argmax over d of the RMSE of the log-log ACF-tail fit
% of the FFD(d) series, lags 20..K2 (K2 = last 5%-significant lag, capped at
% 200), grid 0:0.02:1, weights truncated at |w| < 1e-4.
grid = 0:0.02:1;
eps_ = NaN(size(grid));
for i = 1:numel(grid)
    xf = ffd(x, grid(i), 1e-4);
    xf = xf(~isnan(xf));
    if numel(xf) < 500, continue; end
    r = acf(xf, 200);
    K2 = find(abs(r) > 1.96 / sqrt(numel(xf)), 1, 'last');
    if isempty(K2) || K2 < 40, continue; end
    k = (20:K2)';
    yv = log(abs(r(k)));
    ok = isfinite(yv);
    X = [ones(sum(ok),1) log(k(ok))];
    b = X \ yv(ok);
    eps_(i) = sqrt(mean((yv(ok) - X*b).^2));
end
if all(isnan(eps_)), d = NaN; return; end
[~, i] = max(eps_);
d = grid(i);
end

function d = local_whittle(x, m)
% Robinson (1995) local Whittle estimator on the first m Fourier frequencies
x = x(:) - mean(x);
T = numel(x);
w = fft(x);
I = abs(w(2:m+1)).^2 / (2*pi*T);            % periodogram at lambda_j, j = 1..m
lam = 2*pi*(1:m)' / T;
R = @(d) log(mean(lam.^(2*d) .* I)) - 2*d*mean(log(lam));
d = fminbnd(R, -0.49, 0.99);
end

function [beta, R2] = acf_tail(x)
% slope of log|rho(k)| on log k over k = 20..K2, K2 = last 5%-significant lag <= 200.
% Fewer than 20 tail lags means no detectable hyperbolic tail: return NaN.
r = acf(x, 200);
sig = abs(r) > 1.96 / sqrt(numel(x));
K2 = find(sig, 1, 'last');
if isempty(K2) || K2 < 40
    beta = NaN;  R2 = NaN;  return
end
k = (20:K2)';
y = log(abs(r(k)));
ok = isfinite(y);
X = [ones(sum(ok),1) log(k(ok))];
b = X \ y(ok);
beta = b(2);
R2 = 1 - sum((y(ok) - X*b).^2) / sum((y(ok) - mean(y(ok))).^2);
end

function r = acf(x, K)
x = x(:) - mean(x);
T = numel(x);
c0 = (x' * x) / T;
r = zeros(K, 1);
for k = 1:K
    r(k) = (x(1+k:end)' * x(1:end-k)) / T / c0;
end
end

function [Q, p] = ljung_box(e, K)
T = numel(e);
r = acf(e, K);
Q = T * (T + 2) * sum(r.^2 ./ (T - (1:K)'));
p = 1 - chi2cdf(Q, K);
end
