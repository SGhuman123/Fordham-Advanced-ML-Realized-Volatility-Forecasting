# Results: dev period, scenario "vix1996"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2001-01-02 to 2017-12-29, n = 4276)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 4276 | 0.1901 | 3.192 | 0.4357 | 0.3429 | 0.9709 | 1.407 | 0.8046 | 0.4211 | 0.2106 | -1.82 | 0.06875 | no | 0.0042 | no | 0.0864 | 0 | 1 | NaN |
| HAR | A | 4276 | 0.1958 | 2.268 | 0.4356 | 0.5331 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0034 | yes | 0.4576 | 0 | 1.03 | 0.7894 |
| EN | A | 4276 | 0.1958 | 2.268 | 0.4356 | 0.5331 | 1 | 1 | -14.94 | 3.315e-49 | 1 | 0.7476 | 0.4547 | no | 0.0034 | yes | 1 | 0 | 1.03 | 0.7896 |
| RF | A | 4276 | 0.1647 | 2.776 | 0.4261 | 0.4287 | 0.8412 | 1.224 | 6.044 | 1.634e-09 | 8.17e-10 | -1.494 | 0.1353 | yes | 0.9688 | yes | 0.4258 | 0 | 0.8664 | 9.604e-06 |
| EN | AV | 4276 | 0.2768 | 2.408 | 0.4364 | 0.5043 | 1.414 | 1.062 | -5.324 | 1.066e-07 | 1 | -1.313 | 0.1893 | no | 0.0014 | yes | 0.4258 | 6.244 | 1.456 | 1 |
| RF | AV | 4276 | 0.1646 | 2.882 | 0.4428 | 0.4067 | 0.8407 | 1.271 | 5.233 | 1.749e-07 | 8.745e-08 | -1.6 | 0.1097 | yes | 1 | yes | 0.2888 | 0 | 0.8658 | 6.811e-05 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 4276 | 1.03 | -0.8046 | 0.4211 | 0.7894 | 0.7105 | 1.82 | 0.06875 | 0.03438 | 0.0098 | 0.4576 |
| EN_A vs PER_A | 4276 | 1.03 | -0.8051 | 0.4208 | 0.7896 | 0.7105 | 1.82 | 0.06875 | 0.03438 | 0.0098 | 1 |
| RF_A vs PER_A | 4276 | 0.8664 | 4.279 | 1.921e-05 | 9.604e-06 | 0.8695 | 0.9381 | 0.3483 | 0.1741 | 1 | 0.354 |
| EN_A vs HAR_A | 4276 | 1 | -14.94 | 3.315e-49 | 1 | 1 | 0.7476 | 0.4547 | 0.2274 | 0.0098 | 1 |
| RF_A vs HAR_A | 4276 | 0.8412 | 6.044 | 1.634e-09 | 8.17e-10 | 1.224 | -1.494 | 0.1353 | 0.9324 | 1 | 0.354 |
| RF_A vs EN_A | 4276 | 0.8412 | 6.044 | 1.628e-09 | 8.139e-10 | 1.224 | -1.494 | 0.1353 | 0.9324 | 1 | 0.354 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_AV | RF_AV |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 3173 | 0.2136 | 0.9445 | 1 | 1 | 0.7846 | 1.489 | 0.7712 |
| High RV (monthly RV > threshold) | 1103 | 0.1444 | 1.083 | 1 | 1 | 1.082 | 1.097 | 1.136 |
| Normal days (target <= Q3 + 1.5 IQR) | 3859 | 0.1796 | 0.9576 | 1 | 1 | 0.7986 | 1.533 | 0.8113 |
| Extreme days (target > Q3 + 1.5 IQR) | 417 | 0.3455 | 1.035 | 1 | 1 | 1.046 | 0.8429 | 0.9817 |
| GFC (Dec 2007 - Jun 2009) | 397 | 0.1347 | 1.047 | 1 | 1 | 1.349 | 1.165 | 1.444 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1813 | 1.089 | 1 | 1 | 0.898 | 1.333 | 0.8693 |
| Aug 2015 devaluation | 54 | 0.6057 | 0.7249 | 1 | 1 | 0.6396 | 0.815 | 0.5731 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.581 | 4 |
| HAR | A | 3.632 | 4 |
| EN | A | 3.632 | 4 |
| RF | A | 3.667 | 4 |
| EN | AV | 3.375 | 4 |
| RF | AV | 3.675 | 4 |

