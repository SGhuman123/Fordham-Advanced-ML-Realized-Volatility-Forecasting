function [A, Dz, spec] = load_forecasts(target, h, phase, scenario, P, cfg)
%LOAD_FORECASTS Saved walk-forward forecasts for one target and horizon, aligned by date.
%   Same alignment as evaluate_phase: A.keys (model_set, Persistence and HAR
%   first), A.dates, A.y (target), A.F (one forecast column per key). Also
%   returns the design (Dz) rebuilt from the panel with the saved spec, so
%   callers can look up the target series. Reads files only; nothing is
%   re-estimated.
S = load(fullfile(cfg.outDir, 'forecasts', phase, scenario, sprintf('%s_h%d.mat', target, h)));
R = S.R;  spec = S.spec;
Dz = build_design(P, spec, cfg);

keys = fieldnames(R)';
order = {'PER_A','HAR_A','EN_A','RF_A','EN_B','RF_B','EN_C','RF_C','EN_D','RF_D'};
[~, o] = sort(cellfun(@(k) find([strcmp(order, k), true], 1), keys));
keys = keys(o);
dates = [];
for k = keys, dates = [dates; R.(k{1}).fc.date]; end %#ok<AGROW>
dates = unique(dates);
A.keys = keys;  A.dates = dates;
A.y = NaN(numel(dates), 1);  A.F = NaN(numel(dates), numel(keys));
for i = 1:numel(keys)
    fc = R.(keys{i}).fc;
    [~, loc] = ismember(fc.date, dates);
    A.F(loc, i) = fc.f;
    A.y(loc)    = fc.y;
end
end
