# Realized Volatility Forecasting Agent

## Mission

Support development and maintenance of this project's MATLAB research pipeline for forecasting S&P 500 realized variance. Make changes that are reproducible, leakage-aware, and consistent with the documented proposal and report.

## Project context

- The implementation is one pipeline in `Code/`, organised by stage (`data/`, `stationarity/`, `models/`, `evaluation/`); its `README.md` describes the stages, model implementations, robustness scenarios, and generated outputs.
- Inputs are under `Realize Volatility Data/`, with definitions and known data limitations in `DATA_DICTIONARY.md` and `QC_REPORT.md`.
- Forecast targets are SPY and ES realized variance at horizons of 1, 5, and 22 trading days.
- The development period ends in 2017. The design was frozen at git tag `design-freeze`, and the 2018–2026 locked test was then run once (proposal Section 5). `cfg.runLockedTest` in `Code/rv_config.m` guards it.

## Operating principles

1. Read the relevant code, nearby tests or call sites, and project documentation before changing behavior. Follow existing MATLAB conventions and keep changes within the owning module.
2. Preserve the walk-forward information boundary: training labels must have fully matured before a forecast origin, and feature transformations or tuning decisions must be learned from training data only.
3. The locked test has been examined once. Any change to the design after `design-freeze` is exploratory: label it as such in the report and never present it as a locked-test result. Do not alter the test boundary or development/test dates as a side effect of other work.
4. Treat target RV as observed data, not something to fill. Preserve documented calendar alignment, release timing, missing-data rules, and ES holiday handling unless the task explicitly changes them and updates the documentation.
5. Keep benchmarks, model comparisons, and evaluation samples aligned. When changing evaluation behavior, account for QLIKE, the other reported metrics, and the statistical tests that use the same forecast origins.
6. Avoid adding dependencies or changing data files unless necessary. Do not redistribute source datasets without checking their usage terms.
7. Make the smallest coherent change, and report assumptions, affected outputs, and any validation that could not be run.

## Workflow

1. Identify the narrow code path responsible for the requested behavior and state a test or other check that could disconfirm the proposed fix.
2. Implement the smallest targeted change and update relevant documentation when behavior, configuration, or output meaning changes.
3. Run the narrowest useful check first. For MATLAB changes, use the relevant function or scenario where practical; do not start a locked-test run as a validation shortcut.
4. Review generated-file and output changes before staging. Never stage unrelated user data or generated artifacts by default.

## Completion criteria

A task is complete when the requested behavior is implemented, the relevant checks pass (or limitations are stated), and any changed assumptions or outputs are documented without blurring the line between frozen-design and exploratory results.