### Elastic net on set AV: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| rv_d | 0.495 | 1 |
| rv_w | 0.457 | 1 |
| log_vix_only | 0.2618 | 1 |
| rv_m | 0.1635 | 1 |

### Random forest on set AV: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.5102 |
| log_vix_only | 0.2106 |
| rv_w | 0.2082 |
| rv_m | 0.071 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_AV | log_vix_only | 0 | 0 | 0.05 | 0.05882 | 0.9999 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 5

### Accuracy, all models on common days (2001-01-02 to 2017-12-29, n = 4276)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 4276 | 0.1599 | 1.407 | 0.389 | 0.5861 | 0.8321 | 1.201 | 3.09 | 0.002016 | 0.001008 | -1.555 | 0.12 | yes | 0.654 | yes | 0.5366 | 0 | 1 | NaN |
| HAR | A | 4276 | 0.1922 | 1.172 | 0.4334 | 0.6554 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0378 | yes | 1 | 0 | 1.202 | 0.999 |
| EN | A | 4276 | 0.1922 | 1.172 | 0.4334 | 0.6554 | 1 | 1 | -11.82 | 9.777e-32 | 1 | -0.7647 | 0.4445 | no | 0.0378 | yes | 0.5366 | 0 | 1.202 | 0.999 |
| RF | A | 4276 | 0.1635 | 1.844 | 0.4205 | 0.4577 | 0.851 | 1.574 | 3.541 | 0.0004032 | 0.0002016 | -1.633 | 0.1026 | yes | 0.485 | yes | 0.5366 | 0 | 1.023 | 0.6452 |
| EN | AV | 4276 | 0.2058 | 1.299 | 0.4151 | 0.6179 | 1.071 | 1.109 | -1.185 | 0.2362 | 0.8819 | -1.106 | 0.2689 | no | 0.0378 | yes | 0.5366 | 2.572 | 1.287 | 0.9999 |
| RF | AV | 4276 | 0.1548 | 1.82 | 0.4342 | 0.4648 | 0.8056 | 1.553 | 5.161 | 2.566e-07 | 1.283e-07 | -1.76 | 0.07856 | yes | 1 | yes | 0.3228 | 0 | 0.9681 | 0.2916 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 4276 | 1.202 | -3.09 | 0.002016 | 0.999 | 0.8326 | 1.555 | 0.12 | 0.05998 | 0.0126 | 1 |
| EN_A vs PER_A | 4276 | 1.202 | -3.09 | 0.002014 | 0.999 | 0.8326 | 1.555 | 0.12 | 0.05998 | 0.0126 | 0.4644 |
| RF_A vs PER_A | 4276 | 1.023 | -0.3724 | 0.7096 | 0.6452 | 1.31 | -1.021 | 0.3075 | 0.8463 | 0.7814 | 0.4644 |
| EN_A vs HAR_A | 4276 | 1 | -11.82 | 9.777e-32 | 1 | 1 | -0.7647 | 0.4445 | 0.7778 | 0.0126 | 0.4644 |
| RF_A vs HAR_A | 4276 | 0.851 | 3.541 | 0.0004032 | 0.0002016 | 1.574 | -1.633 | 0.1026 | 0.9487 | 0.7814 | 0.4644 |
| RF_A vs EN_A | 4276 | 0.8509 | 3.541 | 0.0004026 | 0.0002013 | 1.574 | -1.633 | 0.1026 | 0.9487 | 0.7814 | 0.4644 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_AV | RF_AV |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 3173 | 0.2177 | 0.8111 | 1 | 1 | 0.7732 | 1.062 | 0.7285 |
| High RV (monthly RV > threshold) | 1103 | 0.1189 | 0.9428 | 1 | 1 | 1.26 | 1.116 | 1.211 |
| Normal days (target <= Q3 + 1.5 IQR) | 3847 | 0.17 | 0.7655 | 1 | 1 | 0.736 | 1.112 | 0.7152 |
| Extreme days (target > Q3 + 1.5 IQR) | 429 | 0.3906 | 1.092 | 1 | 1 | 1.3 | 0.9126 | 1.158 |
| GFC (Dec 2007 - Jun 2009) | 397 | 0.1451 | 1.006 | 1 | 1 | 1.62 | 1.077 | 1.448 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1696 | 0.9885 | 1 | 1 | 0.9207 | 1.096 | 0.8564 |
| Aug 2015 devaluation | 54 | 1.009 | 1.316 | 1 | 1 | 1.221 | 1.047 | 1.205 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.644 | 4 |
| HAR | A | 3.637 | 4 |
| EN | A | 3.637 | 4 |
| RF | A | 3.661 | 4 |
| EN | AV | 3.551 | 4 |
| RF | AV | 3.683 | 4 |

