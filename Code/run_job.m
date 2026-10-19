function run_job(target, h, phase, scenario)
%RUN_JOB Walk-forward forecasts for one target and horizon, every model and set.
%   run_job('SPY', 22, 'dev')              development pseudo-OOS, main design
%   run_job('ES', 1, 'dev', 'rolling')     a robustness scenario (see make_spec)
%   run_job('SPY', 5, 'test')              locked 2018-2026 test (needs
%                                          cfg.runLockedTest = true)
%   Persistence and HAR use set A only; the elastic net and random forest every set.
%   Output: Output/forecasts/<phase>/<scenario>/<target>_h<h>.mat

if nargin < 4, scenario = 'main'; end
cfg = rv_config();
if strcmp(phase, 'test') && ~cfg.runLockedTest
    error(['run_job: the 2018-2026 test is locked. Freeze the design, then set ' ...
           'cfg.runLockedTest = true in rv_config.m.']);
end
maxNumCompThreads(2);

spec = make_spec(target, scenario);
cfg.rf.useDefaults = spec.rfDefault;
P    = load_panel(cfg);
Dz   = build_design(P, spec, cfg);

R = struct();
for s = spec.sets
    setName = s{1};
    years = phase_years(spec, setName, phase, cfg);
    models = {'EN','RF'};
    if spec.rfDefault, models = {'RF'}; end            % only the forest changes
    if strcmp(setName, 'A')
        if ~spec.mlOnA, models = {}; end
        models = [{'PER','HAR'}, models];              % Persistence and HAR live on set A
    end
    for m = models
        t0 = tic;
        [FC, folds] = walk_forward(Dz, setName, m{1}, h, years, cfg);
        R.([m{1} '_' setName]) = struct('fc', FC, 'folds', folds);
        fprintf('[%s %s %s h=%d] %-6s %d-%d  %5d forecasts  %6.1fs\n', phase, scenario, ...
            target, h, [m{1} '_' setName], years(1), years(end), height(FC), toc(t0));
    end
end

outDir = fullfile(cfg.outDir, 'forecasts', phase, scenario);
if ~isfolder(outDir), mkdir(outDir); end
save(fullfile(outDir, sprintf('%s_h%d.mat', target, h)), 'R', 'spec');
end

function years = phase_years(spec, setName, phase, cfg)
first = year(sample_start(spec, setName, cfg)) + cfg.minTrainYears;
switch phase
    case 'dev',  years = first:cfg.devLastYear;
    case 'test'
        years = cfg.testYears;
        if strcmp(setName, 'COM'), years = years(years <= 2021); end   % Oxford-Man ends Feb 2022
end
end
