# Data preparation (Robin)

This folder contains the data work assigned to Robin in the proposal (v5.4, Section 8), done by merging Robin's work with the existing codes. Each task is in its own file, and each file writes its results to `Output/Robin/`.

## Files

| Step | File | Task | Output in `Output/Robin/` |
|---|---|---|---|
| 1 | `robin_targets.m` | Forecast targets for SPY and ES | `targets.csv` |
| 2 | `robin_align_features.m` | Align every input with the NYSE calendar and apply publication lags | `features_aligned.csv`, `features_aligned_info.csv` |
| 3 | `robin_feature_sets.m` | Build the nested feature sets A–D for each target | `feature_sets_SPY.csv`, `feature_sets_ES.csv`, `feature_set_columns.csv` |

## How to run

Run the three steps in order from the repository root. Step 3 reads the output files of steps 1 and 2.

```matlab
addpath('Code/Robin')
robin_targets
robin_align_features
robin_feature_sets
```

## Step 1: Targets

- **SPY (main target).** Risk Lab reports annualized volatility σ. Daily variance is σ² / 252. The 15-minute RV and QMLE series are prepared in the same way for robustness checks.
- **ES (second target).** VOLARE rv5 is already a daily variance. The 1-minute RV and the realized kernel are included for robustness checks.
- **Horizons.** For h = 1, 5 and 22, column `y_<series>_h<h>` in row t is the average daily RV over sessions t+1 to t+h (proposal, eq. 2). This is the target of a forecast made at the close of day t.

## Step 2: Alignment and publication lags

Row t contains only values that are public at the close of NYSE day t.

| Input | Shift (sessions) | Treatment |
|---|---|---|
| VIX, VIX9D, SKEW, IV surface, S&P 500 returns and range, rates, VVIX, VXN, RVX | 0 | Known at the close of day t |
| ES measures (VOLARE) | 0 | Known at the Globex close, 17:00 ET on day t |
| EPU | 1 | Published the next morning |
| CISS | 2 | Published about one business day later |
| SF Fed news sentiment, classic GPR | 5 | Weekly updates |
| ADS | built in | Real-time vintage; before 8 Dec 2008, the current vintage lagged 5 sessions |
| NFCI, STLFSI4 | built in | Already placed on their release date in `features_daily.csv` |

`features_aligned_info.csv` lists the source, shift, fill limit, first date, last date and missing count of every column.

## Step 3: Feature sets

The sets are nested, so each set contains all columns of the set before it.

| Set | Number of features | Contents |
|---|---|---|
| A | 3 | HAR lags: daily, weekly (5-day) and monthly (22-day) RV |
| B | 22 | A + negative-return averages, Parkinson range, log VIX, IV surface, VRP, rates, VVIX, SKEW, VIX9D spread, VXN, RVX |
| C | 32 | B + ADS, EPU, news sentiment, GPR, CISS, NFCI, STLFSI4, Hang Seng, calendar flags |
| D | 46 | C + ES continuous and jump parts, ± semivariances, √quarticity × RV, realized kernel, overnight variance |

Each `feature_sets_<target>.csv` file contains:

- `date`: the forecast origin (an NYSE session);
- `origin_ok`: 1 if the daily, weekly and monthly HAR lags are all observed. Rows with 0 should not be used;
- `y_h1`, `y_h5`, `y_h22`: the targets from step 1;
- the 46 feature columns.

SPY rows start on 3 Jan 2005 and ES rows start on 4 Jan 2010. Set D should be used from 2010 for both targets, because the ES data begin on 30 Sep 2009. `feature_set_columns.csv` shows the group, the first date and the set membership of every feature.

## Rules agreed by the team

**Missing days (proposal, Section 3.2)**

1. A multi-day target is dropped if more than 20% of its window is missing.
2. Weekly and monthly averages are computed from the observed days if at least 80% of the window is present.
3. An origin whose own RV (or a HAR lag) is missing is not used (`origin_ok = 0`).
4. If a daily input has no value on an NYSE day (for example, a bond-market holiday), its last published value is used. This is limited to 5 sessions for daily series and 10 sessions for weekly series. Hang Seng is set to 0 on Hong Kong holidays.

Targets are never filled, and ES values are never used in place of missing SPY values.

**ES holiday sessions.** VOLARE has 121 rows on dates that are not NYSE sessions (short Globex holiday sessions). Their variance is added to the next NYSE session, so that each target covers one close-to-close interval.

## Units

All variances are daily variances in %², which means the decimal variance multiplied by 10,000 (`cfg.scale`). This is the same unit as in the main pipeline. Implied volatilities and VIX are in volatility points.

## Check against the main pipeline

The output was compared with `build_design.m` (scenario `main`) for both targets. All 46 features and the three targets are equal. The largest difference is 3e-11, which comes from rounding when the CSV files are written.

## Open points

- **VVIX** has a gap of more than 5 sessions in 2006. The fill rule does not cover it, so 24 days after 2005 are still missing.
- **VIX3M** is listed for set B in proposal Section 3.2, but the main pipeline does not use it. Set B here follows the main pipeline and does not include VIX3M. The team should decide whether to add it.
- **Stationarity tests and fractional differencing (FFD)** are not part of these files. The main pipeline applies FFD inside each training window (`walk_forward.m`).
