function spec = make_spec(target, scenario)
%MAKE_SPEC Target series, window and feature sets for the main run and each
%   robustness check of Section 6.
%
%   scenario   target  what changes
%   main       SPY/ES  sets A-D, expanding window
%   rolling    SPY/ES  10-year (SPY) / 8-year (ES) rolling window
%   rv15       SPY     target and lags from Risk Lab 15-minute RV
%   qmle       SPY     target and lags from Risk Lab QMLE
%   rv1        ES      target and lags from ES 1-minute RV
%   rk         ES      target and lags from ES realized kernel
%   holdrop    ES      ES Globex holiday rows dropped instead of merged
%   oxford     SPY     set C + Oxford-Man jump / semivariance features from 2005
%   vix1996    SPY     HAR lags + log VIX, sample from 1996
%   rfdefault  SPY/ES  random forest with untuned Breiman defaults (Christensen et al., 2023)
%   ffdlags    SPY/ES  ML lag block replaced by FFD log RV (proposal v5.4 4.3); HAR and
%                      Persistence stay on the raw lags

spec.target        = target;
spec.scenario      = scenario;
spec.variant       = 'rv5';
spec.esHoliday     = 'merge';
spec.window        = 'expanding';
spec.startOverride = [];
spec.rfDefault     = false;
spec.mlOnA         = true;     % EN and RF also run on set A
spec.sets          = {'A','B','C','D'};
robustSets         = {'A','C','D'};

switch scenario
    case 'main'
    case 'rolling'
        spec.window = 'rolling';  spec.sets = robustSets;
    case {'rv15','qmle'}
        assert(strcmp(target,'SPY'), '%s is a SPY-target check', scenario);
        spec.variant = scenario;  spec.sets = robustSets;
    case {'rv1','rk'}
        assert(strcmp(target,'ES'), '%s is an ES-target check', scenario);
        spec.variant = scenario;  spec.sets = robustSets;
    case 'holdrop'
        assert(strcmp(target,'ES'), 'holdrop is an ES-target check');
        spec.esHoliday = 'drop';  spec.sets = robustSets;
    case 'oxford'
        assert(strcmp(target,'SPY'), 'oxford is a SPY-target check');
        spec.sets = {'A','C','COM'};
    case 'ffdlags'
        spec.sets = {'A','AL','BL','CL','DL'};  spec.mlOnA = false;
    case 'rfdefault'
        spec.rfDefault = true;  spec.sets = robustSets;
    case 'vix1996'
        assert(strcmp(target,'SPY'), 'vix1996 is a SPY-target check');
        spec.startOverride = datetime(1996,3,1);   % first full month of HAR lags
        spec.sets = {'A','AV'};
    otherwise
        error('make_spec: unknown scenario %s', scenario);
end
end
