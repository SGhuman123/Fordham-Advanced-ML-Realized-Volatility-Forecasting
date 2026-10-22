%MAIN Regenerate every development-period table from the cleaned inputs (serial),
%   following proposal v5.4.
%   For speed, run_parallel.sh does the same with one MATLAB process per
%   target x horizon. The locked 2018-2026 test runs only after the design is
%   frozen: set cfg.runLockedTest = true in rv_config.m, then use phase 'test'.

addpath(genpath(fileparts(mfilename('fullpath'))));
cfg   = rv_config();
phase = 'dev';

% Main design: HAR on set A; elastic net and random forest on sets A-D
for target = {'SPY', 'ES'}
    for h = cfg.horizons
        run_job(target{1}, h, phase, 'main');
    end
end
evaluate_phase(phase, 'main');
explain_rf('SPY', 22, 'D', phase);
explain_rf('ES',  22, 'D', phase);
long_memory(phase);
stationarity(phase);
data_audit;
export_design;

% Robustness checks (Section 6)
robust = {'rolling', {'SPY','ES'}; 'rv15', {'SPY'}; 'qmle', {'SPY'}; 'strict', {'SPY'}; 'rv1', {'ES'}; ...
          'rk', {'ES'}; 'holdrop', {'ES'}; 'oxford', {'SPY'}; 'vix1996', {'SPY'}; 'rfdefault', {'SPY','ES'}; 'ffdlags', {'SPY','ES'}};
for r = 1:size(robust, 1)
    for target = robust{r, 2}
        for h = cfg.horizons
            run_job(target{1}, h, phase, robust{r, 1});
        end
    end
    evaluate_phase(phase, robust{r, 1});
end
