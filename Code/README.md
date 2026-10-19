# Code: Forecasting S&P 500 Realized Volatility (proposal v5.4)

MATLAB R2026a with the Statistics and Machine Learning Toolbox. Inputs are read
from `../Realize Volatility Data`; outputs go to `../Output`. The full write-up,
including methodology, results and a line-by-line compliance check against the
proposal, is `../Report/RV_Forecasting_Report.docx` (source: the `.md` file next
to it; rebuild with `python3 ../Report/build_report.py`).

## Running it

```sh
./run_parallel.sh dev               # main design: walk-forward, tables, Shapley/ALE, long memory,
                                    # stationarity diagnostics and the data audit (~15 min)
./run_parallel.sh dev robustness    # all ten robustness scenarios (~45 min)
```
or, inside MATLAB, `main` (serial: the same steps, slower). Tables and a
`summary.md` per scenario land in `Output/tables/<phase>/<scenario>/`.

**The locked test.** `rv_config.m` has `cfg.runLockedTest = false`, and
`run_job(..., 'test')` refuses to run until it is set to `true`. Freeze every
setting on the development results first, then run `./run_parallel.sh test`
once. Anything changed after that is exploratory (proposal, Section 5).

## Pipeline

| Step | File | What it does |
|---|---|---|
| Settings | `rv_config.m` | Horizons, sample dates, tuning grids, MCS settings, test lock |
| Data | `load_panel.m` | Puts every file on the NYSE calendar. RV is held as daily %^2. ES Globex holiday rows are added to the next NYSE session. Cached as `Output/panel.mat` |
| Targets and features | `build_design.m` | Targets RV_{t+1:t+h}: never filled, and dropped if >20% of the window is missing. Feature groups A-D with publication lags, plus robustness groups O and V |
| Sets and scenarios | `set_columns.m`, `sample_start.m`, `make_spec.m` | A = HAR lags; B = A + market; C = B + macro/stress; D = C + ES measures. `make_spec` defines the robustness scenarios |
| Walk-forward | `walk_forward.m` | After each year-end: train on past origins whose target window has ended (label gap), tune on the last two training years, forecast the next year. Development forecasts start once the window holds 5 years (SPY 2010, ES 2015). Every input except the raw HAR lags and calendar flags enters the ML models as FFD with d* chosen on the training window (smallest grid value passing ADF at 95%). Late-starting features enter after 3 years of history. Linear forecasts are floored at the training-window minimum of daily RV |
| Models | `fit_persistence.m`, `fit_har.m`, `fit_en.m`, `fit_rf.m` | Persistence: the latest h-day average of RV (not estimated). OLS HAR. Elastic net: alpha in {0 (ridge, closed form), 0.1, ..., 1} x a 50-point lambda path. Random forest: `TreeBagger`, `bayesopt` on leaf size and features per split; optional Breiman defaults. Tuning criterion is validation QLIKE |
| Jobs | `run_job.m` | One target x horizon, every model and set |
| Evaluation | `evaluate_phase.m`, `dm_test.m`, `mcs.m`, `qlike.m` | MSE, QLIKE, MAE, OOS R^2, floor frequency. DM (Newey-West + HLN); MCS (T_max, block bootstrap). RQ1 and RQ2 tables; regimes, extreme days and episodes; utility; variance swap; success criterion; EN coefficients and RF importance |
| Explanation | `explain_rf.m` | Shapley values and ALE for the last-fold random forest |
| Stationarity and FFD | `adf_test.m`, `kpss_test.m`, `ffd.m`, `ffd_choose.m`, `stationarity.m` | ADF and KPSS coded directly (the Econometrics Toolbox's `adftest`/`kpsstest` are not installed); fixed-width fractional differencing; d* search; diagnostics table |
| Long memory | `long_memory.m` | Local Whittle, Bhatti's d_LTM and ACF-tail d of RV, and memory left in forecast errors (with Ljung-Box) |
| Data audit | `data_audit.m` | Reproduces the missing-data counts and test-origin table of proposal 3.2 |
| Report figures | `report_figures.m` | Pipeline and walk-forward diagrams for the report |

## Robustness scenarios (`make_spec.m`)

| Scenario | Target(s) | What changes |
|---|---|---|
| `rolling` | SPY, ES | 10-year (SPY) or 8-year (ES) rolling window |
| `rv15`, `qmle` | SPY | Target and lags from Risk Lab 15-minute RV or QMLE |
| `rv1`, `rk` | ES | Target and lags from ES 1-minute RV or the realized kernel |
| `holdrop` | ES | Globex holiday rows dropped instead of merged |
| `oxford` | SPY | Set C + Oxford-Man jump / semivariance features from 2005 |
| `vix1996` | SPY | HAR lags + log VIX, sample from 1996 |
| `rfdefault` | SPY, ES | Random forest with untuned Breiman defaults (500 trees, leaf 5, p/3) |
| `ffdlags` | SPY, ES | The ML lag block is replaced by FFD log RV (proposal 4.3 robustness); Persistence and HAR stay on raw lags |

Every implementation choice the proposal leaves open is listed in Section 6.3 of the report.