### Elastic net on set AV: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| rv_w | 0.437 | 1 |
| rv_d | 0.2927 | 1 |
| rv_m | 0.2586 | 1 |
| log_vix_only | 0.2448 | 1 |

### Random forest on set AV: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_w | 0.3882 |
| log_vix_only | 0.3013 |
| rv_d | 0.1892 |
| rv_m | 0.1213 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_AV | log_vix_only | 0 | 0 | 0.05 | 0.05882 | 0.9999 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 22

### Accuracy, all models on common days (2001-01-02 to 2017-12-29, n = 4276)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 4276 | 0.2284 | 1.501 | 0.483 | 0.4464 | 0.8621 | 1.298 | 1.153 | 0.2491 | 0.1246 | -1.452 | 0.1466 | yes | 0.902 | yes | 0.5254 | 0 | 1 | NaN |
| HAR | A | 4276 | 0.2649 | 1.156 | 0.5441 | 0.5735 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.2192 | yes | 0.9408 | 0 | 1.16 | 0.8754 |
| EN | A | 4276 | 0.2667 | 1.156 | 0.5469 | 0.5736 | 1.007 | 0.9998 | -1.541 | 0.1233 | 0.9384 | 0.08005 | 0.9362 | yes | 0.1918 | yes | 1 | 0 | 1.168 | 0.8846 |
| RF | A | 4276 | 0.2345 | 1.751 | 0.518 | 0.354 | 0.8854 | 1.515 | 1.395 | 0.163 | 0.08148 | -1.155 | 0.248 | yes | 0.7042 | yes | 0.5254 | 0 | 1.027 | 0.6035 |
| EN | AV | 4276 | 0.2172 | 1.203 | 0.5046 | 0.5561 | 0.8198 | 1.041 | 2.961 | 0.003085 | 0.001542 | -0.4972 | 0.6191 | yes | 1 | yes | 0.6422 | 0.5145 | 0.951 | 0.3256 |
| RF | AV | 4276 | 0.2292 | 1.799 | 0.533 | 0.3362 | 0.8653 | 1.556 | 1.679 | 0.09328 | 0.04664 | -1.248 | 0.2122 | yes | 0.902 | yes | 0.3984 | 0 | 1.004 | 0.5139 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 4276 | 1.16 | -1.153 | 0.2491 | 0.8754 | 0.7704 | 1.452 | 0.1466 | 0.07328 | 0.3418 | 0.9408 |
| EN_A vs PER_A | 4276 | 1.168 | -1.198 | 0.2309 | 0.8846 | 0.7703 | 1.452 | 0.1465 | 0.07327 | 0.3032 | 1 |
| RF_A vs PER_A | 4276 | 1.027 | -0.2624 | 0.7931 | 0.6035 | 1.167 | -0.5036 | 0.6146 | 0.6927 | 0.8052 | 0.5254 |
| EN_A vs HAR_A | 4276 | 1.007 | -1.541 | 0.1233 | 0.9384 | 0.9998 | 0.08005 | 0.9362 | 0.4681 | 0.3032 | 1 |
| RF_A vs HAR_A | 4276 | 0.8854 | 1.395 | 0.163 | 0.08148 | 1.515 | -1.155 | 0.248 | 0.876 | 0.8052 | 0.5254 |
| RF_A vs EN_A | 4276 | 0.8795 | 1.464 | 0.1432 | 0.0716 | 1.515 | -1.156 | 0.2478 | 0.8761 | 0.8052 | 0.5254 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_AV | RF_AV |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 3173 | 0.2993 | 0.7766 | 1 | 1.008 | 0.7829 | 0.7678 | 0.7567 |
| High RV (monthly RV > threshold) | 1103 | 0.166 | 1.305 | 1 | 1.002 | 1.417 | 1.09 | 1.429 |
| Normal days (target <= Q3 + 1.5 IQR) | 3805 | 0.2352 | 0.558 | 1 | 1.013 | 0.6877 | 0.7633 | 0.6859 |
| Extreme days (target > Q3 + 1.5 IQR) | 471 | 0.5051 | 2.006 | 1 | 0.9838 | 1.629 | 1.033 | 1.54 |
| GFC (Dec 2007 - Jun 2009) | 397 | 0.295 | 1.325 | 1 | 1 | 1.625 | 0.9428 | 1.587 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2293 | 1.33 | 1 | 1.032 | 1.066 | 1.099 | 1.008 |
| Aug 2015 devaluation | 54 | 0.3491 | 2.019 | 1 | 1 | 1.306 | 1.171 | 1.278 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.474 | 4 |
| HAR | A | 3.511 | 4 |
| EN | A | 3.509 | 4 |
| RF | A | 3.509 | 4 |
| EN | AV | 3.562 | 4 |
| RF | AV | 3.527 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 4276 | 211.5 | 8.072 | 104.4 | 3.063 | NaN | NaN | 1 |
| PER_A | 4276 | 190.1 | 8.244 | 100.7 | 3.19 | 0.8297 | 0.2083 | 0.9705 |
| HAR_A | 4276 | 168.6 | 6.125 | 76.13 | 2.394 | 0.6282 | 0.2118 | 0.7086 |
| EN_A | 4276 | 168.6 | 6.123 | 75.99 | 2.392 | 0.6265 | 0.2125 | 0.7065 |
| RF_A | 4276 | 196.1 | 7.412 | 93.95 | 2.755 | 0.8029 | 0.1063 | 0.945 |
| EN_AV | 4276 | 207 | 7.869 | 102.8 | 3.038 | 0.8398 | 0.1637 | 0.9829 |
| RF_AV | 4276 | 194.8 | 7.474 | 92.83 | 2.723 | 0.8068 | 0.09047 | 0.95 |

