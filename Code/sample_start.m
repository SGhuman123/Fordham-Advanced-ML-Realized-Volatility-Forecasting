function d = sample_start(spec, setName, cfg)
%SAMPLE_START First origin date for a target / feature-set pair (Section 3.1).
%   SPY sets A-C start in January 2005; ES and set D start in January 2010.
if ~isempty(spec.startOverride)
    d = spec.startOverride;
elseif strcmp(spec.target, 'ES') || any(strcmp(setName, {'D','DL'}))
    d = cfg.esStart;
else
    d = cfg.spyStart;
end
end
