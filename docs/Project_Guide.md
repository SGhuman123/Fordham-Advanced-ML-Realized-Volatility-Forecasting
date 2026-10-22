# Project Guide: Forecasting S&P 500 Realized Volatility

*A self-contained guide for the whole team: James, Robin and Aryan. It follows proposal **v5.4**. Status as of 21 October 2026: the design is frozen at git tag `design-freeze`, and the locked 2018 – October 2026 test has been run once.*

Use this file as the team's shared reference. It explains, from scratch:

- every concept the project relies on;
- every design decision, and why it was made;
- how the code works;
- what the results say, on the locked test and on development data;
- what is left to do.

It ends with answers to the questions we are most likely to be asked.

Companion documents:

- `Realize Volatility Data/RV_Forecasting_Proposal_v5.4.pdf`: the agreed proposal, i.e. our "contract".
- `Realize Volatility Data/RV_Forecasting_Data_Description.pdf`: every data file and column.
- `Report/RV_Forecasting_Report.pdf` (also `.docx`; source `.md`): the formal write-up of everything below. Where this guide and the report differ, the report wins.
- `README.md` (repository root): how to run everything.
- `Code/README.md`: a short technical guide to the code.
- GitHub: `SGhuman123/Fordham-Advanced-ML-Realized-Volatility-Forecasting`.

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
9. [Results](#9-results)
10. [How our results compare with the literature](#10-how-our-results-compare-with-the-literature)
11. [What changed from v5.2 to v5.4, limitations, and decisions taken](#11-what-changed-from-v52-to-v54-limitations-and-decisions-taken)
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
- **B:** + market data (returns, implied volatility, VIX and its term-structure spreads VIX9D − VIX and VIX3M − VIX, rates).
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
- *Development:* 2005–2017. Forecasts start once the model has five years of history: **SPY from 2010, ES from 2015.** All design choices were fixed here.
- *Locked test:* 2 January 2018 – October 2026, with nine re-fits. It was **run once**, after the design was frozen at tag `design-freeze`.

**Headline (locked test):**

- **SPY, 1 and 5 days:** the random forest on market features (set B or C) cuts forecast loss by **12–15%** versus HAR. The gain is significant, the forest stays in the Model Confidence Set, and it also beats Persistence. **The success criterion is met.**
- **SPY at 22 days, and ES at every horizon:** no model significantly beats HAR. The ES forests, trained only on post-2009 data, **failed in the 2020 COVID spike**.
- **HAR beats Persistence at every horizon,** for both targets. This reverses the calm development window.
- **RQ1:** with volatility history alone (set A), neither ML model beats HAR. Gains shrink with the horizon instead of growing.
- **RQ2:** the forest gains significantly more than the elastic net from richer features at 1 and 5 days, largely because the elastic net degrades.
- **RQ3:** the full-session ES target does **not** line up better with the variance-swap payoff.

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
2. **Long memory.** RV's autocorrelation decays very slowly (hyperbolically), so shocks echo for months. We measured the fractional-integration order **d ≈ 0.4–0.6** (Section 9.13).
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

Variance swaps pay on close-to-close returns, which include the overnight move, so ES should match the economic payoff better. That is RQ3. (On the test, it didn't; see Section 9.5.)

---

## 3. Research questions and what counts as success

| | Question | Our hypothesis | How we test it | Answer on the locked test |
|---|---|---|---|---|
| **RQ1** | With RV history only (set A), do EN or RF beat HAR, **and Persistence**? | Small gains at 1 day, growing at 5 and 22 days (Christensen et al.) | DM tests and Model Confidence Set over Persistence, HAR, EN and RF on set A, by horizon | **No.** Neither beats HAR; gains do not grow with the horizon |
| **RQ2** | Does the RF gain more from richer features (B, C, D) than the EN does? | Yes, through non-linearity and interactions | Difference-in-differences: (RF gain from A→s) − (EN gain from A→s), with a DM test | **Yes at 1 and 5 days,** partly because the EN degrades; no at 22 days |
| **RQ3** | Does the full-session ES target change the economic conclusion? | Yes, because ES forecasts should align better with variance-swap payoffs | Repeat everything on ES; variance-swap check on both targets | **No.** ES forecasts align worse than SPY forecasts |

v5.4 adds an explicit point: we **don't assume implied vol helps**. The A → B comparison tests it, and set-B importances show which part of the block does the work.

**Success criterion (proposal §6).** On the locked test, the project counts as a success if two things hold:

1. EN or RF has **statistically lower QLIKE than HAR** at one horizon or more, and the winner is in the MCS;
2. the **variance-swap check is directionally consistent**.

**Result: met** (Section 9.11), but narrowly: for SPY at 1 and 5 days only.

Persistence is the floor: a model that can't beat it is reported as uninformative. Failing to beat HAR is also a legitimate, well-documented outcome; Kılıç (2026) is an example.

---

## 4. The data

All data were downloaded and cleaned by Robin, and are in `Realize Volatility Data/`.

| File | What it is | How we use it |
|---|---|---|
| `risklab_SPY_daily_annualized_vol_1996-2026.csv` | SPY annualized vol (Risk Lab): 5-min RV, 15-min RV and QMLE, from trades or quotes; 7,707 days | **Main target** `rv5_trade_vol`. Trade-based, because the quote series have outliers. 15-min RV and QMLE are used as robustness targets |
| `VOLARE_ES_realized_measures_2009-2026.csv` | ES realized measures: rv1, rv5, bipower, semivariances, quarticity, realized kernel; 4,397 rows | **Second target** (`rv5`) and the **set-D features** |
| `vol_indices.mat` | Cboe VIX, VIX9D, VIX3M, VIX6M, VIX1Y, SKEW | log VIX, VRP, the VIX9D − VIX and VIX3M − VIX spreads, SKEW. **VIX² is the swap strike** |
| `iv_surface.mat` | Bloomberg SPX implied-vol surface, 2005–2026 | ATM IV at 1M/3M/1Y, skew, term slope. **Its 2005 start fixes our sample start** |
| `features_daily.csv` | 51 daily series on the NYSE calendar, 1990–2026 | Sets B and C; also our **NYSE calendar** |
| `oxfordman_SPX_2000-01-03_2022-02-25.csv` | Oxford-Man S&P 500 measures to Feb 2022 | Cross-check of the SPY target (correlation 0.968 over 4,293 common days); robustness only |

**Data facts (all verified by `Code/data/data_audit.m`, matching proposal v5.4 §3.2 exactly):**

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

  How these are handled was frozen before the test (Section 5.1).
- **ES holidays.** ES has 121 extra Globex holiday rows. We add their variance to the next NYSE day, so each target spans one close-to-close interval. The team froze this rule before the test; dropping the rows instead is a robustness check (`holdrop`).
- **ES vs SPY.** ES RV ≈ 1.7× SPY RV, because of the overnight move.
- **The SPY target cross-check.** Risk Lab SPY RV and Oxford-Man S&P 500 RV correlate at 0.968 over 4,293 common days (`data_audit.m`).
- **The calendar file.** v5.4 names `nyse_trading_calendar_1990_2026.csv`, but **that file is not in the data folder**. We use the dates in `features_daily.csv`, which Robin's QC verified are identical to the NYSE calendar through 6 Oct 2026. The missing file would only add future sessions, which no forecast uses.
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

- Targets are never filled in, and ES is never a stand-in for a missing SPY target.
- **The missing-day rules, frozen before the test:**
  1. a multi-day target is dropped if more than 20% of its window is missing;
  2. weekly and monthly RV lags are built from the observed days if at least 80% of the window is present;
  3. an origin whose own RV_t is missing is dropped, for every model alike;
  4. when a daily input has no value (e.g. a bond holiday), its last published value is used for at most 5 sessions (10 for weekly series).
- These rules don't affect development results, because development has no missing SPY day.
- **A strict alternative** is a robustness check (scenario `strict`): any origin whose target or 22-day lag window touches a missing day is dropped. On the test this removes about a quarter of the SPY 22-day origins (2,160 → 1,647).

### 5.2 The four nested feature sets

| Set | Adds | Main features |
|---|---|---|
| **A** | RV history | RV daily, 5-day average, 22-day average |
| **B** | Market | Negative-return averages; Parkinson range; log VIX; VRP; ATM IV 1M/3M/1Y, IV skew, IV term slope; 10Y yield, 10Y−3M spread; VVIX; SKEW; VIX9D − VIX; VIX3M − VIX; log VXN, log RVX |
| **C** | Macro and stress | ADS, EPU, news sentiment, GPR, CISS, NFCI, STLFSI4, squared Hang Seng return, calendar flags |
| **D** | ES measures | ES continuous and jump components; ± semivariances; √quarticity × RV; realized kernel; overnight variance max(ES − SPY, 0) |

- **HAR and Persistence** use set A only. **EN and RF** use all four sets.
- The ML models **always keep the raw HAR lags**, so they nest HAR.
- **Late-starting series** (VVIX 2006, VIX3M 2009, ES 2009, VIX9D 2011) enter a fold once they have 3 years of history.
- The full list, with sources and lags, is in report Appendix A and in `Output/data/feature_dictionary.csv`.

### 5.3 Stationarity step (new in v5.4)

1. **Diagnose once,** on the development sample only (`Code/stationarity/stationarity.m`): ADF and KPSS on every target and input, in levels and logs.
2. **Transform inside every training window** (`Code/models/walk_forward.m`): every input except the raw HAR lags and calendar flags gets its d\* from eq. 5 of the proposal, chosen on that window's data only. d\* = 0 leaves the input unchanged.
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

- The all-model development window is **2015–2017 (755 days)**.
- SPY sets A–C also have a longer common development window, **2010–2017 (2,013 days)**.
- The locked test has **nine re-fits**, at the ends of 2017 through 2025.

Rules: no shuffling and no k-fold cross-validation. The main design uses an expanding window; a rolling 10-year (SPY) or 8-year (ES) window is a robustness check.

### 5.5 Locked test

- **Development:** 2010–2017 (SPY) and 2015–2017 (ES). This is where every design choice was made.
- **Test:** 2 Jan 2018 – 5 Oct 2026 (ES to 30 Sep 2026). It was **run once**, on 21 October 2026, for the main design and every robustness scenario.
- **The freeze:** the code that produced the test results is git tag `design-freeze`. No setting was changed after the test was run. Anything changed from now on is **exploratory** and must be labelled as such.
- **The lock:** `cfg.runLockedTest` in `Code/rv_config.m`. While it is `false`, `run_job(..., 'test')` refuses to run. It was set to `true` once, after the freeze.

### 5.6 Forecast floor

- **The rule:** a linear forecast (HAR or EN) below the **training-window minimum of daily RV** is set to that minimum.
- **Why:** a negative variance is impossible, and it breaks QLIKE.
- **Not needed for the forest,** which only averages past targets.
- **Reported:** how often the floor binds (`floor_pct`).

---

## 6. The models and benchmarks

| Forecast | Type | Inputs | Estimation | Owner | Code |
|---|---|---|---|---|---|
| Persistence | Naive benchmark | Latest RV | None | James | `models/fit_persistence.m` |
| HAR | Model 1 | Set A | OLS per horizon | James | `models/fit_har.m` |
| Elastic net | Model 2 | Sets A–D | Penalized regression, tuned | Aryan | `models/fit_en.m` |
| Random forest | Model 3 | Sets A–D | Bagged trees, tuned | Aryan | `models/fit_rf.m` |
| VIX² | Market benchmark | VIX | None (swap check only) | All | `evaluation/evaluate_phase.m` |

### 6.1 Elastic net

> minimize (1/2N)Σ(y − β₀ − x'β)² + λ[α|β|₁ + (1−α)/2·|β|₂²]

- **λ** sets the overall penalty strength.
- **α** mixes the two penalties: **lasso** (α = 1) sets some coefficients to zero, i.e. selects variables; **ridge** (α = 0) shrinks all of them.
- **Grid:** α ∈ {0, 0.1, 0.25, 0.5, 0.75, 0.9, 1} × 50 λ values. The pair with the best validation QLIKE wins.
- Ridge is solved in closed form, because MATLAB's `lasso` can't do α = 0.
- We report the chosen coefficients and how often each feature is selected across folds.
- It was kept **exactly as specified** for the test, with no guard against its breakdown on some sets (Sections 9.4 and 11.4).

### 6.2 Random forest

- **How it works:** many trees, each grown on a bootstrap sample with random features tried at each split. The forecast is their average.
- **Tuning:** `bayesopt` (12 trials of 100-tree forests) tunes the minimum leaf size (1–200) and the number of features per split. The final forest has 300 trees.
- **Key limitation:** a forest **can't forecast outside the range of volatility it has seen in training.** This is what went wrong for the ES forests in March 2020 (Section 9.6).
- **Explanations:** impurity importance, Shapley values, and ALE plots.

### 6.3 Deliberately NOT estimated

LogHAR, HAR-J, SHAR, HARQ, ARFIMA, boosting, neural networks and forecast combinations are all out of scope (proposal §4.8). With only three models, gains can be attributed cleanly to non-linearity or to information. One exploratory boosting run was allowed at the end; it was not carried out.

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
  - *"Directionally consistent"* means our signal is positively correlated with the payoff.

---

## 8. The code and the workflow

There is **one pipeline**. Every target, feature, model and table comes from the same code path, and the folders under `Code/` follow the stages of the proposal's Figure 1: data, stationarity, models, evaluation.

### 8.1 Folder layout

```
Fordham-Advanced-ML-Realized-Volatility-Forecasting/
├── Realize Volatility Data/   inputs (never modified), proposal v5.4, data description, data dictionary, QC reports
├── Research Papers/           the reference papers (Section 10)
├── Code/                      all MATLAB code (+ README.md)
│   ├── rv_config.m            every setting, including the test lock
│   ├── run_parallel.sh, main.m, run_job.m   drivers
│   ├── data/                  1. loading, targets, features, sets, scenarios, audit, export
│   ├── stationarity/          2. ADF, KPSS, FFD, long memory
│   ├── models/                3. walk-forward engine, Persistence, HAR, EN, RF
│   └── evaluation/            4. losses, DM, MCS, all tables, explanations, figures
├── Output/                    everything the code produces (safe to delete and regenerate)
│   ├── panel.mat              all inputs aligned on the NYSE calendar (a cache)
│   ├── data/                  design_SPY.csv, design_ES.csv, feature_dictionary.csv
│   ├── forecasts/<phase>/<scenario>/<target>_h<h>.mat
│   ├── tables/<phase>/<scenario>/   CSV tables + summary.md + plots
│   ├── tables/audit_*.csv     missing-data audit (proposal 3.2) and target cross-check
│   └── logs/                  one log per MATLAB job
├── Report/                    report (.md source, .docx, .pdf, figures, build script)
├── docs/Project_Guide.md      this file
├── agents/                    notes for coding agents
└── README.md                  how to run everything
```

`<phase>` is `dev` (development) or `test` (locked test). `<scenario>` is `main` or a robustness scenario.

### 8.2 What each code file does

| Stage | File (under `Code/`) | Plain-English job |
|---|---|---|
| Settings | `rv_config.m` | Every setting: horizons, dates, the 5-year burn-in, the FFD grid, tuning grids, MCS settings, the test lock |
| Drivers | `run_parallel.sh`, `main.m`, `run_job.m` | Parallel and serial runners. One job = one target × horizon × scenario, every model on every set |
| 1. Data | `data/load_panel.m` | Reads all files and lines them up on the NYSE calendar; adds ES holiday rows to the next NYSE day; caches `Output/panel.mat` |
| | `data/build_design.m` | Targets (never filled; dropped if >20% missing) and every feature, with publication lags; records each feature's source and shift |
| | `data/set_columns.m`, `data/sample_start.m`, `data/make_spec.m` | Which features are in A–D; start dates; the main design and the robustness scenarios |
| | `data/export_design.m` | Writes the modelling dataset (`Output/data/design_SPY.csv`, `design_ES.csv`) and `feature_dictionary.csv` |
| | `data/data_audit.m` | Reproduces the missing-data counts of proposal §3.2; Risk Lab vs Oxford-Man target cross-check |
| | `data/ffill_limit.m`, `rollmean.m`, `lagk.m` | Helpers: bounded last-value carry, rolling means with a coverage rule, publication lags |
| 2. Stationarity | `stationarity/adf_test.m`, `kpss_test.m` | ADF and KPSS, coded by hand (the Econometrics Toolbox isn't needed) |
| | `stationarity/ffd.m`, `ffd_choose.m` | Fractional differencing; the d\* search |
| | `stationarity/stationarity.m`, `long_memory.m` | The diagnostics table on development data; local Whittle, Bhatti's d_LTM and memory left in forecast errors |
| 3. Models | `models/walk_forward.m` | The yearly loop: label gap, d\* per fold, screening, imputation, tuning, floors |
| | `models/fit_persistence.m`, `fit_har.m`, `fit_en.m`, `fit_rf.m` | The benchmark and the three models |
| 4. Evaluation | `evaluation/evaluate_phase.m` | All tables: losses, DM vs HAR and Persistence, MCS, RQ1/RQ2, regimes, utility, swap, success criterion, coefficients, importances, FFD orders |
| | `evaluation/dm_test.m`, `mcs.m`, `qlike.m` | The tests and the loss |
| | `evaluation/explain_rf.m` | Shapley values and ALE for the last-fold forest |
| | `evaluation/report_figures.m` | Pipeline and walk-forward diagrams for the report |
| Report | `Report/build_report.py` | Markdown → styled Word and PDF |

### 8.3 How to run things

From the repository root, in a terminal:

```sh
Code/run_parallel.sh dev all      # development: main design + all 11 robustness scenarios
Code/run_parallel.sh test all     # locked test: the same, on 2018 – Oct 2026 (needs cfg.runLockedTest = true)
Code/run_parallel.sh dev main     # one scenario only; any scenario name works in place of main
python3 Report/build_report.py    # rebuild the report (.docx and .pdf)
```

- **Scenarios:** `main`, `rolling`, `rv15`, `qmle`, `strict`, `rv1`, `rk`, `holdrop`, `oxford`, `vix1996`, `rfdefault`, `ffdlags`. What each one changes is in `Code/README.md` and Section 9.10.
- **The new `strict` scenario** (SPY) drops any origin whose target or 22-day lag window touches a missing Risk Lab day, instead of using the 80% / 20% rules.
- **Speed:** `JOBS=n` sets how many MATLAB processes run at once (default 7). Set `MATLAB=/path/to/matlab` if MATLAB isn't in `/Applications`. The report gives about 35 minutes for `dev all` and about 45 minutes for `test all` on a 14-core Mac.
- **Serial run inside MATLAB:** `cd Code; main` (development period only; slower).
- **A single piece, in MATLAB from the repository root:**

```matlab
addpath(genpath('Code'))
run_job('SPY', 22, 'dev', 'main');  evaluate_phase('dev', 'main');
stationarity('dev');  data_audit;  export_design;
```

- **Progress:** `Output/logs/`.
- **Results:** `Output/tables/<phase>/<scenario>/summary.md`.
- **Rebuild the report:** edit `Report/RV_Forecasting_Report.md`, then run `python3 Report/build_report.py` (needs Python 3 and pandoc, plus xelatex for the PDF).
- **Software:** MATLAB R2026a with the Statistics and ML Toolbox, and `zsh` for the parallel runner. No Parallel Computing Toolbox is needed: `run_parallel.sh` launches separate MATLAB processes. No Econometrics Toolbox either.

### 8.4 Changing something safely

The design is frozen, so **any change now is exploratory**. It must not replace the frozen results, and it must be labelled as exploratory in the report.

1. Change a setting in `Code/rv_config.m`, a feature in `Code/data/build_design.m`, or a model in `Code/models/fit_*.m`.
2. If you changed data loading, delete `Output/panel.mat` (it's a cache). Then rerun `Code/run_parallel.sh dev main` (or the scenario you changed).
3. Compare the new `summary.md` with a saved copy of the old one.
4. **Never use test results to choose a change.** The frozen test numbers stay the reported ones.

### 8.5 Working together on GitHub

- **The repository** is `SGhuman123/Fordham-Advanced-ML-Realized-Volatility-Forecasting`. It is public with permission, so the professor can see it.
- **Branches:** `main` holds the agreed project. Make changes on your own branch and open a pull request into `main`.
- **The freeze tag:** `design-freeze` marks the exact code that produced the test results. Check it out to reproduce them.
- **After any change:** rerun the affected scenario and check that `summary.md` still matches what you expect.

### 8.6 Where the team modules went

The earlier per-person modules have been folded into the single pipeline:

- **Robin's data preparation** is now `Code/data/export_design.m`. It writes the modelling dataset `Output/data/design_SPY.csv` and `design_ES.csv` (targets and features A–D per origin) and `Output/data/feature_dictionary.csv`.
- **Aryan's independent HAR vs Persistence script** became the `strict` missing-day robustness scenario. Its cross-check of Risk Lab against Oxford-Man (correlation 0.968) moved to `Code/data/data_audit.m`.

---

## 9. Results

**The locked test is the verdict.** Every number in Sections 9.1–9.12 comes from the single run of the frozen design on 2 January 2018 – October 2026, nine years that include four stress episodes (Feb 2018, COVID 2020, the 2022 bear market and the April 2025 tariffs). All ten forecasts share their sample: n = 2,109–2,135 days for SPY (origins with a missing SPY day or a target more than 20% missing drop out) and n = 2,176–2,197 for ES. The development results that fixed the design are summarized in Sections 9.13–9.14.

Numbers are **QLIKE ratios vs HAR** (below 1 = better). **Bold** = significantly better than HAR; ✓ = in the MCS; † = significantly better than **Persistence**.

### 9.1 Main accuracy table (locked test)

| Target | h | HAR QLIKE | Persist. | EN A | RF A | EN B | RF B | EN C | RF C | EN D | RF D |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | 0.235 ✓ | 1.308 | 1.001 ✓† | 0.982 ✓† | 1.346 ✓ | **0.857** ✓† | 1.332 ✓ | **0.846** ✓† | 2.109 | 0.922 ✓† |
| SPY | 5 | 0.215 ✓ | 1.366 | 0.999 ✓† | 1.051 ✓† | 0.959 ✓† | **0.883** ✓† | 1.973 ✓ | 0.930 ✓† | 2.878 | 1.149 ✓ |
| SPY | 22 | 0.333 ✓ | 1.508 ✓ | 1.023 ✓† | 1.085 ✓† | 0.971 ✓ | 1.055 ✓† | 0.987 ✓ | 1.043 ✓ | 1.291 ✓ | 1.270 ✓ |
| ES | 1 | 0.193 ✓ | 1.211 ✓ | 1.001 ✓† | 1.133 ✓ | 1.557 | 1.051 ✓ | 1.489 ✓ | 1.006 ✓† | 1.071 ✓† | 0.968 ✓† |
| ES | 5 | 0.216 ✓ | 1.304 ✓ | 1.001 ✓† | 1.344 ✓ | 2.061 ✓ | 1.321 ✓ | 2.368 | 1.432 ✓ | 0.984 ✓† | 1.057 ✓† |
| ES | 22 | 0.387 ✓ | 1.559 ✓ | 1.000 ✓† | 1.229 ✓† | 1.206 ✓ | 1.348 ✓ | 1.270 ✓ | 1.399 ✓ | 1.255 ✓ | 1.213 ✓ |

**How to read it:**

- **SPY, 1 and 5 days: the forest on market features wins.** RF C (0.846) and RF B (0.857) at 1 day, and RF B (0.883) at 5 days, beat HAR significantly (p < 0.01). They stay in the MCS and beat Persistence. That is a 12–15% loss reduction.
- **SPY, 22 days: nothing beats HAR.** The best forecast is EN B (0.971, p = 0.33).
- **ES: nothing beats HAR at any horizon.** The best ratios are 0.968 (RF D, 1 day) and 0.984 (EN D, 5 days), neither significant. The ES forests on sets A–C are 23–43% *worse* than HAR at 5 and 22 days.
- **HAR beats Persistence everywhere.** Persistence is 21–56% worse than HAR, and HAR's advantage is significant at every horizon for both targets. This reverses the development window.
- **The MCS rarely discriminates.** HAR is in the 10% MCS in every case. The MCS drops the worst forecasts (Persistence at short SPY horizons, the EN on SPY set D) but can't separate HAR from the winning forests.
- **Under MSE** no improvement over HAR is significant anywhere. The best SPY 1-day ratio is RF C at 0.69 (p = 0.08).
- **The elastic net still breaks down on some sets:** 2.1–2.9× worse than HAR on SPY set D at 1 and 5 days, and 1.5–2.4× worse on ES sets B and C. Floors bind on up to 3% of days.
- **Out-of-sample R²** (MSE-based):

| | h = 1 | h = 5 | h = 22 |
|---|---|---|---|
| SPY: HAR | 0.53 | 0.48 | 0.09 |
| SPY: best model | 0.67 (RF C) | 0.52 (RF B) | 0.25 (RF A) |
| ES: HAR | 0.63 | 0.52 | 0.17 |
| ES: best model | 0.63 (EN A) | 0.52 (EN A) | 0.17 (HAR) |

### 9.2 RQ1: set A only

QLIKE ratios between set-A forecasts; the one-sided DM p-value for "first beats second" is in brackets.

| Comparison | SPY h=1 | SPY h=5 | SPY h=22 | ES h=1 | ES h=5 | ES h=22 |
|---|---|---|---|---|---|---|
| HAR vs Persistence | **0.765** (<0.001) | **0.732** (<0.001) | **0.663** (0.038) | **0.826** (<0.001) | **0.767** (<0.001) | **0.641** (0.021) |
| EN A vs HAR | 1.000 (0.95) | 0.999 (0.22) | 1.023 (0.90) | 1.000 (0.61) | 1.000 (0.62) | 1.000 (0.50) |
| RF A vs HAR | 0.982 (0.20) | 1.051 (0.93) | 1.085 (0.96) | 1.133 (0.94) | 1.344 (0.95) | 1.229 (0.96) |
| RF A vs Persistence | **0.751** (<0.001) | **0.769** (<0.001) | **0.720** (0.048) | 0.936 (0.20) | 1.031 (0.57) | **0.788** (0.045) |

- **With volatility history alone, neither ML model beats HAR,** at any horizon, for either target.
- **The EN on set A is HAR:** validation picks almost no shrinkage.
- **The set-A forest's development edge at 1 day does not survive.** It is roughly level with HAR for SPY at 1 day and worse elsewhere.
- **The horizon hypothesis is rejected.** Gains don't grow at 5 and 22 days; the forest falls further behind as the horizon lengthens.
- **HAR is informative:** it beats the Persistence floor at every horizon.

### 9.3 RQ2: does the RF gain more from extra features?

Gain from set A to set s, as a % of each model's set-A loss; the DiD and its one-sided p-value for "RF gains more".

| Target | h | Step | EN gain | RF gain | DiD | p |
|---|---|---|---|---|---|---|
| SPY | 1 | A→B / A→C / A→D | −35% / −33% / −111% | +13% / +14% / +6% | +0.11 / +0.11 / +0.28 | 0.001 / 0.001 / < 0.001 |
| SPY | 5 | A→B / A→C / A→D | +4% / −98% / −188% | +16% / +12% / −9% | +0.03 / +0.24 / +0.38 | 0.003 / < 0.001 / < 0.001 |
| SPY | 22 | A→B / A→C / A→D | +5% / +4% / −26% | +3% / +4% / −17% | −0.01 / +0.00 / +0.03 | 0.64 / 0.46 / 0.33 |
| ES | 1 | A→B / A→C / A→D | −56% / −49% / −7% | +7% / +11% / +15% | +0.12 / +0.12 / +0.05 | < 0.001 / < 0.001 / < 0.001 |
| ES | 5 | A→B / A→C / A→D | −106% / −137% / +2% | +2% / −7% / +21% | +0.23 / +0.28 / +0.06 | < 0.001 / < 0.001 / 0.098 |
| ES | 22 | A→B / A→C / A→D | −21% / −27% / −26% | −10% / −14% / +1% | +0.03 / +0.04 / +0.11 | 0.29 / 0.29 / 0.064 |

- **Answer:** the forest gains significantly more than the EN at 1 and 5 days, for both targets. The hypothesis is supported at short horizons, not at 22 days.
- **Two mechanisms.** In most significant cases the forest improves while the EN gets *worse*. So part of the DiD is EN fragility, not extra information found by the forest.
- **The clean cases** don't rely on an EN breakdown:
  - SPY, 5 days, A→B: both gain, the forest +16% and the EN +4% (p = 0.003);
  - ES, 1 day, A→D: the forest gains +15% while the EN loses 7% (p < 0.001). The forest uses the ES jump and semivariance block better.
- **22 days:** richer features help neither model.

### 9.4 Why the elastic net breaks down on some sets (key talking point)

1. In some years validation picks an almost-zero penalty, so the EN is nearly OLS.
2. Near-OLS on very correlated inputs gives **large offsetting coefficients**. The culprit is the implied-vol block (VIX, ATM 1M/3M/1Y IV, VRP).
3. When those inputs move 1–2 standard deviations outside their training range, the forecast falls below zero and is floored (far too low), or it overshoots.
4. **QLIKE punishes under-prediction hard.**

On development data this hit SPY sets B and C (floors on 8–12% of days). On the test it hit SPY set D and ES sets B and C.

**FFD doesn't fix this.** These implied-vol levels mostly **pass** ADF (d\* = 0), so they're left unchanged; the problem is collinearity, not non-stationarity.

**Why it wasn't fixed.** The team decided before the test to keep the EN as the proposal specifies and report the breakdown as a finding. Possible remedies (a λ floor, an unpenalized HAR block as in Kılıç, or trimming the implied-vol block) are exploratory next steps.

### 9.5 RQ3: variance-swap check (22 days)

Mean P&L per 22-day trade in vol-points² (actual close-to-close payoff), with its t-statistic, and ρ = the correlation between our signal (K − F) and the realized payoff.

| Strategy | SPY-target forecasts | ES-target forecasts |
|---|---|---|
| Always sell variance | +70.7 (t = 1.1) | +68.1 (t = 1.0) |
| Persistence | +37.5 (t = 0.6), ρ = −0.11 | +24.8 (t = 0.4), ρ = −0.13 |
| HAR | +52.4 (t = 1.2), ρ = 0.10 | +45.6 (t = 0.8), ρ = 0.05 |
| EN A | +46.1 (t = 1.1), ρ = 0.10 | +53.7 (t = 0.8), ρ = 0.10 |
| RF A | **+85.2 (t = 2.3), ρ = 0.28** | +44.6 (t = 0.7), ρ = 0.08 |
| RF B | +61.4 (t = 1.6), ρ = 0.16 | +21.1 (t = 0.3), ρ = 0.08 |
| RF D | +30.4 (t = 0.5), ρ = 0.09 | +17.9 (t = 0.3), ρ = 0.08 |

(The other rows are in report Section 8.4.)

- **Selling variance paid, but noisily.** About +70 per trade, but the 2018, 2020 and 2025 spikes make it insignificant (t ≈ 1).
- **Every estimated forecast times the swap in the right direction** (ρ > 0); Persistence doesn't. So the success criterion's "directionally consistent" condition is met for both targets.
- **Only one timing rule is significant:** the SPY set-A forest (+85.2, t = 2.3). It is the only rule that beats always selling.
- **RQ3 is not supported.** ES-target signals line up *worse* with the payoff (ρ 0.05–0.10) than SPY-target signals (0.09–0.28). The ES models, trained without a crisis in their history, under-forecast the 2020 spike.

### 9.6 Regimes, extreme days and stress episodes

QLIKE ratio vs HAR; the best one or two forecasts per cell, plus Persistence.

| Sample | SPY h=1 | SPY h=22 | ES h=1 | ES h=22 |
|---|---|---|---|---|
| Calm | RF C 0.87, RF B 0.89; Persist. 1.36 | EN C 0.98; Persist. 1.54 | RF D 0.94; Persist. 1.24 | EN A 0.96; Persist. 1.66 |
| High RV | RF B 0.76, RF C 0.77; Persist. 1.15 | EN B 0.93; Persist. 1.37 | EN D 0.88; RF A 1.38 | every ML ≥ 1.13; Persist. 1.24 |
| Extreme days | RF C 0.51, EN B 0.53 | EN B 0.84; Persist. 1.57 | EN D 0.79, EN B 0.82; RF A 1.36 | EN B 0.97; Persist. 1.36 |
| Feb 2018 | EN B/C 0.71; RF A 1.64 | every ML ≥ 1.55; Persist. 0.87 | EN B 0.58, EN C 0.64 | EN B 0.76, RF D 0.85 |
| COVID 2020 | RF C 0.72, EN B 0.74; **RF D 2.25** | EN B 0.81, RF A 0.85; Persist. 2.03 | **RF A–D 2.6–4.5**; Persist. 0.79 | every ML 1.19–1.72 |
| 2022 bear market | RF C 0.66, EN B/C 0.66 | EN B 0.72 | RF B 0.68, RF C 0.70 | RF C 0.83, RF D 0.86 |
| April 2025 tariffs | RF D 0.41, RF C 0.42 | EN D 0.52, RF D 0.58 | RF D 0.53, RF B 0.56 | EN B/C 0.82 |

- **At 1 day, ML beats HAR on extreme days and in stress episodes.** For SPY the best forests halve HAR's loss on extreme days (0.51) and in April 2025, and cut it by a third in 2022. That is the opposite of Rahimikia & Poon's single-stock finding.
- **The COVID failure is a training-history failure.** Every model whose training starts in 2010 (all ES models and SPY set D) never saw a crisis like 2008. In March 2020 these forests were 2.3–4.5× worse than HAR. The SPY forests on sets B and C, trained from 2005 and so through 2008, beat HAR in the same episode (0.72–0.80). A forest can't forecast above the range it was trained on. (An earlier v5.2 configuration with a 3-year burn-in showed the same weakness in 2008: forests trained only on calm 2005–2007 badly under-forecast the crisis.)
- **Persistence is poor everywhere except the first days of a spike,** where it reacts fastest.
- **At 22 days, extreme days stay hard for everyone.** Only EN B does slightly better than HAR (0.84 SPY, 0.97 ES).

### 9.7 Economic value: utility

Realized utility in % per year (maximum 4.00).

| Target | h | Persistence | HAR | Best model |
|---|---|---|---|---|
| SPY | 1 | 3.31 | 3.54 | 3.62 (RF B, RF C) |
| SPY | 5 | 3.32 | 3.55 | 3.61 (RF B) |
| SPY | 22 | 2.70 | 3.21 | 3.25 (EN B) |
| ES | 1 | 3.48 | 3.61 | 3.62 (RF D) |
| ES | 5 | 3.35 | 3.53 | 3.54 (EN D) |
| ES | 22 | 2.40 | 3.04 | 3.05 (EN A) |

- **HAR is worth 0.1–0.6 percentage points a year more than Persistence,** most at 22 days.
- **The best ML model adds about 0.06–0.08 points a year over HAR for SPY at 1 and 5 days,** and almost nothing elsewhere. Having a model matters more than which model.

### 9.8 What drives the forecasts

Averaged over the nine test re-fits:

- **Forest, 1 day (set D):** the VIX9D − VIX spread dominates for both targets (27% of importance), then the weekly negative-return average (10–12%), ES continuous variation (8–9%) and ES negative semivariance (8–9%).
- **Forest, 22 days (set D):** the IV term slope leads (9–10%), then cross-market implied vol (log VXN) and negative-return averages.
- **Elastic net, set D:**
  - 1 day: the Parkinson range, the weekly negative-return average, the VIX9D spread, ES negative semivariance and the VRP, selected in every re-fit;
  - 22 days: the VIX3M − VIX spread has the largest coefficient (negative), then the 1-month IV skew and the weekly ES jump average.
- **Does implied vol help?** Yes, mainly through the **shape** of the term structure (VIX9D and VIX3M spreads, term slope) and the skew, not its level. Macro, stress and calendar features rank at the bottom.
- **HAR coefficients** are stable (total persistence 0.88–0.92 at 1 day). After 2020 the weight moves from the monthly lag to the weekly lag.
- **FFD in the test re-fits:** the 10Y yield and the 10Y − 3M spread are differenced in every re-fit (d\* 0.10–0.40, retained correlation 0.96–0.97), and ATM 1Y IV in a third of them. Every other input passes ADF undifferenced.
- **Shapley values** for the last test re-fit (forest on set D, 22 days, forecasting 2026) agree with the importance ranking: the IV term slope leads for both targets, then log VXN and the monthly negative-return average. **ALE plots** are steep at low values and flat beyond the training range: the forest can't extrapolate (report Section 8.7, Figure 6).

### 9.9 Memory in forecast errors

This checks whether the forecast errors still carry long memory that a better model could exploit (`stationarity/long_memory.m`). On development data the 1-day HAR errors had almost no autocorrelation beyond the first few lags (report Figure 2). On the test, the ML models' 1-day errors show low-frequency persistence (local Whittle d of 0.06–0.46 at the wider bandwidth, against −0.08 for SPY HAR and 0.15 for ES HAR). This is mostly a symptom of the 2020 level shift, which ML models absorb worse than HAR, rather than unmodelled long memory (report Section 8.8).

### 9.10 Robustness on the test

All 11 robustness scenarios were run on the test with the frozen design:

| Scenario | What changes |
|---|---|
| `rolling` | 10-year (SPY) or 8-year (ES) rolling window |
| `rv15`, `qmle` | SPY target and lags from Risk Lab 15-min RV or QMLE |
| `strict` | SPY: any origin whose target or 22-day lag window touches a missing day is dropped |
| `rv1`, `rk` | ES target and lags from 1-min RV or the realized kernel |
| `holdrop` | ES holiday rows dropped instead of merged |
| `oxford` | SPY set C + Oxford-Man jump and semivariance features (to Feb 2022) |
| `vix1996` | SPY: HAR lags + log VIX, sample from 1996 |
| `rfdefault` | Untuned forest (500 trees, leaf 5, p/3) |
| `ffdlags` | The ML lag block is FFD log RV instead of raw lags |

The `strict` rule removes about a quarter of the SPY 22-day test origins (2,160 → 1,647). What the checks show on the test (report Section 8.9):

- **SPY, short horizons:** the 1-day forest gain (0.83–0.89 of HAR) survives the alternative SPY targets, the strict rule, untuned forests, FFD lags and the 1996 start.
- **Rolling window:** it weakens (0.93, not significant), because the window drops 2008 from training. This is the same training-history story as COVID.
- **ES:** nothing significantly beats HAR, except the *untuned* forest on set D at 1 day (0.91).
- **22 days:** nothing beats HAR anywhere, and Persistence is 1.3–1.7 times worse than HAR in every scenario. Results are in `Output/tables/test/<scenario>/summary.md`.

### 9.11 Success-criterion scorecard

| Target | h | Best ML | Ratio vs HAR | p vs HAR | In MCS | Beats HAR | Ratio vs Persist. | Beats Persist. |
|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF C | 0.846 | < 0.001 | yes | **yes** | 0.646 | **yes** |
| SPY | 5 | RF B | 0.883 | 0.006 | yes | **yes** | 0.646 | **yes** |
| SPY | 22 | EN B | 0.971 | 0.33 | yes | no | 0.644 | no |
| ES | 1 | RF D | 0.968 | 0.30 | yes | no | 0.800 | **yes** |
| ES | 5 | EN D | 0.984 | 0.41 | yes | no | 0.755 | **yes** |
| ES | 22 | EN A | 1.000 | 0.50 | yes | no | 0.641 | **yes** |

- **The success criterion is met.** The forest beats HAR significantly at two horizons (SPY 1 and 5 days), the MCS includes it, and the swap check is directionally consistent for both targets.
- **The success is narrow.** It holds for the main SPY target, at short horizons, on market-feature sets. It fails for ES and at 22 days, where HAR remains the forecast to beat, as Kılıç (2026) finds.
- **Informative forecasts:** HAR and the set-A EN beat Persistence at every horizon for both targets. The ones that don't are models on sets B–D (above all at 22 days) and the ES set-A forest at 1 and 5 days.

### 9.12 Development versus test

| Finding | Development (2015–2017) | Locked test (2018–2026) |
|---|---|---|
| 1-day ML gain over HAR | Large for both targets (forest 0.61–0.81) | SPY only (forest 0.85); ES none |
| Set-A forest vs HAR | Beats HAR at 1 day | Does not beat HAR |
| HAR vs Persistence | Not significantly better | Significantly better at every horizon |
| RQ2 (forest gains more) | Only where the EN breaks | Yes at 1 and 5 days, partly through EN fragility |
| RQ3 (ES aligns better with swaps) | Directionally yes | No |
| Gains grow with the horizon | No | No |

**Why the change?** The calm development window flattered both the forests (which interpolate well inside a familiar range) and Persistence (which is excellent when nothing moves). Nine test years with four stress episodes reward HAR's smooth weighting of the past and punish models trained on too narrow a range of volatility.

### 9.13 Stationarity and long memory (development sample)

These diagnostics were run once, on development data, before the test.

- **74 ADF/KPSS tests** on both targets and every input (levels and logs).
- **65 show the long-memory pattern** (ADF rejects, KPSS also rejects): both targets, the HAR lags, VIX, the VIX9D and VIX3M spreads, ES measures, macro indices. This is exactly what Bhatti (2026) describes.
- **8 look like unit roots:** 3M and 1Y ATM implied vol, the 10Y−3M spread, the 10Y yield, and CISS. These are the ones FFD transforms.
- **1 is stationary on both tests:** √RQ × RV.
- **The orders are small:** d\* is 0.10–0.30 on the full development sample, with **96–99.5% correlation retained**.
- **Local Whittle d ≈ 0.37–0.63** for every RV series: strong long memory, which is why HAR works.
- **Bhatti's d_LTM is erratic** (0.08–0.92) on our short samples. It is reported only as a cross-check, as the proposal anticipates.
- **Bottom line:** FFD barely changes the inputs; it just removes slow drift.

### 9.14 Development period in brief

The all-model development window is 2015–2017 (755 days), a mostly calm period including record-low-volatility 2017. SPY sets A–C also have 2010–2017 (2,013 days). The full table is in report Section 7.1.

- **1 day:** the forest on any set beat HAR, by 18–30% for SPY and 13–39% for ES. It was the only forecast that also significantly beat Persistence.
- **5 and 22 days:** several models beat HAR, but apart from the ES EN on set B at 5 days, none significantly beat Persistence. HAR didn't significantly beat Persistence on 2015–2017 either. (On the longer SPY 2010–2017 window, Persistence was 6–10% worse than HAR.)
- **RQ1:** the set-A EN reproduced HAR. The set-A forest beat HAR at 1 day for both targets (0.89 and 0.87) and at 5 days for ES.
- **RQ2:** the significant DiDs came from the EN breaking down on SPY sets B and C. Where neither model broke, the forest never gained significantly more.
- **RQ3:** ES-target signals lined up better with the swap payoff (ρ 0.23–0.41 vs −0.11 to 0.38 for SPY). This did not survive the test.
- **Robustness:** every scenario reproduced the 1-day result (best forest 0.61–0.84 vs HAR). The `strict` rule gave results identical to the main design, because development has no missing SPY day.

**What was frozen on these results:** the four missing-day rules; ES holiday rows rolled forward; the EN as specified, with no guard; the forest's tuning budget (12 `bayesopt` steps, one seed) and every other setting in `rv_config.m`; and the feature sets, including VIX3M − VIX in set B (Section 11.4).

---

## 10. How our results compare with the literature

The papers are in `Research Papers/`.

| Paper | What they did | What they found | What we took |
|---|---|---|---|
| **Christensen, Siggaard & Veliyev (2023)**, *JFEC* (arXiv:2601.13014) | 29 Dow stocks; HAR family vs many ML models; MSE; h = 1, 5, 22 | With HAR lags only, ML ≈ HAR. With covariates, RF MSE is 0.90/0.80/**0.60** of HAR, and gains grow with the horizon | Floor rule; train-only standardization; no shuffling; RF-defaults check; ALE |
| **Kılıç (2026)**, Fed FEDS 2025-061r1 | S&P 500 RV 1996–2025; HAR, ARFIMA, regime-switching vs XGBoost and NNs; QLIKE, DM–HLN, MCS | ML beats HAR by ≤1% at 1 day and loses by 22 days; extra predictors don't help | Label-gap rule; DM–HLN; MCS √T block; euro-crisis window; utility; EN coefficients |
| **Rahimikia & Poon (2026)**, SSRN | 23 NASDAQ stocks with order-book and news data; 1 day; LSTM vs HAR | ML loses overall, wins on normal days, loses on extreme days | Extreme-day split; floor-frequency reporting |
| **Bhatti (2026)**, Fordham working paper | Long memory in stock prices; detectability boundary | d₀(T) = 5.81·T^−0.367; ADF passes while KPSS rejects under long memory | Read ADF and KPSS together; the d_LTM cross-check (with caveats). Cited in v5.4 §4.3 |

Also new in v5.4: **López de Prado (2018), ch. 5**, the source of the fractional-differencing method.

How our test results relate:

- **Christensen et al.:** like them, with volatility history alone ML does no better than HAR. Unlike them, our gains don't grow with the horizon. Under MSE our 22-day SPY ratios with covariates (0.86–0.92) are in their range but not significant over nine years of one index; they forecast 29 stocks and refit daily.
- **Kılıç: closest to us.** ML gains are concentrated at short horizons, they are modest, and macro predictors add nothing. Our 1-day SPY gain (12–15% QLIKE) is larger than Kılıç's (about 1%), which we put down to the implied-vol term-structure features that paper doesn't use. They are the forest's most important inputs.
- **Rahimikia & Poon:** at 1 day our forests do much *better* than HAR on extreme days (0.51 for SPY), the opposite of their finding. Index RV is smoother than single-stock RV, and our models see the implied-vol term structure, which moves before realized volatility. At 22 days extreme days stay hard for every model, as they find.
- **The practical lesson from 2020:** a tree-based volatility model needs at least one crisis in its training window, or it should be blended with a model that can extrapolate.

---

## 11. What changed from v5.2 to v5.4, limitations, and decisions taken

### 11.1 v5.4 changes and how they are implemented

| v5.4 change | Implementation |
|---|---|
| Persistence benchmark | `models/fit_persistence.m`; in every table; DM and MCS against it; "uninformative" flag |
| ADF/KPSS on every target and input | `stationarity/adf_test.m`, `kpss_test.m` (hand-coded), `stationarity.m` |
| FFD with d\* chosen per training window | `stationarity/ffd.m`, `ffd_choose.m`, `models/walk_forward.m`; d\* and retained correlation reported |
| Local Whittle and Bhatti estimator | `stationarity/long_memory.m` |
| FFD-lag robustness | scenario `ffdlags` |
| 5-year burn-in for development | `cfg.minTrainYears = 5` |
| Missing-data counts | `data/data_audit.m` (matches exactly) |
| Missing-day treatment ("to be decided") | Four rules frozen before the test (Section 5.1); scenario `strict` as the alternative |
| New figures (pipeline with Persistence and FFD) | `evaluation/report_figures.m` |

### 11.2 Earlier fixes still in place (from the v5.2 review)

- The literal floor rule.
- VIX9D enters from 2011 (3-year rule).
- True ridge (α = 0) in the EN grid.
- An automatic success criterion.
- From the papers: the extreme-day split, RF-defaults check, √T MCS blocks, euro-crisis window and floor reporting.

### 11.3 Limitations

1. **One test, one index.** Nine years of one index give limited power: many ratios of 0.90–0.97 aren't significant, and the MCS rarely excludes HAR.
2. **Levels-scale modelling** causes both the forest's extrapolation problem and the EN's floor and overshoot problems.
3. **A narrow benchmark set.** Richer econometric models (ARFIMA, CHAR, regime-switching HAR) might erase the remaining ML gains, so our conclusions are "relative to HAR and Persistence".
4. **Short ES history.** ES and set D start in 2010, so their training windows had no crisis before 2020.
5. **Noisy RF tuning:** one seed, 12 steps.
6. **Data gaps:** no order-book or news-text data; the ES session timing is inferred; pre-December-2008 ADS is the revised vintage (training rows only).
7. **A stylized swap check:** VIX² only approximates the strike; there are no costs; trades overlap.
8. **Many tests,** so read p-values together with the MCS.
9. **Hand-coded ADF and KPSS** (verified on simulated white noise and random walks).
10. **An earlier look at two benchmarks.** Before the team adopted a single pipeline, a standalone HAR script also scored HAR and Persistence on 2018–2026 (20 October 2026). Neither benchmark has tuning parameters, and no design choice used those numbers.

### 11.4 Decisions taken before the locked test

All of these were settled on development data and frozen at tag `design-freeze`:

1. **Missing-day treatment:** the four rules in Section 5.1 were frozen. The strict rule is a robustness check.
2. **ES holiday rows:** rolled into the next NYSE session. Dropping them is the `holdrop` check.
3. **Elastic-net stability:** the EN was kept **as specified**, with no λ floor or other guard. The breakdown is reported as a finding.
4. **RF tuning budget:** unchanged (12 `bayesopt` steps, one seed).
5. **Set B:** the VIX3M − VIX term-structure spread was added, as proposal §4.2 lists it.
6. **The missing calendar file:** not needed. Our calendar is equivalent for every date we use.
7. **Optional boosting run:** not carried out.
8. **Freeze procedure:** the code was tagged `design-freeze`, then `cfg.runLockedTest` was set to `true` and the test was run once.

No setting was changed after the test was run.

### 11.5 Exploratory next steps (outside the frozen design)

- An EN with an unpenalized HAR block or a λ floor.
- Forests on log RV, or forests combined with HAR.
- A training window that adds pre-2010 Oxford-Man jump measures to the ES models.
- The optional boosting run.

Any of these must be reported as exploratory, next to (not instead of) the frozen results.

---

## 12. Team roles, timeline and next steps

| Person | Lead responsibility (v5.4) | Pipeline stage |
|---|---|---|
| **Robin** | Risk Lab and VOLARE targets, feature alignment, publication lags, data dictionary, QC | `Code/data/` |
| **James** | **Persistence** and HAR; walk-forward engine; DM tests and MCS | `Code/models/` (benchmarks, walk-forward), `Code/evaluation/` |
| **Aryan** | Elastic net and random forest, tuning, coefficients, feature importance | `Code/models/` (EN, RF), `Code/evaluation/explain_rf.m` |
| **All** | Stationarity, utility, variance-swap comparison, report, presentation | `Code/stationarity/`, `Report/` |

| When | Milestone | Status |
|---|---|---|
| Mid-October | Data lock | Done |
| End of October | Persistence, HAR, first ML baseline | Done |
| Mid-November | Full sets A–D and ES runs | Done |
| — | **Design freeze and locked test** | Done (21 October 2026) |
| Through early December | Economic checks, final report, slides | Report done; slides to follow |

**Suggested next meeting:**

1. Walk through Section 9 together, test results first.
2. Agree the story for the slides and split them.
3. Decide whether to try any exploratory idea from Section 11.5, labelled as exploratory.

---

## 13. FAQ: questions you will probably be asked

### About the idea

**Q: Why is HAR so hard to beat?**
Volatility's main feature is long memory, and three averages capture it with only four parameters. There's little left for complex models to find, and they pay an estimation-noise cost. On the test, HAR was beaten only for SPY at 1 and 5 days.

**Q: Why add a naive Persistence benchmark?**
To check that any model, HAR included, actually adds something beyond "volatility tomorrow ≈ volatility today". It was a demanding bar in calm 2015–2017. On the test, HAR beat it at every horizon.

**Q: HAR didn't beat Persistence in development. Was HAR broken?**
No. 2015–2017 was mostly calm, and in a calm, persistent regime the latest RV is an excellent forecast, while HAR's intercept and monthly lag pull forecasts toward the higher training average. When volatility spikes, Persistence fails badly. On the longer SPY 2010–2017 window HAR already beat Persistence, and on the 2018–2026 test Persistence was 21–56% worse than HAR, significantly, at every horizon for both targets.

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
v5.4 says so explicitly. The target must stay what we're forecasting, and keeping the raw lags means both ML models still nest HAR. The `ffdlags` scenario tests the alternative (report Section 8.9).

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
All of them are in the test period. The team froze four rules before the test (Section 5.1): drop targets more than 20% missing, build lags from at least 80% of the window, drop origins with a missing RV_t, and carry inputs forward for a few sessions at most. Targets are never filled. The `strict` scenario drops every origin that touches a missing day instead.

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
For SPY at 1 and 5 days, yes: the random forest on market features (sets B and C) cuts QLIKE by 12–15%, significantly, stays in the MCS, and beats Persistence. For ES, and at 22 days, no: nothing significantly beats HAR. The ES forests failed in COVID because their training history starts in 2010, so they had never seen a crisis.

**Q: Why did the ES forests fail in March 2020?**
A forest forecasts averages of training targets, so it can't go above the highest volatility it has seen. ES data start in late 2009, so ES training windows (and SPY set D) contain no crisis like 2008. In March 2020 these forests were 2.3–4.5× worse than HAR. The SPY forests on sets B and C, trained from 2005, had 2008 in their history and beat HAR in the same episode.

**Q: Why does the elastic net do worse with more information?**
Collinear implied-vol levels plus almost no penalty give offsetting coefficients. When those features move outside their training range, forecasts go negative and get floored (or overshoot), and QLIKE punishes that heavily. FFD doesn't help, because those inputs aren't unit-root. On the test this hit SPY set D and ES sets B and C. The team chose to keep the EN as specified and report this.

**Q: Does the forest really extract more from extra features (RQ2)?**
At 1 and 5 days the DiD is significant for both targets, but often because the EN gets worse. The clean cases are SPY 5 days A→B and ES 1 day A→D, where the forest gains clearly more.

**Q: Does implied volatility help?**
Yes, through its **shape** more than its level. The VIX9D − VIX spread is the forest's top input at 1 day (27% of importance), the IV term slope leads at 22 days, and VIX3M − VIX has the EN's largest 22-day coefficient.

**Q: Does the ES target help for variance swaps (RQ3)?**
No. ES-target signals line up worse with the swap payoff than SPY-target ones on the test, mainly because the ES models under-forecast the 2020 spike.

**Q: Why does "always sell variance" make money?**
The variance risk premium: implied volatility is usually above what's realized. On the test it earned about +70 vol-points² per trade, but the 2018, 2020 and 2025 spikes make it insignificant (t ≈ 1). Only the SPY set-A forest's timing rule beat it significantly.

**Q: Are the results robust?**
On development data, every robustness scenario reproduced the 1-day result. On the test, the SPY 1-day forest gain survives every scenario that keeps 2008 in training, and nothing beats HAR at 22 days (report Section 8.9).

### About the process

**Q: Have we looked at the test period?**
Yes, once, as the proposal prescribes. Every design choice was frozen on development data at tag `design-freeze`, and then the test was run for the main design and every robustness scenario. Nothing was changed afterwards. One disclosure: before the pipeline was unified, a standalone HAR script also scored HAR and Persistence on 2018–2026 (20 October 2026). Neither has tuning parameters, and no design choice used those numbers.

**Q: The ML gain holds only for SPY at short horizons. Is that a failure?**
No. The success criterion is met, and a narrow result is still a finding. Failing to beat HAR elsewhere is a legitimate, well-documented outcome (proposal §6; Kılıç, 2026).

**Q: Can we still improve the models?**
Only as exploratory work, reported next to the frozen results (Section 11.5). The test numbers in the report stay as they are.

**Q: Did we deviate from the proposal?**
No substantive deviations. The choices the proposal left open (missing days, ES holidays) were decided before the test and are documented in report §11. The named calendar file is absent, but our calendar is equivalent. Report Appendix B checks every proposal item.

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
| **Locked test** | 2018 – Oct 2026; run once, after the design was frozen |
| **`design-freeze`** | The git tag of the code that produced the test results |
| **Scenario** | The main design or one robustness variant (e.g. `strict`, `rolling`) |
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
| Development / test | 2005–2017 / 2 Jan 2018 – 5 Oct 2026 (ES to 30 Sep 2026) |
| Burn-in | 5 years: SPY forecasts from 2010, ES/set D from 2015 |
| Test sample | SPY n = 2,109–2,135; ES n = 2,176–2,197; nine re-fits |
| Development windows | 2015–2017, 755 days (all models); 2010–2017, 2,013 days (SPY sets A–C) |
| Missing SPY days | 33, all in the test period; 0 in development |
| ES holiday rows | 121, rolled into the next NYSE day |
| **Test: SPY 1 day** | RF C 0.846, RF B 0.857 vs HAR (p < 0.01; beat Persistence) |
| **Test: SPY 5 days** | RF B 0.883 vs HAR (p = 0.006) |
| **Test: SPY 22 days** | Best EN B 0.971 (p = 0.33): HAR not beaten |
| **Test: ES** | Best RF D 0.968 (1 day), EN D 0.984 (5 days): not significant |
| Test: HAR vs Persistence | Persistence 21–56% worse; HAR significantly better everywhere |
| Test: ES forests in COVID | 2.3–4.5× worse than HAR (training starts 2010) |
| Test: SPY 1-day R² | HAR 0.53 → RF C 0.67 |
| Test: always sell variance | +70.7 (SPY) / +68.1 (ES) vol-pts² per trade, t ≈ 1 |
| Test: utility | HAR +0.1–0.6 pp/yr over Persistence; best ML +0.06–0.08 pp/yr over HAR (SPY 1 and 5 days) |
| Test: top forest input (1 day) | VIX9D − VIX spread, 27% of importance |
| Development: 1-day forest vs HAR | 18–30% better (SPY), 13–39% (ES) |
| Stationarity tests | 74: 65 long-memory pattern, 8 unit root, 1 stationary |
| FFD orders | d\* 0.10–0.30 (development), 0.10–0.40 (test re-fits); 96–99.5% correlation retained |
| RV long memory | Local Whittle d ≈ 0.37–0.63 |
| EN floor frequency | 8–12% of SPY days (development, sets B/C); up to 3% (test) |
| Risk Lab vs Oxford-Man | Correlation 0.968 over 4,293 days |
| Robustness scenarios | 11 (incl. `strict` and `ffdlags`) |
| Runtime | ~35 min `dev all`, ~45 min `test all` (14-core Mac) |
| Freeze and lock | Tag `design-freeze`; `cfg.runLockedTest = true` in `Code/rv_config.m` (set once, after the freeze) |
