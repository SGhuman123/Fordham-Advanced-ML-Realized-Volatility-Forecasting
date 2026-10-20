# Aryan's files

- `code/rv_har_pipeline.m`: standalone MATLAB pipeline covering data cleaning (NYSE calendar), h = 1/5/22 targets, HAR features, and walk-forward HAR vs Persistence (test period 2018 onward).
- `proposal/`: final proposal v5.4 (PDF and Word).
- `output/`: that script's outputs (forecasts, OOS summary, coefficients, missing sessions, calendar, log).

Note: this script uses the strict missing-day rule, which drops any origin whose lag, Persistence, or target window touches a missing day. The team pipeline uses the 80/20 rule, so the samples differ slightly.
