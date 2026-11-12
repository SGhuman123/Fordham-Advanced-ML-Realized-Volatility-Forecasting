function iv_glitch_check()
%IV_GLITCH_CHECK The one-day error in the 1-month tenor of the Bloomberg IV surface on 20 Sep 2022.
%   Prints the raw ATM implied vol by tenor around that day (iv_surface.mat, as
%   load_panel reads it) and re-scores the saved SPY h = 1 locked-test forecasts
%   with and without that origin: the headline RF C vs HAR result and the 2022
%   bear-market episode of Section 8.5. Reads files only.
%
%   Output: Output/tables/test/main/iv_glitch_check.csv

cfg = rv_config();
bad = datetime(2022, 9, 20);

% ---- raw surface: ATM IV by tenor, 15-23 Sep 2022 -------------------------------
S = load(fullfile(cfg.dataDir, 'iv_surface.mat'));
d = dateshift(S.ivDates, 'start', 'day');
iATM = find(abs(S.moneyness(:) - 1) < 1e-9);
r = find(d >= bad - 5 & d <= bad + 3);
fprintf('ATM implied vol (vol points), tenors in years %s\n', mat2str(S.tenorYrs(:)', 3));
for k = r', fprintf('  %s  %s\n', char(d(k), 'yyyy-MM-dd'), mat2str(100 * squeeze(S.IV(k, iATM, :))', 4)); end

% ---- saved forecasts, aligned on the all-model common days as in evaluate_phase --
F = load(fullfile(cfg.outDir, 'forecasts', 'test', 'main', 'SPY_h1.mat'));
keys = {'PER_A','HAR_A','EN_A','RF_A','EN_B','RF_B','EN_C','RF_C','EN_D','RF_D'};
dates = [];
for i = 1:numel(keys), dates = [dates; F.R.(keys{i}).fc.date]; end %#ok<AGROW>
dates = unique(dates);
X = NaN(numel(dates), numel(keys));  y = NaN(numel(dates), 1);
for i = 1:numel(keys)
    fc = F.R.(keys{i}).fc;  [~, loc] = ismember(fc.date, dates);
    X(loc, i) = fc.f;  y(loc) = fc.y;
end
rows = all(~isnan(X), 2) & ~isnan(y);
bear = dates >= datetime(2022,1,3) & dates <= datetime(2022,10,31);    % Section 8.5 window
iH = find(strcmp(keys, 'HAR_A'));

T = table();
for s = {'whole test', rows; 'whole test without 20 Sep 2022', rows & dates ~= bad; ...
         '2022 bear market', rows & bear; '2022 bear market without 20 Sep 2022', rows & bear & dates ~= bad}'
    L = qlike(y(s{2}), X(s{2}, :));
    for name = {'RF_C','RF_B','EN_B','EN_C'}
        i = find(strcmp(keys, name{1}));
        [~, ~, p1] = dm_test(L(:, iH) - L(:, i), 1);
        T = [T; table(string(s{1}), sum(s{2}), string(name{1}), mean(L(:, i)) / mean(L(:, iH)), p1, ...
            'VariableNames', {'sample','n','forecast','QLIKE_ratio_vs_HAR','p1_vs_HAR'})]; %#ok<AGROW>
    end
end
L = qlike(y(dates == bad), X(dates == bad, :));
fprintf('20 Sep 2022 alone: QLIKE HAR %.3f, RF C %.3f\n', L(iH), L(strcmp(keys, 'RF_C')));
disp(T);
writetable(T, fullfile(cfg.outDir, 'tables', 'test', 'main', 'iv_glitch_check.csv'));
end
