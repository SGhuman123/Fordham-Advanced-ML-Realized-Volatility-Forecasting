# Code: Forecasting S&P 500 Realized Volatility (proposal v5.4)

MATLAB R2026a with the Statistics and Machine Learning Toolbox. Inputs are read
from `../Realize Volatility Data`; outputs go to `../Output`. The write-up,
including methodology, results and a line-by-line compliance check against the
proposal, is `../Report/RV_Forecasting_Report.docx` (source: the `.md` file next
to it; rebuild with `python3 ../Report/build_report.py`).

There is one pipeline. Every target, feature, model and table comes from the
same code path, and the folders follow the stages of the proposal's Figure 1.

## Running it

```sh
./run_parallel.sh dev all      # development: main design + every robustness scenario (~1 h on 14 cores)
./run_parallel.sh test all     # locked test: the same, on 2018 - Oct 2026 (needs cfg.runLockedTest = true)
./run_parallel.sh dev main     # main design only; any scenario name works in place of main
```
or, inside MATLAB, `main` (serial: the same steps for the development period, slower).
Tables and a `summary.md` per scenario land in `Output/tables/<phase>/<scenario>/`.
`JOBS=n` sets how many MATLAB processes run at once (default 7).

**The locked test.** `rv_config.m` holds `cfg.runLockedTest`; `run_job(..., 'test')`
refuses to run while it is `false`. Following proposal Section 5, the design was
frozen on the development results (git tag `design-freeze`) and the test was then
run once. Anything changed after that is exploratory.

## Layout

| Stage | Folder / file | What it does |
|---|---|---|
| Settings | `rv_config.m` | Horizons, sample dates, tuning grids, MCS settings, test lock |
| Drivers | `run_parallel.sh`, `main.m`, `run_job.m` | Parallel / serial runners; one job = one target x horizon x scenario, every model and set |
| 1. Data | `data/load_panel.m` | Puts every file on the NYSE calendar. RV is held as daily %^2. ES Globex holiday rows are added to the next NYSE session. Cached as `Output/panel.mat` |
| | `data/build_design.m` | Targets RV_{t+1:t+h}: never filled, dropped if >20% of the window is missing. Feature groups A-D with publication lags (and robustness groups O, V, L); records each feature's source and shift |
| | `data/set_columns.m`, `data/sample_start.m`, `data/make_spec.m` | A = HAR lags; B = A + market; C = B + macro/stress; D = C + ES measures. `make_spec` defines the robustness scenarios |
| | `data/export_design.m` | Writes the modelling dataset (`Output/data/design_SPY.csv`, `design_ES.csv`) and `feature_dictionary.csv` |
| | `data/data_audit.m` | Missing-data counts and test-origin table of proposal 3.2; Risk Lab vs Oxford-Man target cross-check |
| | `data/ffill_limit.m`, `rollmean.m`, `lagk.m` | Helpers: bounded last-value carry, rolling means with a coverage rule, publication lags |
| 2. Stationarity | `stationarity/adf_test.m`, `kpss_test.m` | ADF and KPSS coded directly (the Econometrics Toolbox is not needed) |
| | `stationarity/ffd.m`, `ffd_choose.m` | Fixed-width fractional differencing; smallest d on the grid that passes ADF at 95% |
| | `stationarity/stationarity.m`, `long_memory.m` | Diagnostics table on the development sample; local Whittle, Bhatti's d_LTM and memory left in forecast errors |
| 3. Models | `models/walk_forward.m` | After each year-end: train on past origins whose target window has ended (label gap), tune on the last two training years, forecast the next year. Development forecasts start once the window holds 5 years (SPY 2010, ES 2015). Inputs other than the raw HAR lags and calendar flags enter the ML models as FFD with d* chosen on the training window |
| | `models/fit_persistence.m`, `fit_har.m`, `fit_en.m`, `fit_rf.m` | Persistence (latest h-day average, not estimated); OLS HAR; elastic net (alpha in {0, 0.1, ..., 1} x 50-point lambda path, ridge in closed form); random forest (`TreeBagger`, `bayesopt` on leaf size and features per split). Tuning criterion: validation QLIKE. Linear forecasts are floored at the training minimum of daily RV |
| 4. Evaluation | `evaluation/evaluate_phase.m` | MSE, QLIKE, MAE, OOS R^2, floor frequency; DM vs HAR and Persistence; MCS; RQ1 and RQ2 tables; regimes, extreme days and stress episodes; utility; variance swap; success criterion; EN coefficients, RF importance, HAR coefficients, FFD orders |
| | `evaluation/dm_test.m`, `mcs.m`, `qlike.m` | Diebold-Mariano (Newey-West + HLN); Model Confidence Set (T_max, block bootstrap); QLIKE |
| | `evaluation/explain_rf.m` | Shapley values and ALE for the last-fold random forest |
| | `evaluation/report_figures.m` | Pipeline and walk-forward diagrams for the report |

## Robustness scenarios (`data/make_spec.m`)

| Scenario | Target(s) | What changes |
|---|---|---|
| `rolling` | SPY, ES | 10-year (SPY) or 8-year (ES) rolling window |
| `rv15`, `qmle` | SPY | Target and lags from Risk Lab 15-minute RV or QMLE |
| `strict` | SPY | Strict missing-day rule: any origin whose target or 22-day lag window touches a missing Risk Lab day is dropped (instead of the 80% / 20% rules) |
| `rv1`, `rk` | ES | Target and lags from ES 1-minute RV or the realized kernel |
| `holdrop` | ES | Globex holiday rows dropped instead of merged |
| `oxford` | SPY | Set C + Oxford-Man jump / semivariance features (to Feb 2022) |
| `vix1996` | SPY | HAR lags + log VIX, sample from 1996 |
| `rfdefault` | SPY, ES | Random forest with untuned Breiman defaults (500 trees, leaf 5, p/3) |
| `ffdlags` | SPY, ES | The ML lag block is replaced by FFD log RV (proposal 4.3 robustness); Persistence and HAR stay on raw lags |

Every implementation choice the proposal leaves open is listed in Section 11 of the report.
