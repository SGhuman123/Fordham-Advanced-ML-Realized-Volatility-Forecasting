# Forecasting S&P 500 Realized Volatility

This project compares HAR, elastic net, and random-forest forecasts of S&P 500 realized variance. It studies 1-, 5-, and 22-trading-day horizons using SPY realized variance and E-mini S&P 500 (ES) realized variance, with nested market, macro/stress, and futures-feature sets.

The implementation uses an annual walk-forward evaluation. Models are tuned on the last two years of each training window, and forecasts are assessed primarily with QLIKE, alongside MSE, MAE, out-of-sample $R^2$, Diebold-Mariano tests, and Model Confidence Sets. The project also evaluates robustness scenarios and includes stationarity, fractional-differencing, long-memory, and data-quality analyses.

## Project status

The checked-in report describes development-period results through 2017. The 2018–2026 test period is intentionally locked and has not been run. Do not unlock it until the team has frozen and agreed on all design choices; the guard is `cfg.runLockedTest` in [`Code/rv_config.m`](Code/rv_config.m).

## Requirements

- MATLAB R2026a
- MATLAB Statistics and Machine Learning Toolbox
- `zsh` to use the parallel shell runner
- The project input files in [`Realize Volatility Data/`](Realize%20Volatility%20Data/)

The shell runner launches separate MATLAB processes for target/horizon jobs and does not require Parallel Computing Toolbox. Its default MATLAB executable path is configured for macOS; set `MATLAB` to your local executable path on other systems.

## Run the project

From the repository root, run the main development design:

```sh
MATLAB=/path/to/matlab Code/run_parallel.sh dev
```

Run all robustness scenarios:

```sh
MATLAB=/path/to/matlab Code/run_parallel.sh dev robustness
```

To run one scenario, replace `robustness` with a scenario name such as `rolling`, `rv15`, `holdrop`, or `ffdlags`. For a serial run in MATLAB, add `Code/` to the MATLAB path and run `main`. The full pipeline can take several minutes for the main design and substantially longer for all robustness cases.

Results are written beneath `Output/forecasts/`, `Output/tables/`, and `Output/logs/`; the panel cache is `Output/panel.mat`. The development summary for a scenario is written to `Output/tables/dev/<scenario>/summary.md`.

The locked test runner is `Code/run_parallel.sh test`, but it refuses to run unless `cfg.runLockedTest` is explicitly enabled. Only change that setting after the design has been finalized.

## Repository map

| Path | Contents |
|---|---|
| [`Code/`](Code/) | MATLAB forecasting pipeline, model fitting, evaluation, diagnostics, and runner documentation |
| [`Realize Volatility Data/`](Realize%20Volatility%20Data/) | Input datasets, data dictionary, coverage notes, and quality-control reports |
| [`Output/`](Output/) | Cached panel, forecasts, logs, tables, and audit outputs |
| [`Report/`](Report/) | Research report source, report builder, and figures |
| [`Research Papers/`](Research%20Papers/) | Reference research papers |
| [`agents/`](agents/) | Design notes for project-specific coding agents |

For the detailed pipeline, feature sets, robustness scenarios, and output descriptions, see [`Code/README.md`](Code/README.md). Data definitions and source limitations are documented in [`Realize Volatility Data/DATA_DICTIONARY.md`](Realize%20Volatility%20Data/DATA_DICTIONARY.md) and [`Realize Volatility Data/QC_REPORT.md`](Realize%20Volatility%20Data/QC_REPORT.md). The report source is [`Report/RV_Forecasting_Report.md`](Report/RV_Forecasting_Report.md).

## Research and data use

This is an academic research project. Review the source terms and the project data notes before redistributing any input data. Dataset coverage, missing observations, publication timing, and provisional data-treatment decisions are described in the data documentation and report; preserve those caveats when interpreting results.