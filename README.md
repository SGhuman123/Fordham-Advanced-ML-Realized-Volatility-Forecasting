# Forecasting S&P 500 Realized Volatility

Fordham MSQF · Advanced Machine Learning (QFGB-890H-001) · Fall 2026 · Team: James, Robin and Aryan

This project compares HAR, elastic net and random-forest forecasts of S&P 500 realized variance at 1-, 5- and 22-trading-day horizons. It uses SPY realized variance (Risk Lab, main target) and E-mini S&P 500 futures realized variance (VOLARE ES, second target), with four nested feature sets: A, the HAR lags; B, adding market and implied-vol inputs; C, adding macro/stress inputs; and D, adding ES jump and semivariance measures. Naive Persistence and the VIX² variance-swap strike are the benchmarks. It implements [proposal v5.4](Realize%20Volatility%20Data/RV_Forecasting_Proposal_v5.4.pdf) in full.

The design is an annual expanding-window walk-forward, with tuning on the last two years of each training window. Inputs are checked with ADF/KPSS tests and fractionally differenced inside each window where needed. The primary loss is QLIKE, alongside MSE, MAE and out-of-sample R². Significance comes from Diebold–Mariano tests and the Model Confidence Set, plus regime, utility and variance-swap checks and eleven robustness scenarios.

## Status and headline results

The design was frozen on the development period (2005–2017; git tag `design-freeze`), and the **locked 2018 – October 2026 test was then run once**, as the proposal prescribes. The full write-up is [Report/RV_Forecasting_Report.pdf](Report/RV_Forecasting_Report.pdf) (also `.docx`; source `.md`).

On the locked test:

- **SPY, 1 and 5 days:** the random forest on market features cuts QLIKE by 12–15% against HAR. The gain is significant, and the forest stays in the Model Confidence Set, so the proposal's success criterion is met.
- **SPY, 22 days, and every ES horizon:** no model significantly beats HAR. The ES forests, trained only on post-2009 data, fail in the 2020 COVID spike.
- **HAR vs Persistence:** HAR beats naive Persistence at every horizon for both targets.
- **RQ1:** with volatility history alone (set A), neither ML model beats HAR.
- **RQ2:** the forest gains significantly more than the elastic net from richer features at 1 and 5 days.
- **RQ3:** the ES target does not align better with the variance-swap payoff.

## Requirements

- MATLAB R2026a with the Statistics and Machine Learning Toolbox (the Parallel Computing and Econometrics toolboxes are not needed)
- `zsh` for the parallel runner; set `MATLAB=/path/to/matlab` if MATLAB is not in `/Applications`
- To rebuild the report: Python 3 and pandoc, plus xelatex for the PDF

## Run the project

From the repository root:

```sh
Code/run_parallel.sh dev all      # development period: main design + all robustness scenarios
Code/run_parallel.sh test all     # locked test (cfg.runLockedTest in Code/rv_config.m must be true)
Code/run_parallel.sh dev main     # one scenario only (main, rolling, rv15, qmle, strict, rv1, rk, holdrop, oxford, vix1996, rfdefault, ffdlags)
python3 Report/build_report.py    # rebuild the report (.docx and .pdf)
```

For a serial run inside MATLAB, run `Code/main.m`. Results go to `Output/forecasts/<phase>/<scenario>/` and `Output/tables/<phase>/<scenario>/`, with one readable `summary.md` per scenario. The modelling dataset and feature dictionary go to `Output/data/`, and logs to `Output/logs/`.

## Repository map

| Path | Contents |
|---|---|
| [`Code/`](Code/) | The MATLAB pipeline, organised by stage: `data/`, `stationarity/`, `models/`, `evaluation/`; see [`Code/README.md`](Code/README.md) |
| [`Realize Volatility Data/`](Realize%20Volatility%20Data/) | Input datasets, proposal v5.4 (PDF and Word), data description, data dictionary and QC reports |
| [`Output/`](Output/) | Cached panel, modelling dataset, forecasts, tables, audits and logs |
| [`Report/`](Report/) | Final report (Markdown source, `.docx`, `.pdf`), figures and builder |
| [`docs/Project_Guide.md`](docs/Project_Guide.md) | Plain-language guide to the concepts, design, code and results, with an FAQ |
| [`Research Papers/`](Research%20Papers/) | The reference papers |
| [`agents/`](agents/) | Notes for coding agents working on this repository |

## Team

| Member | Lead responsibility | Pipeline stage |
|---|---|---|
| Robin | Targets, feature alignment and publication lags, data dictionary, QC | `Code/data/` |
| James | Persistence and HAR, walk-forward engine, DM tests and MCS | `Code/models/`, `Code/evaluation/` |
| Aryan | Elastic net and random forest, tuning, coefficients and feature importance | `Code/models/`, `Code/evaluation/explain_rf.m` |
| All | Stationarity, utility and variance-swap checks, report and presentation | `Code/stationarity/`, `Report/` |

## Research and data use

This is an academic research project. Review each source's terms before redistributing any input data. Coverage, missing observations, publication timing and the data-treatment decisions are described in the data documentation and the report; keep those caveats in mind when interpreting results.
