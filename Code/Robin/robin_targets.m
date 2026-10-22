function T = robin_targets()
%ROBIN_TARGETS Task 1 (Robin, data): SPY and ES forecast targets.
%   Daily realized variance on the NYSE calendar and the h-day average
%   RV_{t+1:t+h} for h = 1, 5, 22 (proposal v5.4, eq. 2). Every variance is a
%   daily variance in %^2 (decimal x cfg.scale), as in the main pipeline.
%
%     SPY  Risk Lab rv5 (main target), rv15 and QMLE (robustness). Risk Lab
%          reports annualized vol sigma; daily variance = sigma^2 / 252.
%     ES   VOLARE rv5 (second target), rv1 and realized kernel (robustness).
%          Globex holiday rows (non-NYSE dates) are added to the next NYSE
%          session, so each target spans one close-to-close interval.
%
%   Agreed rules (proposal 3.2): targets are never filled, ES never stands in
%   for a missing SPY day, and a multi-day target is dropped if more than 20%
%   of its window is missing.
%
%   Output: Output/Robin/targets.csv. Column y_<series>_h<h> in row t is the
%   target of a forecast made at the close of NYSE day t.

here = fileparts(mfilename('fullpath'));
addpath(fileparts(here));                      % Code/: rv_config
cfg = rv_config();
D   = cfg.dataDir;
sc  = cfg.scale;

% ---- NYSE calendar (the session dates of features_daily.csv) -------------------
opts = detectImportOptions(fullfile(D, 'features_daily.csv'));
opts.SelectedVariableNames = {'date'};
opts = setvartype(opts, 'date', 'datetime');
F = readtable(fullfile(D, 'features_daily.csv'), opts);
dates = dateshift(F.date, 'start', 'day');
N = numel(dates);
T = table(dates, 'VariableNames', {'date'});

% ---- Risk Lab SPY: annualized vol -> daily variance -----------------------------
R = readtable(fullfile(D, 'risklab_SPY_daily_annualized_vol_1996-2026.csv'));
[ok, loc] = ismember(dateshift(R.date, 'start', 'day'), dates);
assert(all(ok), 'robin_targets: a Risk Lab date is not an NYSE session');
T.rv_spy   = place(N, loc, R.rv5_trade_vol.^2  / 252 * sc);
T.rv15_spy = place(N, loc, R.rv15_trade_vol.^2 / 252 * sc);
T.qmle_spy = place(N, loc, R.qmle_trade_vol.^2 / 252 * sc);

% ---- VOLARE ES: holiday Globex rows are added to the next NYSE session ----------
E = readtable(fullfile(D, 'VOLARE_ES_realized_measures_2009-2026.csv'));
eDates  = dateshift(E.date, 'start', 'day');
nextIdx = arrayfun(@(d) find(dates >= d, 1, 'first'), eDates);
onCal   = ismember(eDates, dates);
T.rv_es  = accumarray(nextIdx, E.rv5 * sc, [N 1], @sum, NaN);
T.rv1_es = accumarray(nextIdx, E.rv1 * sc, [N 1], @sum, NaN);
T.rk_es  = accumarray(nextIdx, E.rk  * sc, [N 1], @sum, NaN);
T.es_holiday_merged = accumarray(nextIdx, double(~onCal), [N 1], @sum, 0);

% ---- h-day average targets --------------------------------------------------------
series = {'rv_spy','rv15_spy','qmle_spy','rv_es','rv1_es','rk_es'};
for s = series
    for h = cfg.horizons
        T.(sprintf('y_%s_h%d', s{1}, h)) = horizon_avg(T.(s{1}), h, cfg.maxMissFrac);
    end
end

outDir = fullfile(cfg.outDir, 'Robin');
if ~isfolder(outDir), mkdir(outDir); end
T.date.Format = 'yyyy-MM-dd';
writetable(T, fullfile(outDir, 'targets.csv'));

% ---- summary ----------------------------------------------------------------------
fprintf('robin_targets: %d NYSE sessions, %s to %s; %d ES holiday rows merged.\n', ...
    N, string(dates(1)), string(dates(end)), sum(~onCal));
for s = {'rv_spy','rv_es'}
    for h = cfg.horizons
        y = T.(sprintf('y_%s_h%d', s{1}, h));
        fprintf('  %-7s h=%-2d  %5d targets, first origin %s\n', s{1}, h, ...
            sum(~isnan(y)), string(dates(find(~isnan(y), 1))));
    end
end
fprintf('robin_targets: wrote %s\n', fullfile(outDir, 'targets.csv'));
end

function y = horizon_avg(rv, h, maxMissFrac)
% Mean of rv over sessions t+1..t+h from the observed days. NaN when more than
% maxMissFrac of the window is missing or the window runs past the last
% observation. Missing days are never filled.
N   = numel(rv);
obs = ~isnan(rv);
x0  = rv;  x0(~obs) = 0;
s = movsum(x0, [0 h-1]);        c = movsum(double(obs), [0 h-1]);
s = [s(2:end); NaN];            c = [c(2:end); NaN];          % window t+1..t+h
y = s ./ c;
lastValid = find(obs, 1, 'last');
y(c == 0 | (h - c) > maxMissFrac * h | (1:N)' + h > lastValid) = NaN;
end

function x = place(N, loc, v)
x = NaN(N, 1);
x(loc) = v;
end
