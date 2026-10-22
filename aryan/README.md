# Aryan's files

- `code/rv_har_pipeline.m`: standalone MATLAB pipeline covering data cleaning (NYSE calendar), h = 1/5/22 targets, HAR features, and walk-forward HAR vs Persistence. It reads the repository's `Realize Volatility Data/` folder and writes to `output/`. Run it from MATLAB with `run('aryan/code/rv_har_pipeline.m')`.
- `proposal/`: Word source of proposal v5.4 (the PDF is in `Realize Volatility Data/`).
- `output/`: that script's outputs (forecasts, development summary, coefficients, missing sessions, calendar, log).

**Rules.** The script uses the strict missing-day rule, which drops any origin whose lag, Persistence or target window touches a missing day, drops the ES holiday rows, and floors HAR at the training minimum of the target. The main pipeline uses the 80/20 rule, merges ES holiday rows into the next session and floors at the training minimum of daily RV, so the samples differ slightly. `Code/check_integration.m` compares the two; on development data the forecasts have correlations of 0.999–1.000.

**Test lock.** The script follows the team lock in `Code/rv_config.m`: while `cfg.runLockedTest` is false it fits and scores development years only, and its full-sample diagnostic uses only targets that end by 29 Dec 2017. An earlier version (on the `Aryan-dev` branch) also scored the 2018–2026 test period; those outputs were removed in the integration.
