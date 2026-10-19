# VOLARE E-mini S&P 500 (ES) realized measures, 2009-09-30 to 2026-09-30

Prepared 8 Oct 2026 (ET) for the Fordham MSQF Advanced Machine Learning project "Forecasting S&P 500 Realized Volatility Using Machine Learning" (team: James, Robin, Aryan; Prof. Dmitry Udler).

## Files

| File | What it is |
|---|---|
| `VOLARE_ES_realized_measures_2009-2026.csv` | Every column of the VOLARE futures download for symbol `ES` only, sorted by date. 4,397 rows × 32 columns. |
| `README.txt` | The README that came with the VOLARE futures download (unchanged). |
| `realized_variance_futures_all5.zip` | The full original futures CSV (C, CL, ES, GC, NG; 21,918 rows) plus its README, zipped. |
| `README.md` | This file. |

## Source and citation

VOLARE (VOLatility Archive for Realized Estimates), http://volare.unime.it, downloaded 2026-10-04. Futures measures are built from Kibot `tickbidask` data aggregated to 1-second mid-quotes (median of prices within each second). No outlier filter is applied to futures, because mid-quotes already damp anomalies. Data are updated on the 2nd of each month. For research use; cite:

> Cipollini, F., Cruciani, G., Gallo, G. M., Insana, A., Otranto, E., & Spagnolo, F. (2026). *VOLatility Archive for Realized Estimates (VOLARE).* arXiv:2602.19732. https://doi.org/10.48550/arXiv.2602.19732

VOLARE does **not** offer SPY, other ETFs or the S&P 500 index; its stock set is 40 single names from 2015. ES is the only S&P 500 instrument.

## Columns and units

All measures are **daily variances of log returns** (decimal, not annualized, not percent), except prices.

| Columns | Meaning |
|---|---|
| `date`, `symbol`, `asset_type` | Trading date (YYYY-MM-DD), `ES`, `futures` |
| `open_price`, `close_price`, `high_price`, `low_price` | Index points of the (front) contract |
| `pr`, `gkr`, `rr5` | Range-based variance: Parkinson, Garman-Klass, 5-min realized range |
| `rv1`, `rv5`, `rv5_ss` | Realized variance: 1-min, 5-min, 5-min subsampled |
| `bv1`, `bv5`, `bv5_ss` | Bipower variation (jump-robust) |
| `rsp*`, `rsn*` | Positive / negative realized semivariance (rsp + rsn = rv) |
| `medrv*`, `minrv*` | MedRV and MinRV jump-robust estimators |
| `rk` | Realized kernel on 1-second returns |
| `rq1`, `rq5`, `rq5_ss` | Realized quarticity, (m/3) Σ r⁴ |

Suffixes: `1` = 1-minute, `5` = 5-minute, `_ss` = 5-minute subsampled. There is no jump column; use **J = max(rv5 − bv5, 0)** and continuous part **C = rv5 − J**.

**Conversion to annualized volatility (%):** `100 * sqrt(252 * rv)`. Example: rv5 = 0.0001 → 15.9%.

## Daily window (overnight treatment)

The VOLARE paper (Section 4.1) says futures trade "nearly continuously from Sunday at 18:00 ET to Friday at 17:00 ET, with a daily maintenance break from 17:00 to 18:00 ET" and that weekends and periods without trading are excluded. It does **not** state the daily cut-off explicitly. The data indicate that **each ES date t covers the full Globex session from 18:00 ET on the previous trading evening to 17:00 ET on t (CME trade-date convention), i.e. it includes the overnight session**:

- `open_price` equals the previous row's `close_price` (median absolute gap 0.00%), so each day starts where the previous one ended at the 17:00 break. On the cash index the median overnight gap is 0.17%.
- ES rv5 is on average **1.69× Risk Lab SPY intraday RV** (ratio of means; median daily ratio 1.65), stable across years (1.48–1.92) and weekdays (1.57–1.70).
- Mean ES rv5 is **0.95×** the mean squared S&P 500 close-to-close return, whereas SPY intraday RV is only **0.56×** over the same period. ES therefore captures essentially the whole close-to-close variance.
- The excess of ES over SPY RV correlates 0.63 with the squared S&P 500 overnight return (2014–2026, 3,169 days).
- Monday rows include the Sunday-evening session (no Saturday/Sunday dates exist).

## QC findings

- 4,397 rows, 2009-09-30 to 2026-09-30, no duplicate dates, **no NaN, zero or negative values** in any measure.
- **No NYSE session is missing** (4,276 NYSE sessions in the window, all present).
- **121 extra rows on non-NYSE dates** (exchange holidays with an abbreviated Globex session such as Thanksgiving, Presidents' Day, July 4; also 2012-10-29/30 Hurricane Sandy, 2018-12-05 and 2025-01-09 national days of mourning). By weekday: 80 Mondays, 22 Thursdays, 12 Fridays, 7 other. Their median annualized vol is 5.9% versus 11.6% on NYSE days. When aligning with NYSE-day data, drop them or add their variance to the next NYSE day.
- Identities: rsp5 + rsn5 = rv5 to machine precision (max relative error 1e-12; same for 1-min). bv5 > rv5 on 18.0% of days (so J = 0 there), never by more than 50%; median bv5/rv5 = 0.93. Average jump share J/rv5 = 9.2%; negative semivariance share 50.1%.
- Cross-estimator consistency (log correlations with rv5): rv1 0.990, rv5_ss 0.996, rk 0.993, bv5 0.993. Mean rv1/rv5 = 1.09 (more noise at 1 minute), rk/rv5 = 1.01.
- Range of rv5: 1.5% (2016-12-26, holiday session) to 126.8% annualized (2020-03-16). Largest days: 2020-03-16 126.8%, 2020-03-23 124.8%, 2020-03-12 118.0%, 2025-04-07 113.0%. Days more than 2.5 log points from a 45-day rolling median are all either known events (2010-05-06 flash crash, 2011-08-09, 2015-08-24, Brexit 2016-06-23/24, 2016 election, 2018-02-05/06, 2025-04-07/09, 2026-03-23) or abbreviated holiday sessions. No data errors found.
- Covers all five days of 5–9 Feb 2018, which are missing from Risk Lab SPY (51.1%, 65.2%, 30.8%, 38.5%, 43.2% annualized).

## Comparison with Risk Lab SPY rv5 (daily variance = rv5_trade_vol² / 252)

| Statistic | Value |
|---|---|
| Overlap (same date in both) | 4,243 days, 2009-09-30 to 2026-09-29 |
| Correlation, variance levels | 0.959 |
| Correlation, log variance | 0.967 |
| Correlation, volatility (square root) | 0.968 |
| ES / SPY ratio: ratio of means; mean of daily ratios; median | 1.69; 1.79; 1.65 |
| Mean annualized vol on overlap days: ES / SPY | 13.9% / 10.7% |
| Log correlation: ES(t) with SPY(t−1) / SPY(t+1) | 0.813 / 0.801 (vs 0.967 same date) |

Date alignment: ES date t lines up with NYSE session t (the same-date correlation is far higher than either one-day shift). ES(t) is known after 17:00 ET on t, and includes the overnight session before NYSE day t's open.
