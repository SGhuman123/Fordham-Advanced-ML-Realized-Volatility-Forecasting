function window_check(phase)
%WINDOW_CHECK Complete-window vs partial-window evaluation of the saved forecasts.
%   window_check('test')   locked test, main design (default)
%   window_check('dev')    development period
%
%   The main design scores a multi-day target that averages the observed days
%   of its window, if at least 80% of them are observed (cfg.maxMissFrac). This
%   re-scores the same saved forecasts on two samples:
%     partial   every origin the main design scores (reproduces loss_*.csv)
%     complete  only origins whose whole target window t+1..t+h is observed
%   and reports, per target, horizon and forecast: n, QLIKE and MSE ratios vs
%   HAR, the one-sided DM p-value vs HAR, the 10% QLIKE MCS, and the Holm
%   adjustment over all EN / RF forecasts of that sample. It also counts the
%   observed days in each retained window. Nothing is re-estimated.
%
%   Writes Output/tables/<phase>/main/window_check.csv and window_counts.csv.

if nargin < 1, phase = 'test'; end
phase = char(phase);
cfg = rv_config();
P   = load_panel(cfg);
outDir = fullfile(cfg.outDir, 'tables', phase, 'main');

T = table();  C = table();
for target = {'SPY','ES'}
    for h = cfg.horizons
        [A, Dz] = load_forecasts(target{1}, h, phase, 'main', P, cfg);
        % observed days in the target window t+1..t+h of each origin
        obs  = double(~isnan(Dz.rv));
        nObs = movsum(obs, [0 h-1]);  nObs = [nObs(2:end); 0];
        [~, loc] = ismember(A.dates, Dz.dates);
        nObs = nObs(loc);

        partial  = all(~isnan(A.F), 2) & ~isnan(A.y);
        complete = partial & nObs == h;
        for s = {'partial', partial; 'complete', complete}'
            Ts = score(A, s{2}, h, cfg);
            Ts = [table(repmat(string(target{1}), height(Ts), 1), repmat(h, height(Ts), 1), ...
                repmat(string(s{1}), height(Ts), 1), 'VariableNames', {'target','h','sample'}), Ts]; %#ok<AGROW>
            T = [T; Ts]; %#ok<AGROW>
        end
        check_main(T(T.target == target{1} & T.h == h & T.sample == "partial", :), outDir, target{1}, h);

        days = unique(nObs(partial));
        C = [C; table(repmat(string(target{1}), numel(days), 1), repmat(h, numel(days), 1), days, ...
            arrayfun(@(d) sum(nObs(partial) == d), days), ...
            'VariableNames', {'target','h','observed_days','origins'})]; %#ok<AGROW>
    end
end

% Holm over the EN / RF forecasts of each sample (48 tests each on the test period)
T.holm_all_QLIKE = NaN(height(T), 1);
for s = ["partial", "complete"]
    k = T.sample == s & ismember(extractBefore(T.forecast, "_"), ["EN","RF"]);
    T.holm_all_QLIKE(k) = holm_adjust(T.p1_QLIKE(k));
end
writetable(T, fullfile(outDir, 'window_check.csv'));
writetable(C, fullfile(outDir, 'window_counts.csv'));
fprintf('window_check: %d rows -> %s\n', height(T), outDir);
end

function T = score(A, rows, h, cfg)
% the loss, DM and MCS steps of evaluate_phase's loss_table, on the given rows
y = A.y(rows);  F = A.F(rows, :);
LQ = qlike(y, F);  LM = (y - F).^2;
iH = find(strcmp(A.keys, 'HAR_A'));
bl = max(h, floor(sqrt(sum(rows))));
[inQ, ~] = mcs(LQ, cfg.mcs.alpha, cfg.mcs.B, bl, cfg.seed + h);
m = numel(A.keys);
p1 = NaN(m, 1);
for i = setdiff(1:m, iH)
    [~, ~, p1(i)] = dm_test(LQ(:,iH) - LQ(:,i), h);
end
T = table(string(A.keys'), repmat(sum(rows), m, 1), mean(LQ)', (mean(LQ) / mean(LQ(:,iH)))', ...
    (mean(LM) / mean(LM(:,iH)))', p1, inQ', ...
    'VariableNames', {'forecast','n','QLIKE','QLIKE_ratio','MSE_ratio','p1_QLIKE','inMCS_QLIKE'});
end

function check_main(Tp, outDir, target, h)
% the partial-window sample is the main design: it must reproduce loss_*.csv
f = fullfile(outDir, sprintf('loss_%s_h%d.csv', target, h));
if ~isfile(f), return; end
L = readtable(f, 'TextType', 'string');
[ok, k] = ismember(L.model + "_" + L.set, Tp.forecast);
if ~all(ok) || any(abs(L.QLIKE - Tp.QLIKE(k)) > 1e-10) || any(L.n ~= Tp.n(k)) ...
        || any(abs(L.p1_QLIKE - Tp.p1_QLIKE(k)) > 1e-10 & ~isnan(L.p1_QLIKE)) ...
        || any(L.inMCS_QLIKE ~= Tp.inMCS_QLIKE(k))
    warning('window_check: %s h=%d partial-window results do not match loss_*.csv', target, h);
end
end