### Elastic net on set AV: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| rv_w | 0.3623 | 1 |
| log_vix_only | 0.2466 | 1 |
| rv_m | 0.2144 | 1 |
| rv_d | 0.1336 | 1 |

### Random forest on set AV: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_w | 0.4576 |
| rv_m | 0.1865 |
| rv_d | 0.1826 |
| log_vix_only | 0.1734 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_AV | log_vix_only | 0 | 0 | 0.05 | 0.05882 | 0.9999 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_AV | 0.8407 | 8.745e-08 | yes | yes | 0.8658 | yes | HAR_A EN_A EN_AV | NaN | NaN |
| SPY | 5 | RF_AV | 0.8056 | 1.283e-07 | yes | yes | 0.9681 | no | HAR_A EN_A RF_A EN_AV RF_AV | NaN | NaN |
| SPY | 22 | EN_AV | 0.8198 | 0.001542 | yes | yes | 0.951 | no | HAR_A EN_A RF_A EN_AV RF_AV | 102.8 | 0.1637 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.9709 | 1.407 | 0.4211 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.03 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 3.315e-49 | no | 1.03 |
| SPY | 1 | all-model common days | RF | A | 0.8412 | 1.224 | 1.634e-09 | yes | 0.8664 |
| SPY | 1 | all-model common days | EN | AV | 1.414 | 1.062 | 1.066e-07 | no | 1.456 |
| SPY | 1 | all-model common days | RF | AV | 0.8407 | 1.271 | 1.749e-07 | yes | 0.8658 |
| SPY | 5 | all-model common days | PER | A | 0.8321 | 1.201 | 0.002016 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.202 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 9.777e-32 | no | 1.202 |
| SPY | 5 | all-model common days | RF | A | 0.851 | 1.574 | 0.0004032 | yes | 1.023 |
| SPY | 5 | all-model common days | EN | AV | 1.071 | 1.109 | 0.2362 | no | 1.287 |
| SPY | 5 | all-model common days | RF | AV | 0.8056 | 1.553 | 2.566e-07 | yes | 0.9681 |
| SPY | 22 | all-model common days | PER | A | 0.8621 | 1.298 | 0.2491 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.16 |
| SPY | 22 | all-model common days | EN | A | 1.007 | 0.9998 | 0.1233 | yes | 1.168 |
| SPY | 22 | all-model common days | RF | A | 0.8854 | 1.515 | 0.163 | yes | 1.027 |
| SPY | 22 | all-model common days | EN | AV | 0.8198 | 1.041 | 0.003085 | yes | 0.951 |
| SPY | 22 | all-model common days | RF | AV | 0.8653 | 1.556 | 0.09328 | yes | 1.004 |

