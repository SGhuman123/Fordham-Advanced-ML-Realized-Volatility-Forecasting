# Team Briefing: Forecasting S&P 500 Realized Volatility

*A self-contained guide for discussing the project with Robin and Aryan. It follows proposal **v5.4**. Status as of 16 October 2026.*

Use this file as your single reference in team discussions. It explains, from scratch:

- every concept the project relies on;
- every design decision, and why it was made;
- how the code works;
- what the results say;
- what is still open.

It ends with answers to the questions you are most likely to be asked.

Companion documents:

- `Realize Volatility Data/RV_Forecasting_Proposal_v5.4.pdf`: the agreed proposal, i.e. our "contract".
- `Realize Volatility Data/RV_Forecasting_Data_Description.pdf`: every data file and column.
- `Report/RV_Forecasting_Report.docx` (and `.pdf`): the formal 27-page write-up of everything below.
- `README.md` (repository root): how to run everything, including Robin's and Aryan's modules.
- `Code/README.md`: a short technical guide to the code.
- GitHub: `SGhuman123/Fordham-Advanced-ML-Realized-Volatility-Forecasting`. The combined, agreed set of files is on the `integration` branch (pull request #2 into `main`).

---

## Contents

1. [The project in two minutes](#1-the-project-in-two-minutes)
2. [Concepts from scratch](#2-concepts-from-scratch)
3. [Research questions and what counts as success](#3-research-questions-and-what-counts-as-success)
4. [The data](#4-the-data)
5. [The design, step by step](#5-the-design-step-by-step)
6. [The models and benchmarks](#6-the-models-and-benchmarks)
7. [How forecasts are judged](#7-how-forecasts-are-judged)
8. [The code and the workflow](#8-the-code-and-the-workflow)
9. [Results so far (development period)](#9-results-so-far-development-period)
10. [How our results compare with the literature](#10-how-our-results-compare-with-the-literature)
11. [What changed from v5.2 to v5.4, known issues, and open decisions](#11-what-changed-from-v52-to-v54-known-issues-and-open-decisions)
12. [Team roles, timeline and next steps](#12-team-roles-timeline-and-next-steps)
13. [FAQ: questions you will probably be asked](#13-faq-questions-you-will-probably-be-asked)
14. [Glossary](#14-glossary)
15. [Key numbers cheat sheet](#15-key-numbers-cheat-sheet)

---

## 1. The project in two minutes

**What we do.** We forecast how volatile the S&P 500 will be over the next 1, 5 and 22 trading days: a day, a week and a month.

**What we forecast.** *Realized variance* (RV): a measure of how much the index actually moved, computed from intraday returns.

**Three models:**

1. **HAR**, the standard econometric benchmark. It is a linear regression of future RV on past daily, weekly and monthly RV, and it is famously hard to beat.
2. **Elastic net (EN)**, a regularized linear regression that copes with many correlated inputs.
3. **Random forest (RF)**, an average of many decision trees that can capture non-linearities and interactions.

**Two benchmarks** (neither is estimated):

- **Persistence** ("tomorrow looks like today"). The forecast is simply the latest RV, or the latest h-day average. It is the floor every forecast must clear, HAR included. A forecast that can't beat it is called **"uninformative"**.
- **VIX²**, the market's price of one-month variance. It is used only in the variance-swap check.

**The twist.** The two ML models get four **nested feature sets** (A ⊂ B ⊂ C ⊂ D):

- **A:** RV history only (the HAR inputs).
- **B:** + market data (implied volatility, VIX, rates, returns).
- **C:** + macro and financial-stress indicators.
- **D:** + E-mini futures (ES) measures (jumps, semivariances, quarticity, overnight variance).

This separates two questions: is ML better because it is *non-linear*, or because it gets *more information*?

**New in v5.4: stationarity.**

- Every input is tested for unit roots and long memory (ADF and KPSS tests).
- Inputs that drift (rates, long-dated implied vol) are **fractionally differenced (FFD)**. This uses the smallest order d that makes them stationary, chosen separately inside every training window.
- The HAR lags and the target stay raw.

**Two targets:**

- **SPY** RV (Risk Lab, Chicago Booth) is the main target. It covers regular trading hours only.
- **ES** RV (VOLARE, E-mini futures) is the second target. It covers almost 24 hours, including the overnight move.

**How it is tested.**

- *Walk-forward:* after each year-end, every model is re-fitted on all past data and then forecasts the next year.
- *Development:* 2005–2017. Forecasts start once the model has five years of history: **SPY from 2010, ES from 2015.**
- *Locked test:* 2018 – October 2026. It runs **once**, after all choices are frozen. **It has not been run yet.**

**Headline so far (development data only):**

- **1 day:** the random forest cuts forecast loss by **26–37%** versus HAR, and significantly beats Persistence. This is robust across every check.
- **5 and 22 days:** several models beat HAR. But **nothing (HAR included) significantly beats naive Persistence**, except the elastic net on ES set B at 5 days. On 2015–2017, HAR itself counts as "uninformative".
- **Our two hypotheses are not supported.** Gains don't grow with the horizon, and the forest doesn't extract more from extra information than the elastic net does.
- **Variance swaps:** selling variance every day beats every forecast-timed strategy in 2015–2017. ES forecasts line up with the swap payoff better than SPY forecasts.

**Implementation.** MATLAB, as the course requires. One command reruns everything from the cleaned data.

---

## 2. Concepts from scratch

### 2.1 Volatility and variance

- **Volatility** is how much prices move: the standard deviation of returns.
- **Variance** is volatility squared.
- Volatility is usually quoted as *annualized %*. "VIX = 16" means the market expects about 16% annualized volatility over the next month.
- Conversions:
  - daily variance = (annual vol)² / 252, since there are 252 trading days a year;
  - annual vol = √(252 × daily variance).

### 2.2 Realized variance (RV)

Volatility isn't directly observable, but we can measure it after the fact. Take the day's intraday returns (for example 78 five-minute returns) and sum their squares:

> RV_t = Σ r²_{t,i}

That is the **realized variance** for day t (Andersen, Bollerslev, Diebold & Labys, 2003).

- **Why five minutes?** Sampling more often adds information but also *microstructure noise* (bid–ask bounce). Five minutes is the standard compromise.
- **Our units.** The code works in daily variance in **%²** (decimal variance × 10⁴), so 1.0 means a 1% daily standard deviation, roughly 16% annualized. The scale only affects how coefficients read; the main loss (QLIKE) doesn't depend on it.

### 2.3 Why forecast it?

- **Option pricing and variance swaps.** A variance swap pays realized variance minus a fixed strike, and the strike is roughly VIX². Forecast RV better than the market and you know when volatility is cheap or expensive.
- **Risk management.** VaR limits, margin requirements and position sizing all need a volatility forecast.
- **Volatility targeting.** Funds scale exposure by 1/(forecast vol). Better forecasts give steadier risk and higher utility.

### 2.4 The stylized facts that shape everything

1. **Volatility clusters.** Calm days follow calm days, and turbulent days follow turbulent days.
2. **Long memory.** RV's autocorrelation decays very slowly (hyperbolically), so shocks echo for months. We measured the fractional-integration order **d ≈ 0.4–0.6** (Section 9.8).
3. **Leverage effect.** Negative returns raise future volatility more than positive returns do. That's why we include negative-return averages and negative semivariance.
4. **Jumps.** Part of variance comes from jumps, which are less persistent than smooth variance. That's why set D splits RV into continuous and jump parts.
5. **Many inputs are near unit-root processes.** Interest rates, long-dated implied vol and stress indices wander slowly, so their future values can lie outside anything seen in training. That is why v5.4 adds stationarity tests and fractional differencing.

### 2.5 The HAR model in one paragraph

Corsi (2009):

> future RV = β₀ + β_d·RV(today) + β_w·RV(5-day average) + β_m·RV(22-day average)

Traders act at daily, weekly and monthly horizons, and three averages approximate long memory remarkably well. HAR has four parameters, uses OLS, and runs in milliseconds. **It is the bar to beat.**

### 2.6 Persistence, the naive benchmark (new in v5.4)

> forecast of the next h-day average = the latest h-day average of RV

For h = 1, tomorrow's forecast is today's RV.

- It sounds too simple to matter, but in calm, persistent markets it is very hard to beat.
- Any model that can't significantly beat it at a horizon is reported as **uninformative** there.

### 2.7 Stationarity, unit roots and fractional differencing (new in v5.4)

- **Stationary series:** fluctuates around a stable mean; the past is a good guide to the future.
- **Unit root:** the series wanders with no anchor, like a random walk (interest rates, for example). A model trained on one range of values then meets values it has never seen.
- **ADF test:** null hypothesis = unit root. *Rejecting* means "looks stationary".
- **KPSS test:** null hypothesis = stationary. *Rejecting* means "looks non-stationary".
- **Reading the two together:**
  - ADF rejects *and* KPSS also rejects: the classic sign of **long memory**, i.e. stationary but very persistent.
  - ADF fails to reject: a unit root.
- **Differencing.** Ordinary first differencing (x_t − x_{t−1}) makes a series stationary but destroys its memory.
- **Fractional differencing (FFD)** with order d between 0 and 1 is the middle ground (López de Prado, 2018, ch. 5).
  - The weights are w₀ = 1 and w_k = −w_{k−1}(d−k+1)/k. They are truncated once they fall below τ = 0.001, so every value uses the same window of at most about 70 trading days.
  - We pick **d\*** = the smallest d on the grid {0, 0.05, …, 1} that makes the series pass ADF at 95%. d\* = 0 means the input is left unchanged.
  - We report the **retained correlation** between the differenced and original series, i.e. how much memory survives.
- **No look-ahead.** d\* is chosen on each **training window** only, and re-chosen at every yearly re-fit.

### 2.8 Implied vs realized volatility

- **Implied vol** (VIX, the IV surface) is the market's forecast, embedded in option prices. It includes a risk premium.
- **Realized vol** is what actually happened.
- **Variance risk premium (VRP)** = implied − realized. It is usually positive, so selling variance earns money on average.

### 2.9 SPY vs ES: why two targets?

| | SPY (Risk Lab) | ES (VOLARE) |
|---|---|---|
| Instrument | SPY ETF | E-mini S&P 500 futures |
| Session | 9:30–16:00 ET only | 18:00 previous day – 17:00 ET (**includes overnight**) |
| Share of close-to-close variance | ≈ 56% | ≈ 95% |
| Available | 1996 – 5 Oct 2026 | 30 Sep 2009 – 30 Sep 2026 |
| Role | **Main target** | **Second target**; source of set-D features |

Variance swaps pay on close-to-close returns, which include the overnight move, so ES matches the economic payoff better. That is RQ3.

---

## 3. Research questions and what counts as success

| | Question | Our hypothesis | How we test it |
|---|---|---|---|
| **RQ1** | With RV history only (set A), do EN or RF beat HAR, **and Persistence**? | Small gains at 1 day, growing at 5 and 22 days (Christensen et al.) | DM tests and Model Confidence Set over Persistence, HAR, EN and RF on set A, by horizon |
| **RQ2** | Does the RF gain more from richer features (B, C, D) than the EN does? | Yes, through non-linearity and interactions | Difference-in-differences: (RF gain from A→s) − (EN gain from A→s), with a DM test |
| **RQ3** | Does the full-session ES target change the economic conclusion? | Yes, because ES forecasts should align better with variance-swap payoffs | Repeat everything on ES; variance-swap check on both targets |

v5.4 adds an explicit point: we **don't assume implied vol helps**. The A → B comparison tests it, and set-B importances show which part of the block does the work.

**Success criterion (proposal §6).** On the locked test, the project counts as a success if two things hold:

1. EN or RF has **statistically lower QLIKE than HAR** at one horizon or more, and the winner is in the MCS;
2. the **variance-swap check is directionally consistent**.

Persistence is the floor: a model that can't beat it is reported as uninformative. Failing to beat HAR is also a legitimate, well-documented outcome; Kılıç (2026) is an example.

---

## 4. The data

All data were downloaded and cleaned by Robin, and are in `Realize Volatility Data/`.

| File | What it is | How we use it |
|---|---|---|
| `risklab_SPY_daily_annualized_vol_1996-2026.csv` | SPY annualized vol (Risk Lab): 5-min RV, 15-min RV and QMLE, from trades or quotes; 7,707 days | **Main target** `rv5_trade_vol`. Trade-based, because the quote series have outliers. 15-min RV and QMLE are used as robustness targets |
| `VOLARE_ES_realized_measures_2009-2026.csv` | ES realized measures: rv1, rv5, bipower, semivariances, quarticity, realized kernel; 4,397 rows | **Second target** (`rv5`) and the **set-D features** |
| `vol_indices.mat` | Cboe VIX, VIX9D, VIX3M, VIX6M, VIX1Y, SKEW | log VIX, VRP, VIX9D spread, SKEW. **VIX² is the swap strike** |
| `iv_surface.mat` | Bloomberg SPX implied-vol surface, 2005–2026 | ATM IV at 1M/3M/1Y, skew, term slope. **Its 2005 start fixes our sample start** |
| `features_daily.csv` | 51 daily series on the NYSE calendar, 1990–2026 | Sets B and C; also our **NYSE calendar** |
| `oxfordman_SPX_2000-01-03_2022-02-25.csv` | Oxford-Man S&P 500 measures to Feb 2022 | Robustness only |

**Data facts (all verified by `Code/data_audit.m`, matching proposal v5.4 §3.2 exactly):**

- **Missing SPY days.** Risk Lab SPY is missing **33** of 5,473 NYSE sessions (2005 – Oct 2026), **all in the test period**, including 5–9 Feb 2018. Development has **none**.
- **Gaps in other inputs:**

| Input | NYSE days without a value | Why |
|---|---|---|
| Hang Seng | 251 | Hong Kong holidays |
| T10Y3M and DGS10 | 39 | Bond-market holidays |
| VVIX | 61 (59 of them in 2006) | Early-history gaps |
| RVX | 7 | — |
| VXD | 3 | — |

- **Affected test origins:**

| h | Test origins | Target window has a missing day | More than 20% of target window missing | 22-day lag window has a missing day |
|---|---|---|---|---|
| 1 | 2,200 | 33 | 33 | 531 |
| 5 | 2,196 | 143 | 12 | 527 |
| 22 | 2,179 | 532 | 19 | 510 |

- **ES holidays.** ES has 121 extra Globex holiday rows. We add their variance to the next NYSE day. **This is pending the professor's confirmation** (proposal §3.2).
- **ES vs SPY.** ES RV ≈ 1.7× SPY RV, because of the overnight move.
- **The calendar file.** v5.4 names `nyse_trading_calendar_1990_2026.csv`, but **that file is not in the data folder**. We use the dates in `features_daily.csv`, which Robin's QC verified are identical to the NYSE calendar through 6 Oct 2026. The missing file would only add future sessions.
- **Not used:** Fama–French factors (published about a month late) and HY OAS (only from 2023).

### 4.1 Avoiding look-ahead bias (very important)

Every feature must be **public at the forecast time** (the close of day t):

- **Same day (shift 0):** market closes, Treasury rates, Hang Seng (closes before the NYSE opens), Cboe indices, the IV surface, and ES (closes 17:00 ET).
- **Shifted:**

| Series | Shift (trading days) |
|---|---|
| EPU | +1 |
| CISS | +2 |
| SF Fed news sentiment | +5 |
| Classic GPR | +5 |

- **NFCI and STLFSI4** are already placed on their release date.
- **ADS** uses its *real-time vintage* (what was known on day t). Before December 2008 we use the revised vintage lagged 5 days, in training rows only.
- **All preprocessing uses training data only:** standardization, d\*, feature screening, imputation and floors.

---

## 5. The design, step by step

### 5.1 Targets

Target at day t = the **average RV over the next h days**, RV_{t+1:t+h}.

- Targets are never filled in.
- A multi-day target is dropped if more than 20% of its window is missing. This is a *provisional* rule; see Section 11.

### 5.2 The four nested feature sets

| Set | Adds | Main features |
|---|---|---|
| **A** | RV history | RV daily, 5-day average, 22-day average |
| **B** | Market | Negative-return averages; Parkinson range; log VIX; VRP; ATM IV 1M/3M/1Y, IV skew, IV term slope; 10Y yield, 10Y−3M spread; VVIX; SKEW; VIX9D − VIX; log VXN, log RVX |
| **C** | Macro and stress | ADS, EPU, news sentiment, GPR, CISS, NFCI, STLFSI4, squared Hang Seng return, calendar flags |
| **D** | ES measures | ES continuous and jump components; ± semivariances; √quarticity × RV; realized kernel; overnight variance max(ES − SPY, 0) |

- **HAR and Persistence** use set A only. **EN and RF** use all four sets.
- The ML models **always keep the raw HAR lags**, so they nest HAR.
- **Late-starting series** (VVIX 2006, VIX9D 2011, ES 2009) enter a fold once they have 3 years of history.

### 5.3 Stationarity step (new in v5.4)

1. **Diagnose once,** on the development sample only (`stationarity.m`): ADF and KPSS on every target and input, in levels and logs.
2. **Transform inside every training window** (`walk_forward.m`): every input except the raw HAR lags and calendar flags gets its d\* from eq. 5 of the proposal, chosen on that window's data only. d\* = 0 leaves the input unchanged.
3. **Never touched:** the target and the HAR lags.

### 5.4 The walk-forward

**After the last session of each year Y:**

1. **Training data.** All origins from the start (2005 for SPY, 2010 for ES and set D) whose **whole target window has finished**. This is the *label gap*: the last h rows of each window are dropped.
2. **Inputs.** Choose d\* per input on that window and apply FFD; then standardize.
3. **Tuning.** Fit candidates on the window minus its last two years, score them by QLIKE on those last two years, and pick the best.
4. **Refit** on the whole window.
5. **Forecast** every day of year Y+1.

**Five-year burn-in (new in v5.4).** Development forecasts start only once the window holds five years:

- SPY: development years **2010–2017**;
- ES and set D: development years **2015–2017**.

Consequences:

- The all-model comparison window is **2015–2017 (755 days)**.
- SPY sets A–C also have a longer common window, **2010–2017 (2,013 days)**.
- The locked test has **nine re-fits**, at the ends of 2017 through 2025.

Rules: no shuffling and no k-fold cross-validation. The main design uses an expanding window; a rolling 10-year (SPY) or 8-year (ES) window is a robustness check.

### 5.5 Locked test

- **Development:** 2010–2017 (SPY) and 2015–2017 (ES). We can look at these as often as we like.
- **Test:** 2 Jan 2018 – 5 Oct 2026 (ES to 30 Sep 2026). Run **once**, after freezing everything.
- **The lock:** `cfg.runLockedTest = false` in `Code/rv_config.m`. The code refuses to run the test until it is set to `true`.

### 5.6 Forecast floor

- **The rule:** a linear forecast (HAR or EN) below the **training-window minimum of daily RV** is set to that minimum.
- **Why:** a negative variance is impossible, and it breaks QLIKE.
- **Not needed for the forest,** which only averages past targets.
- **Reported:** how often the floor binds (`floor_pct`).

---

## 6. The models and benchmarks

| Forecast | Type | Inputs | Estimation | Owner | Code |
|---|---|---|---|---|---|
| Persistence | Naive benchmark | Latest RV | None | James | `fit_persistence.m` |
| HAR | Model 1 | Set A | OLS per horizon | James | `fit_har.m` |
| Elastic net | Model 2 | Sets A–D | Penalized regression, tuned | Aryan | `fit_en.m` |
| Random forest | Model 3 | Sets A–D | Bagged trees, tuned | Aryan | `fit_rf.m` |
| VIX² | Market benchmark | VIX | None (swap check only) | All | `evaluate_phase.m` |

### 6.1 Elastic net

> minimize (1/2N)Σ(y − β₀ − x'β)² + λ[α|β|₁ + (1−α)/2·|β|₂²]

- **λ** sets the overall penalty strength.
- **α** mixes the two penalties: **lasso** (α = 1) sets some coefficients to zero, i.e. selects variables; **ridge** (α = 0) shrinks all of them.
- **Grid:** α ∈ {0, 0.1, 0.25, 0.5, 0.75, 0.9, 1} × 50 λ values. The pair with the best validation QLIKE wins.
- Ridge is solved in closed form, because MATLAB's `lasso` can't do α = 0.
- We report the chosen coefficients and how often each feature is selected across folds.

### 6.2 Random forest

- **How it works:** many trees, each grown on a bootstrap sample with random features tried at each split. The forecast is their average.
- **Tuning:** `bayesopt` (12 trials of 100-tree forests) tunes the minimum leaf size (1–200) and the number of features per split. The final forest has 300 trees.
- **Key limitation:** a forest **can't forecast outside the range of volatility it has seen in training.**
- **Explanations:** impurity importance, Shapley values, and ALE plots.

### 6.3 Deliberately NOT estimated

LogHAR, HAR-J, SHAR, HARQ, ARFIMA, boosting, neural networks and forecast combinations are all out of scope (proposal §4.8). With only three models, gains can be attributed cleanly to non-linearity or to information. One exploratory boosting run is allowed at the end; it has not been done.

---

## 7. How forecasts are judged

### 7.1 Loss functions

- **MSE:** average squared error. It is dominated by a few huge days.
- **QLIKE (primary):** average of [y/f − ln(y/f) − 1]. It is zero when the forecast is perfect, it **punishes under-prediction more**, and it depends only on the ratio actual/forecast. Patton (2011) shows it ranks forecasts correctly even though RV is a noisy proxy.
- **Also reported:** MAE and out-of-sample R².
- **Loss ratio** = model ÷ HAR. **Below 1 beats HAR.** v5.4 also adds the ratio against Persistence.

### 7.2 Diebold–Mariano (DM) test

Is one model's average loss **significantly** lower than another's? We test the mean daily loss difference with:

- a Newey–West standard error, to handle the overlap of multi-day targets;
- the HLN small-sample correction.

v5.4 requires DM tests **against HAR and against Persistence**.

### 7.3 Model Confidence Set (MCS)

The set of models that can't be statistically distinguished from the best, at 10%. It is like a confidence interval for "the best model".

- **Implementation:** block bootstrap with 5,000 draws and block length √T.
- **Coverage:** v5.4 includes Persistence, HAR, EN and RF.

### 7.4 RQ2: difference-in-differences

For each day: d_t = (RF loss on A − RF loss on set s) − (EN loss on A − EN loss on set s).

- **d > 0** means the forest gained more from the extra features.
- A DM test checks whether the average d is significantly above zero.

### 7.5 Regimes, extreme days and episodes

- **Calm vs high-RV:** high-RV means last month's RV is above its 2005–2017 80th percentile.
- **Normal vs extreme days:** extreme means the realized target is above Q3 + 1.5·IQR, following Rahimikia & Poon.
- **Episodes:** Aug 2015, the euro crisis, and (test only) Feb 2018, COVID 2020, 2022, and April 2025.

### 7.6 Economic value

- **Volatility-targeting utility** (Bollerslev et al., 2018). U = (SR²/γ)[√(RV/F) − RV/(2F)], with SR = 0.4 and γ = 2, so the maximum is 4% per year.
- **Variance swap.** The strike is K = VIX²; selling variance pays K − 252 × the realized average variance over the next 22 days.
  - *Timing rule:* sell when our forecast is below K, buy otherwise.
  - *Benchmark:* "always sell".
  - *SPY adjustment:* SPY forecasts are rescaled for the missing overnight move.
  - *"Directionally consistent"* means the strategy makes money **and** our signal is positively correlated with the payoff.

---

## 8. The code and the workflow

### 8.1 Folder layout

```
Forecasting S&P 500 Realized Volatility/
├── Realize Volatility Data/   inputs (never modified), proposal v5.4, data description
├── Research Papers/           the four papers (Section 10)
├── Code/                      all MATLAB code (+ README.md)
├── Output/                    everything the code produces (safe to delete and regenerate)
│   ├── panel.mat              all inputs aligned on the NYSE calendar
│   ├── forecasts/dev/<scenario>/<target>_h<h>.mat
│   ├── tables/dev/<scenario>/  CSV tables + summary.md + plots
│   ├── tables/audit_*.csv     missing-data audit (proposal 3.2)
│   ├── logs/                  one log per MATLAB job
│   └── Robin/                 Robin's targets, aligned features and feature sets A–D (CSV)
├── aryan/                     Aryan's independent HAR vs Persistence pipeline (code, outputs)
├── Report/                    report (.md source, .docx, .pdf, figures, build script)
├── agents/                    design notes for project coding agents
├── README.md                  how to run everything
└── Team_Briefing.md           this file

Robin's code lives in `Code/Robin/`.
```

### 8.2 What each code file does

| Step | File | Plain-English job |
|---|---|---|
| Settings | `rv_config.m` | Every setting: horizons, dates, the 5-year burn-in, the FFD grid, tuning grids, the test lock |
| Load | `load_panel.m` | Reads all files and lines them up on the NYSE calendar; merges ES holidays |
| Build | `build_design.m` | Targets and every feature, with publication lags |
| Sets and scenarios | `set_columns.m`, `sample_start.m`, `make_spec.m` | Which features are in A–D; start dates; the main run and robustness scenarios |
| Stationarity | `adf_test.m`, `kpss_test.m`, `ffd.m`, `ffd_choose.m`, `stationarity.m` | ADF and KPSS (coded by hand, since the Econometrics Toolbox isn't installed); fractional differencing; the d\* search; the diagnostics table |
| Walk-forward | `walk_forward.m` | The yearly loop: label gap, d\* per fold, screening, imputation, tuning, floors |
| Models | `fit_persistence.m`, `fit_har.m`, `fit_en.m`, `fit_rf.m` | The benchmark and the three models |
| Run | `run_job.m` | One target × horizon: every model on every set |
| Evaluate | `evaluate_phase.m`, `qlike.m`, `dm_test.m`, `mcs.m` | All tables: losses, DM vs HAR and Persistence, MCS, RQ1/RQ2, regimes, utility, swap, success criterion, FFD summary |
| Explain | `explain_rf.m`, `long_memory.m` | Shapley and ALE; long-memory estimates and memory left in errors |
| Audit | `data_audit.m` | Reproduces the missing-data counts of proposal §3.2 |
| Report | `report_figures.m`, `Report/build_report.py` | Report diagrams; Markdown → styled Word |
| Drivers | `run_parallel.sh`, `main.m` | Run everything |
| Robin's data prep | `Code/Robin/robin_targets.m`, `robin_align_features.m`, `robin_feature_sets.m` | The targets, aligned features and nested sets A–D as standalone files, written to `Output/Robin/` |
| Aryan's cross-check | `aryan/code/rv_har_pipeline.m` | An independent HAR vs Persistence pipeline with its own rules (strict missing-day rule, ES holiday rows dropped). It follows the test lock |
| Integration check | `check_integration.m` | Confirms Robin's feature sets equal `build_design.m`, and that Aryan's HAR/Persistence agree with ours (development data) |

### 8.3 How to run things

From `Code/` in a terminal:

```sh
./run_parallel.sh dev               # main run + explanations + stationarity + audit (~15 min)
./run_parallel.sh dev robustness    # all 10 robustness scenarios (~30–45 min)
./run_parallel.sh dev ffdlags       # just one scenario
```

Or in MATLAB: `cd Code; main` (serial and slower). For a single piece:

```matlab
addpath Code
run_job('SPY', 22, 'dev', 'main');  evaluate_phase('dev', 'main');
stationarity('dev');  data_audit;
```

Robin's and Aryan's modules, and the integration check (in MATLAB, from the repository root):

```matlab
addpath Code Code/Robin
robin_targets; robin_align_features; robin_feature_sets   % Robin
run('aryan/code/rv_har_pipeline.m')                        % Aryan
check_integration                                          % all three agree?
```

- **Progress:** `Output/logs/`.
- **Results:** `Output/tables/dev/<scenario>/summary.md`.
- **Rebuild the report:** edit `Report/RV_Forecasting_Report.md`, then run `python3 Report/build_report.py`.
- **Software:** MATLAB R2026a with the Statistics and ML Toolbox. No Parallel Computing Toolbox is needed: `run_parallel.sh` launches separate MATLAB processes. No Econometrics Toolbox either.

### 8.4 Changing something safely

1. Change a setting in `rv_config.m`, a feature in `build_design.m`, or a model in `fit_*.m`.
2. If you changed data loading, delete `Output/panel.mat` (it's a cache). Then rerun `./run_parallel.sh dev`.
3. Compare the new `summary.md` with a saved copy of the old one.
4. **Decide only on development data.** Never use test results to choose a change.

### 8.5 Working together on GitHub

- **The repository** is `SGhuman123/Fordham-Advanced-ML-Realized-Volatility-Forecasting`. It is public with permission, so the professor can see it.
- **Branches:** `James-dev`, `Robin-dev` and `Aryan-dev` hold each person's own work. **`integration`** combines all three and is the agreed set of files; once the team approves pull request #2 it becomes `main`.
- **To start working:** `git clone` the repository and check out `integration` (later `main`). Make changes on your own branch and open a pull request.
- **After any change:** rerun `check_integration` in MATLAB. It should still report 8 of 8 checks passing.
- **Before the locked test:** tag the agreed commit (e.g. `v-test-freeze`) so it is clear which code produced the test results.

### 8.6 How the three modules were integrated (21 October 2026)

- **Robin's branch** merged unchanged. His scripts reuse `Code/rv_config.m` and helpers, and his outputs reproduce exactly.
- **Aryan's branch** merged with two fixes. His script now reads the repository's data folder (it pointed at a folder layout on his laptop), and it follows the test lock, so it only fits and scores 2005–2017.
- **Integration check: 8 of 8 pass.**
  - Robin's 46 features and 3 targets equal the main pipeline's to within 10⁻¹⁴, for SPY and ES.
  - Aryan's HAR and Persistence forecasts correlate 0.999–1.000 with ours, and the HAR/Persistence QLIKE ratios agree within 0.01.
- **Disclosure.** Aryan's original run had also scored HAR and Persistence on the locked 2018–2026 test period. Those outputs were removed from the combined branch, and the README and report disclose the early look. Neither model has tuning parameters, and no design decision uses those numbers.

---

## 9. Results so far (development period)

**These are development results.** The test may differ. The all-model window is **2015–2017 (755 days)**, a mostly calm period that includes record-low-volatility 2017. Numbers are **QLIKE ratios vs HAR** (below 1 = better). **Bold** = significantly better than HAR; ✓ = in the MCS; † = significantly better than **Persistence**.

### 9.1 Main accuracy table

| Target | h | HAR QLIKE | Persist. | EN A | RF A | EN B | RF B | EN C | RF C | EN D | RF D |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | 0.254 | 0.952 | 1.000 | **0.815** ✓† | 1.675 | **0.740** ✓† | 1.596 | **0.709** ✓† | 0.889 ✓ | **0.714** ✓† |
| SPY | 5 | 0.263 ✓ | 1.078 ✓ | 1.000 ✓ | 1.036 ✓ | 1.335 ✓ | **0.919** ✓ | 1.629 ✓ | 1.052 ✓ | **0.885** ✓ | 0.928 ✓ |
| SPY | 22 | 0.317 ✓ | 0.884 ✓ | 1.000 ✓ | 0.922 ✓ | **0.854** ✓ | 0.940 ✓ | 0.955 ✓ | 1.470 ✓ | 1.107 ✓ | 1.078 ✓ |
| ES | 1 | 0.217 | 0.943 | 1.021 | **0.874** ✓† | **0.800** | **0.630** ✓† | 0.861 | **0.628** ✓† | **0.759** ✓ | **0.633** ✓† |
| ES | 5 | 0.292 | 0.895 ✓ | 1.018 | **0.887** ✓ | **0.657** ✓† | **0.812** ✓ | **0.735** ✓ | **0.781** ✓ | **0.721** ✓ | **0.764** ✓ |
| ES | 22 | 0.325 ✓ | 0.942 ✓ | 1.185 ✓ | 0.967 ✓ | 0.943 ✓ | 1.016 ✓ | 1.084 ✓ | 1.052 ✓ | 1.173 ✓ | 1.064 ✓ |

**How to read it:**

- **1 day:** the forest on any set beats **both** HAR and Persistence. Loss falls 26–29% for SPY and 37% for ES. This is a clear win.
- **5 days:** several models beat HAR, but only **EN on ES set B** also beats Persistence.
- **22 days:** SPY EN set B beats HAR (p = 0.04), but nothing beats Persistence. Persistence itself is better than HAR here (0.884).
- **HAR vs Persistence:** on 2015–2017 HAR does **not** significantly beat Persistence at any horizon, so under v5.4's rule **HAR is "uninformative"** on this window. On the longer SPY 2010–2017 window, though, HAR beats Persistence at every horizon (Persistence ratio 1.06–1.10).
- **Under MSE** nothing is significant anywhere.
- **R² (SPY / ES):** HAR's out-of-sample R² of 0.33/0.48/0.57 (SPY) and 0.26/0.26/0.24 (ES) rises to at most 0.44/0.59/0.69 and 0.46/0.43/0.36.

**Longer SPY window (sets A–C, 2010–2017):**

| h | Persistence | RF best | EN B / EN C |
|---|---|---|---|
| 1 | 1.06 | RF C 0.78 | 2.93 / 2.63 |
| 5 | 1.09 | RF B 0.91 | 2.66 / 3.16 |
| 22 | 1.10 | — (HAR not beaten) | 1.91 / 3.98 |

The elastic net on sets B/C breaks down (Section 9.4).

### 9.2 RQ1: set A only

| Comparison | SPY h=1 | SPY h=5 | SPY h=22 | ES h=1 | ES h=5 | ES h=22 |
|---|---|---|---|---|---|---|
| HAR vs Persistence | 0.94 (n.s.) | 0.92 (n.s.) | 0.91 (n.s.) | 1.06 | 1.12 | 1.06 |
| EN A vs HAR | 1.00 | 1.00 | 1.01 | 1.02 | 1.02 | 1.19 |
| RF A vs HAR | **0.89** | 0.99 | 0.97 | **0.87** | **0.89** | 0.97 |
| RF A vs Persistence | **0.84** | 0.91 (p = 0.06) | 0.88 | **0.93** | 0.99 | 1.03 |

SPY is measured on 2010–2017, ES on 2015–2017.

- **The EN on set A adds nothing:** validation picks almost no shrinkage, so it reproduces HAR.
- **The RF beats HAR at 1 day,** and at 5 days for ES. It is the only set-A forecast that beats Persistence (at 1 day).
- **HAR's edge over Persistence is not significant.**
- **The hypothesis is rejected:** gains don't grow with the horizon.

### 9.3 RQ2: does the RF gain more from extra features?

- **Apparent RF wins are EN failures.** The DiD is significantly positive for SPY sets B/C, but only because **the EN breaks down**: its loss rises 2–4× while the RF's barely moves.
- **Where neither model breaks** (set D for SPY, every ES set), the **RF never gains significantly more**. For ES at 5 and 22 days the **EN gains more**; for example, from set B at 5 days the EN gains +36% and the RF only +9%.
- **Answer:** the forest is **more robust** to messy features but **doesn't extract more information**. The hypothesis is not supported.

### 9.4 Why the elastic net breaks on sets B/C (key talking point)

1. In some years validation picks an almost-zero penalty, so the EN is nearly OLS.
2. Near-OLS on very correlated inputs gives **large offsetting coefficients**. The culprit is the implied-vol block (VIX, ATM 1M/3M/1Y IV, VRP); for example, at 22 days the average set-B coefficients are +0.48 on 1M IV and −0.31 on 3M IV.
3. When those inputs move 1–2 standard deviations outside their training range, the forecast goes **negative** and is floored, so it is far too low.
4. **QLIKE punishes under-prediction hard.** The floor binds on 9–12% of SPY days at 1 day.

**FFD doesn't fix this.** These implied-vol levels mostly **pass** ADF (d\* = 0), so they're left unchanged; the problem is collinearity, not non-stationarity. Set D is unaffected because the realized kernel carries the signal.

### 9.5 Stationarity findings (new)

- **73 ADF/KPSS tests** were run on targets and inputs (levels and logs, development sample).
- **64 show the long-memory pattern** (ADF rejects, KPSS also rejects): both targets, the HAR lags, VIX, ES measures, macro indices. This is exactly what Bhatti (2026) describes.
- **8 look like unit roots:** 3M and 1Y ATM implied vol, the 10Y−3M spread, the 10Y yield, and CISS. These are the ones FFD transforms.
- **1 is stationary on both tests:** √RQ × RV.
- **The orders are small:** d\* is 0.10–0.30, with **96–99.5% correlation retained**. Inside the walk-forward, the rates and 1Y IV are differenced in every fold; 3M IV in two-thirds of folds; CISS, 1M IV, RVX and STLFSI4 occasionally.
- **Bottom line:** FFD barely changes the inputs; it just removes slow drift.

### 9.6 RQ3: variance-swap check (22 days, 2015–2017)

| Strategy | SPY forecasts | ES forecasts |
|---|---|---|
| Always sell variance | +80.1 (t = 4.1) | +80.1 (t = 4.1) |
| Persistence | +42.7, correlation 0.07 | +24.9, correlation 0.04 |
| HAR | +13.5, correlation 0.09 | +24.4, correlation 0.27 |
| Best ML | EN C +37.4 (correlation 0.22) | EN B +40.5 (correlation 0.42) |

The P&L is in vol-points² per trade.

- **Always selling wins:** 2015–2017 was calm with a big variance risk premium.
- **Persistence and the SPY forest aren't timing.** They are short 72–91% of the time and earn the premium.
- **Every ES model's signal is positively correlated with the payoff** (0.23–0.42); for SPY the range is −0.09 to 0.37. That is directionally what RQ3 predicts, but it is weak evidence.

### 9.7 Regimes and extreme days

- **Persistence wins in calm markets and loses in spikes.** At 22 days it beats HAR by more than half on normal days (0.41 SPY, 0.63 ES) but is 1.8–2.5× worse on extreme days. Calm days dominated 2015–2017, which explains its strong average.
- **At 1 day, ML does better than HAR on extreme days** (0.35–0.54). That is the opposite of Rahimikia & Poon's single-stock finding.
- **At 22 days, most ML models lose to HAR on extreme days,** which matches their finding.

### 9.8 Long memory

- **Local Whittle d ≈ 0.37–0.63** for every RV series. That is strong long memory, which is why HAR works.
- **Bhatti's d_LTM is erratic** (0.08–0.92) on our short samples. It is reported only as a cross-check, as the proposal anticipates.
- **Forecast errors have no long memory left** (d ≤ 0.10). They do show a negative lag-1 autocorrelation: after a spike the next forecast is too high. This is the effect HARQ targets.

### 9.9 Economic value: utility

- **HAR beats Persistence at every horizon,** because utility punishes Persistence's spike errors.
- **The best ML model adds** about **0.15–0.18 percentage points per year** at 1 day, 0.05–0.18 at 5 days, and 0.03–0.04 at 22 days.

### 9.10 What drives forecasts

- **Set B (does implied vol help?)** Yes, but through its **shape** rather than its level:
  - for SPY: the IV term slope (27% of RF importance at 1 day);
  - for ES: the VIX9D − VIX spread (23%);
  - the skew also matters.
- **Set D:** ES continuous variation, negative semivariance, the realized kernel, IV skew and the VIX9D spread.
- **The EN (1 day) selects** the Parkinson range, VIX9D spread, ES negative semivariance, VRP and the realized kernel.
- **Macro and calendar features are nearly useless.**
- **ALE plots** are flat above the training range: the forest can't extrapolate.

### 9.11 Robustness (10 checks)

| Check | Finding |
|---|---|
| `rolling` | Same pattern; 1-day RF 0.63–0.69, beats Persistence |
| `rv15`, `qmle` (SPY targets) | 1-day RF/EN 0.70–0.78, beat Persistence; 22-day nothing beats Persistence |
| `rv1`, `rk` (ES targets) | 1-day RF 0.66–0.72, beats Persistence; no 22-day gains |
| `holdrop` | No material difference |
| `rfdefault` (untuned RF) | As good as tuned at 1 and 5 days; worse at 22 days on big sets |
| `ffdlags` (lags = FFD log RV) | **The RF doesn't care** (1 day 0.64–0.70). **The EN fails without raw lags** (1.34–2.08), so keeping raw HAR lags matters |
| `oxford` | Small 5-day gain for SPY (0.90 vs 0.97) |
| `vix1996` (2001–2017) | RF beats HAR at all horizons; Persistence beats HAR at 5 days (0.83) |

**Bottom line:**

- **1 day:** forest gains over both benchmarks in every check (0.60–0.84).
- **22 days:** no check finds anything that beats Persistence.

### 9.12 Success criterion (development)

- **Met:** ML beats HAR significantly, with the winner in the MCS, at 5 of 6 target–horizon pairs, and the ES swap check is consistent.
- **The Persistence floor is the sobering part.** Only the 1-day forests and the 5-day ES EN-B are informative.
- **The locked test is the real verdict:** nine years, including 2018, 2020, 2022 and 2025.

### 9.13 Earlier configuration (v5.2) for context

With the old 3-year burn-in, development forecasts started in 2008. The forest, trained only on calm 2005–2007, was **about 6× worse than HAR during the GFC**, because it can't forecast above its training range. v5.4's 5-year burn-in starts forecasts in 2010, after the crisis is in training, so this failure no longer appears in the development results. It is still worth mentioning as a known weakness.

---

## 10. How our results compare with the literature

The four papers are in `Research Papers/`.

| Paper | What they did | What they found | What we took |
|---|---|---|---|
| **Christensen, Siggaard & Veliyev (2023)**, *JFEC* (arXiv:2601.13014) | 29 Dow stocks; HAR family vs many ML models; MSE; h = 1, 5, 22 | With HAR lags only, ML ≈ HAR. With covariates, RF MSE is 0.90/0.80/**0.60** of HAR, and gains grow with the horizon | Floor rule; train-only standardization; no shuffling; RF-defaults check; ALE |
| **Kılıç (2026)**, Fed FEDS 2025-061r1 | S&P 500 RV 1996–2025; HAR, ARFIMA, regime-switching vs XGBoost and NNs; QLIKE, DM–HLN, MCS | ML beats HAR by ≤1% at 1 day and loses by 22 days; extra predictors don't help | Label-gap rule; DM–HLN; MCS √T block; euro-crisis window; utility; EN coefficients |
| **Rahimikia & Poon (2026)**, SSRN | 23 NASDAQ stocks with order-book and news data; 1 day; LSTM vs HAR | ML loses overall, wins on normal days, loses on extreme days | Extreme-day split; floor-frequency reporting |
| **Bhatti (2026)**, Fordham working paper | Long memory in stock prices; detectability boundary | d₀(T) = 5.81·T^−0.367; ADF passes while KPSS rejects under long memory | Read ADF and KPSS together; the d_LTM cross-check (with caveats). Cited in v5.4 §4.3 |

Also new in v5.4: **López de Prado (2018), ch. 5**, the source of the fractional-differencing method.

How our results relate:

- **Christensen et al. vs us:** they find big 22-day gains (MSE, single stocks, daily refits); we find none that survive the Persistence floor (QLIKE, index, annual refits).
- **Kılıç:** agrees with us that gains are short-horizon and macro adds little.
- **Rahimikia & Poon:** we find the opposite at 1 day (ML wins on extreme days) and the same at 22 days.

---

## 11. What changed from v5.2 to v5.4, known issues, and open decisions

### 11.1 v5.4 changes and how they are implemented

| v5.4 change | Implementation |
|---|---|
| Persistence benchmark | `fit_persistence.m`; in every table; DM and MCS against it; "uninformative" flag |
| ADF/KPSS on every target and input | `adf_test.m`, `kpss_test.m` (hand-coded), `stationarity.m` |
| FFD with d\* chosen per training window | `ffd.m`, `ffd_choose.m`, `walk_forward.m`; d\* and retained correlation reported |
| Local Whittle and Bhatti estimator | `long_memory.m` |
| FFD-lag robustness | scenario `ffdlags` |
| 5-year burn-in for development | `cfg.minTrainYears = 5` |
| Missing-data counts | `data_audit.m` (matches exactly) |
| New figures (pipeline with Persistence and FFD) | `report_figures.m` |

### 11.2 Earlier fixes still in place (from the v5.2 review)

- The literal floor rule.
- VIX9D enters from 2011 (3-year rule).
- True ridge (α = 0) in the EN grid.
- An automatic success criterion.
- From the papers: the extreme-day split, RF-defaults check, √T MCS blocks, euro-crisis window and floor reporting.

### 11.3 Limitations

1. **Development results only.**
2. **A short, calm comparison window** (2015–2017, 755 days).
3. **Levels-scale modelling** causes both the RF extrapolation and EN floor problems.
4. **Only HAR and Persistence as benchmarks.** Our conclusions are "relative to HAR and Persistence".
5. **Noisy RF tuning:** one seed, 12 steps.
6. **Data gaps:** no order-book or news data; the ES session timing is inferred; pre-2008 ADS is revised.
7. **A stylized swap check.**
8. **Many tests,** so read p-values together with the MCS.
9. **Hand-coded ADF and KPSS** (verified on simulated data).

### 11.4 Decisions the team must make BEFORE the locked test

1. **Missing-day treatment.** v5.4 says it "will be decided". The provisional rules are:
   - drop multi-day targets if more than 20% is missing;
   - build weekly/monthly lags from at least 80% observed days;
   - drop origins with a missing RV_t (33 test origins at h = 1);
   - use the last published value for inputs on holidays.

   Agree or change.
2. **ES holiday rows.** Get the professor's confirmation of rolling them into the next NYSE day.
3. **The missing calendar file.** Should Robin add `nyse_trading_calendar_1990_2026.csv`? (Our calendar is equivalent for every date we use.)
4. **Elastic-net stability.** Keep as specified, or add a guard: a λ floor, an unpenalized HAR block, or fewer IV-level features.
5. **RF tuning budget.** More `bayesopt` steps, or averaged seeds?
6. **Optional boosting run?**
7. **Freeze procedure.** Who flips `cfg.runLockedTest = true`, and tagging the code first.

---

## 12. Team roles, timeline and next steps

| Person | Lead responsibility (v5.4) | Focus |
|---|---|---|
| **Robin** | Risk Lab and VOLARE targets, feature alignment, publication lags, data dictionary, QC | Data |
| **James** | **Persistence** and HAR; walk-forward engine; DM tests and MCS | RQ1 benchmarks |
| **Aryan** | Elastic net and random forest, tuning, coefficients, feature importance | RQ1–RQ2 ML |
| **All** | Utility, variance-swap comparison, report, presentation | RQ3 / write-up |

| When | Milestone | Status |
|---|---|---|
| Mid-October | Data lock | Done |
| End of October | Persistence, HAR, first ML baseline | Done |
| Mid-November | Full sets A–D and ES runs | Done (development) |
| Late November | **Locked test** | Waiting on Section 11.4 |
| Early December | Economic checks, report, slides | Report drafted; slides not started |

**Suggested next meeting:**

1. Walk through Section 9 together.
2. Decide the items in Section 11.4.
3. Each person checks their own code area against Appendix B of the report.
4. Set up git.
5. Set the test date.
6. Split the slides.

---

## 13. FAQ: questions you will probably be asked

### About the idea

**Q: Why is HAR so hard to beat?**
Volatility's main feature is long memory, and three averages capture it with only four parameters. There's little left for complex models to find, and they pay an estimation-noise cost.

**Q: Why add a naive Persistence benchmark?**
To check that any model, HAR included, actually adds something beyond "volatility tomorrow ≈ volatility today". It turns out to be a demanding bar in calm markets.

**Q: HAR doesn't beat Persistence on 2015–2017. Is HAR broken?**
No. 2015–2017 was mostly calm, and in a calm, persistent regime the latest RV is an excellent forecast, while HAR's intercept and monthly lag pull forecasts toward the higher training average. When volatility spikes, Persistence fails badly (1.8–2.5× worse than HAR on extreme days). Over 2010–2017, HAR beats Persistence at every horizon, and utility ranks HAR above Persistence everywhere.

**Q: Why isn't deep learning used?**
The proposal limits us to three models so gains can be attributed cleanly. The literature also finds neural nets don't reliably beat HAR.

### About stationarity and FFD

**Q: Why test for stationarity at all?**
ML models learn a mapping from training data. If an input drifts, as rates do, test-period values fall outside the training range. A forest can't extrapolate, and linear coefficients become unstable.

**Q: Why not just take first differences?**
First differencing destroys memory, and memory is exactly what forecasts volatility. Fractional differencing removes the drift while keeping most of the memory: we keep 96–99.5% correlation with the original series.

**Q: How is d\* chosen, and isn't that look-ahead?**
It is the smallest d on the grid {0, 0.05, …, 1} whose transformed series passes ADF at 95%. It is chosen **only on each training window** and re-chosen every year, so it uses no test information.

**Q: Why are the HAR lags and the target not transformed?**
v5.4 says so explicitly. The target must stay what we're forecasting, and keeping the raw lags means both ML models still nest HAR. The `ffdlags` check shows why it matters: without raw lags the linear EN fails.

**Q: ADF says RV is stationary but KPSS says it isn't. Which is right?**
Both, in a sense. That pattern is the signature of **long memory**: stationary, but with very slowly decaying correlation. Bhatti (2026) points out exactly this.

**Q: What does d mean?**
The fractional-integration order. 0 is short memory, 1 is a random walk, and between 0 and 0.5 is stationary long memory. Our RV estimates of 0.4–0.6 sit at the strong-memory end.

### About the data

**Q: Why start in 2005?**
The Bloomberg IV surface starts in 2005. Pre-2005 data are used only in the VIX-only robustness check.

**Q: Why do development forecasts only start in 2010 (SPY) and 2015 (ES)?**
v5.4 requires five years of training history before forecasting.

**Q: What about the 33 missing SPY days?**
All of them are in the test period, so they don't affect development. The proposal says the treatment is still to be decided; our provisional rules are in Section 11.4. Targets are never filled.

**Q: How do you know there's no look-ahead?**
Three safeguards:

1. Publication lags on every input.
2. The label gap.
3. All preprocessing (standardization, d\*, imputation, floors, tuning) uses training data only.

### About the method

**Q: Why QLIKE instead of MSE?**
It is robust to noise in the RV proxy (Patton, 2011). It depends on the ratio rather than the size of errors, so a handful of crisis days don't dominate. It also penalizes under-prediction more, which suits risk management.

**Q: Why tune on QLIKE when models are fitted with squared error?**
Models are fitted with their natural objectives, and hyperparameters are *selected* on the loss we're judged by.

**Q: What's the label gap?**
For a 22-day target, a mid-December origin's label uses January data. It may only be used once that data exists, so the last h rows of every training window are dropped.

### About the results

**Q: So does ML beat HAR?**
At 1 day, yes, and it beats Persistence too, robustly. At 5 and 22 days it sometimes beats HAR but not Persistence. The locked test decides.

**Q: Why does the elastic net do worse with more information?**
Collinear implied-vol levels plus almost no penalty give offsetting coefficients. When those features move outside their training range, forecasts go negative and get floored, and QLIKE punishes that heavily. FFD doesn't help, because those inputs aren't unit-root.

**Q: Does implied volatility help?**
Yes, through its **shape** (term slope, VIX9D spread, skew) more than its level.

**Q: Why does "always sell variance" win?**
The variance risk premium: implied volatility is usually above what's realized, especially in calm 2015–2017.

**Q: Are the results robust?**
At 1 day, yes: the forest beats both benchmarks in all 10 checks. At 22 days nothing beats Persistence in any check.

### About the process

**Q: Have we looked at the test period?**
No. It is locked in code. Only the *missing-data counts* (data availability, not results) were computed for the test period, as the proposal itself does.

**Q: What if the test shows no gain over HAR?**
That is a legitimate, publishable outcome (proposal §6; Kılıç, 2026).

**Q: Did we deviate from the proposal?**
No substantive deviations. The open details are documented in report §11. Two items are explicitly undecided in v5.4 itself (missing days and ES holidays), and the named calendar file is absent but its content is equivalent. Report Appendix B checks every proposal item.

---

## 14. Glossary

| Term | Meaning |
|---|---|
| **RV** | Realized variance: the sum of squared intraday returns |
| **Persistence** | Naive benchmark: the latest h-day average of RV is the forecast |
| **Uninformative** | A forecast that doesn't significantly beat Persistence at that horizon |
| **HAR** | Regression of future RV on daily, weekly and monthly RV averages |
| **Elastic net** | Penalized linear regression mixing lasso (L1) and ridge (L2) |
| **Random forest** | Average of many decision trees grown on bootstrap samples |
| **Set A/B/C/D** | Nested inputs: RV history / + market / + macro and stress / + ES measures |
| **ADF test** | Unit-root test; rejecting means "looks stationary" |
| **KPSS test** | Stationarity test; rejecting means "looks non-stationary" |
| **Unit root** | A series that wanders with no anchor (like a random walk) |
| **Long memory, d** | Very slow decay of autocorrelation; d is the fractional-integration order |
| **FFD, d\*** | Fixed-width fractional differencing; d\* is the smallest order passing ADF |
| **Retained correlation** | Correlation between the FFD series and the original (memory kept) |
| **Local Whittle** | Standard estimator of d |
| **d_LTM** | Bhatti's detectability-boundary estimator (a cross-check) |
| **Walk-forward** | Re-fit after each year-end on past data only; forecast the next year |
| **Burn-in** | Years of history required before forecasting (five in v5.4) |
| **Label gap** | Training rows are used only once their full target is observed |
| **QLIKE** | y/f − ln(y/f) − 1; the primary loss |
| **DM test** | Diebold–Mariano test of equal accuracy (with HLN correction) |
| **MCS** | Model Confidence Set: models indistinguishable from the best |
| **DiD** | Difference-in-differences of losses (RQ2) |
| **VIX / VIX²** | 30-day implied vol / approximately the 1-month variance-swap strike |
| **VRP** | Variance risk premium: implied minus realized |
| **Semivariance** | Variance from positive or negative returns only |
| **Realized kernel** | Noise-robust RV estimator |
| **Quarticity (RQ)** | Sum of fourth powers of returns; measures how noisy RV itself is |
| **Floor** | Linear forecasts below the training minimum of daily RV are set to that minimum |
| **ALE / Shapley** | Model-explanation tools |

---

## 15. Key numbers cheat sheet

| Fact | Number |
|---|---|
| Proposal version | v5.4 |
| Horizons | 1, 5, 22 trading days |
| Forecasts compared | Persistence, HAR, EN × 4 sets, RF × 4 sets (10) |
| Main sample | Jan 2005 – 5 Oct 2026 (5,440 SPY days) |
| Development / test | 2005–2017 / 2 Jan 2018 – 5 Oct 2026 |
| Burn-in | 5 years: SPY forecasts from 2010, ES/set D from 2015 |
| All-model comparison window | 2015–2017, 755 days |
| Longer SPY window (sets A–C) | 2010–2017, 2,013 days |
| Missing SPY days | 33, all in the test period; 0 in development |
| ES holiday rows | 121 (pending confirmation) |
| Best 1-day gain vs HAR | ES RF C −37%; SPY RF C −29% (both beat Persistence) |
| 5-day | Best ES EN B −34% (beats Persistence); SPY EN D −12% (doesn't beat Persistence) |
| 22-day | Nothing beats Persistence |
| HAR vs Persistence (2015–17) | Not significantly better at any horizon |
| Stationarity tests | 73: 64 long-memory pattern, 8 unit root, 1 stationary |
| FFD orders | d\* 0.10–0.30; 96–99.5% correlation retained |
| RV long memory | Local Whittle d ≈ 0.37–0.63 |
| EN floor frequency | 9–12% of SPY days (sets B/C, 1 day) |
| Always-sell-variance P&L | +80.1 vol-pts² per trade, t = 4.1 |
| Utility gain at 1 day | ≈ +0.15–0.18 percentage points per year |
| Robustness checks | 10 (incl. new `ffdlags`) |
| Runtime | ~15 min main, ~30–45 min robustness |
| Test lock | `cfg.runLockedTest = false` in `Code/rv_config.m` |
