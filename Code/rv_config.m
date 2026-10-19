function cfg = rv_config()
%RV_CONFIG Settings for "Forecasting S&P 500 Realized Volatility" (proposal v5.4).
%   Every script reads its settings from here, so the design can be frozen in
%   one place before the locked test is run.

here = fileparts(mfilename('fullpath'));
cfg.root    = fileparts(here);
cfg.dataDir = fullfile(cfg.root, 'Realize Volatility Data');
cfg.outDir  = fullfile(cfg.root, 'Output');

cfg.horizons = [1 5 22];
cfg.scale    = 1e4;        % variances are held as daily %^2 (decimal variance x 1e4)

% Sample design (Sections 3.1 and 5)
cfg.spyStart      = datetime(2005,1,1);   % SPY target, sets A-C
cfg.esStart       = datetime(2010,1,1);   % ES target and feature set D
cfg.devLastYear   = 2017;
cfg.testYears     = 2018:2026;            % locked test, 2 Jan 2018 - Oct 2026
cfg.tuneYears     = 2;                    % tune on the last two training years
cfg.minTrainYears = 5;                    % development forecasts once the window holds 5 years (v5.4 5)
cfg.rollYears     = struct('SPY', 10, 'ES', 8);   % rolling-window robustness

% Data-integrity rules (Section 3.2)
cfg.maxMissFrac = 0.20;    % a multi-day target is dropped if >20% of its window is missing
cfg.lagMinFrac  = 0.80;    % weekly / monthly averages need >=80% of the window observed
cfg.minFeatureYears = 3;   % a late-starting feature (VVIX, VIX9D) enters once it has 3 years of training history

% Stationarity and fractional differencing (proposal v5.4, 4.3). Every input
% except the raw HAR lags and the calendar flags is tested; an input enters the
% ML models as FFD with d* = the smallest grid value whose FFD series passes
% ADF at 95% on the training window (d* = 0 leaves it unchanged). tau and the
% grid are fixed in advance.
cfg.ffd.grid  = 0:0.05:1;
cfg.ffd.tau   = 1e-3;       % weight threshold: windows of at most ~70 sessions
cfg.ffd.skip  = {'early_close_next','gap_days_next'};   % deterministic calendar flags

% Elastic net (Section 4.6): alpha grid x lambda path, chosen on validation QLIKE.
% alpha = 0 is ridge (solved in closed form), alpha = 1 is the lasso.
cfg.en.alphas    = [0 0.1 0.25 0.5 0.75 0.9 1];
cfg.en.numLambda = 50;

% Random forest (Section 4.5): bayesopt over leaf size and features per split
cfg.rf.nTreesTune = 100;
cfg.rf.nTrees     = 300;
cfg.rf.maxEvals   = 12;
cfg.rf.maxLeaf    = 200;
cfg.rf.useDefaults = false; % true: Breiman defaults (robustness scenario 'rfdefault')

% Evaluation (Section 6)
cfg.mcs.alpha   = 0.10;
cfg.mcs.B       = 5000;    % moving-block bootstrap, block length floor(sqrt(T)) (Kilic, 2026)
cfg.regimePct   = 80;      % "high-RV" = monthly RV lag above its 2005-2017 80th percentile
cfg.econ.SR     = 0.4;     % Bollerslev et al. (2018) vol-targeting utility
cfg.econ.gamma  = 2;

cfg.seed = 20261014;

% The 2018-2026 block is evaluated once, after every design choice is frozen.
% Set this to true only when the team agrees the development settings are final.
cfg.runLockedTest = false;
end
