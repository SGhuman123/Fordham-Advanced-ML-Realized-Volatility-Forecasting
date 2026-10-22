function export_design()
%EXPORT_DESIGN Write the modelling dataset that build_design hands to the models.
%   For each target (SPY, ES), one row per forecast origin from the sample start:
%     date, origin_ok (the HAR lags are observed), y_h1, y_h5, y_h22 (eq. 2),
%     and every feature of sets A-D, aligned on the NYSE calendar with
%     publication lags applied (proposal 3.2 and 5).
%   Values are before the per-fold FFD transform and imputation, which are
%   learned inside each training window (walk_forward.m).
%   Output: Output/data/design_SPY.csv, design_ES.csv and feature_dictionary.csv
%   (group, set membership, source, publication shift, first date, missing count).

cfg = rv_config();
P   = load_panel(cfg);
outDir = fullfile(cfg.outDir, 'data');
if ~isfolder(outDir), mkdir(outDir); end

dict = table();
for target = {'SPY', 'ES'}
    spec = make_spec(target{1}, 'main');
    Dz   = build_design(P, spec, cfg);
    start = sample_start(spec, 'A', cfg);
    rows  = Dz.dates >= start & (1:numel(Dz.dates))' <= Dz.lastValid;
    cols  = set_columns(Dz, 'D');

    T = table(Dz.dates(rows), 'VariableNames', {'date'});
    T.origin_ok = all(~isnan(Dz.X(rows, strcmp(Dz.group, 'A'))), 2);
    for k = 1:numel(cfg.horizons)
        T.(sprintf('y_h%d', cfg.horizons(k))) = Dz.Y(rows, k);
    end
    X = Dz.X(rows, cols);
    T = [T, array2table(X, 'VariableNames', Dz.names(cols))]; %#ok<AGROW>
    writetable(T, fullfile(outDir, sprintf('design_%s.csv', target{1})));

    names = Dz.names(cols)';  grp = Dz.group(cols)';
    first = NaT(numel(names), 1);
    for j = 1:numel(names)
        i = find(~isnan(X(:, j)), 1);
        if ~isempty(i), first(j) = T.date(i); end
    end
    inSet = @(s) ismember(names, Dz.names(set_columns(Dz, s)));
    dict = [dict; table(repmat(string(target{1}), numel(names), 1), string(names), string(grp), ...
        string(Dz.source(cols)'), Dz.shift(cols)', first, sum(isnan(X), 1)', ...
        inSet('A'), inSet('B'), inSet('C'), inSet('D'), ...
        'VariableNames', {'target','feature','group','source','shift_sessions','first_date', ...
        'n_missing_from_start','in_A','in_B','in_C','in_D'})]; %#ok<AGROW>
    fprintf('export_design: %s, %d origins, %d features\n', target{1}, height(T), numel(names));
end
writetable(dict, fullfile(outDir, 'feature_dictionary.csv'));
fprintf('export_design: wrote %s\n', outDir);
end
