# Results: test period, scenario "vix1996"

Generated 2026-10-21 23:43 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-10-02, n = 2120)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2120 | 0.3079 | 2.864 | 0.4626 | 0.4106 | 1.268 | 1.248 | -5.354 | 9.524e-08 | 1 | -1.436 | 0.1512 | no | 0 | yes | 0.201 | 0 | 1 | NaN |
| HAR | A | 2120 | 0.2429 | 2.295 | 0.4491 | 0.5278 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0734 | yes | 0.8254 | 0 | 0.7889 | 4.762e-08 |
| EN | A | 2120 | 0.2429 | 2.295 | 0.4491 | 0.5278 | 1 | 1 | -5.948 | 3.167e-09 | 1 | -0.5322 | 0.5946 | no | 0.0734 | yes | 0.8254 | 0 | 0.7889 | 4.769e-08 |
| RF | A | 2120 | 0.2261 | 2.299 | 0.4362 | 0.5269 | 0.931 | 1.002 | 3.141 | 0.001706 | 0.0008528 | -0.01402 | 0.9888 | no | 0.0734 | yes | 0.8254 | 0 | 0.7345 | 5.142e-21 |
| EN | AV | 2120 | 0.2534 | 2.286 | 0.4559 | 0.5296 | 1.043 | 0.9962 | -1.305 | 0.1922 | 0.9039 | 0.08931 | 0.9288 | no | 0.0734 | yes | 0.8008 | 0.04717 | 0.823 | 5.478e-05 |
| RF | AV | 2120 | 0.2154 | 2.076 | 0.429 | 0.5728 | 0.8867 | 0.9047 | 5.407 | 7.14e-08 | 3.57e-08 | 0.9606 | 0.3368 | yes | 1 | yes | 1 | 0 | 0.6995 | 5.116e-20 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2120 | 0.7889 | 5.354 | 9.524e-08 | 4.762e-08 | 0.8011 | 1.436 | 0.1512 | 0.07562 | 0.0028 | 1 |
| EN_A vs PER_A | 2120 | 0.7889 | 5.354 | 9.537e-08 | 4.769e-08 | 0.8011 | 1.436 | 0.1512 | 0.07562 | 0.0028 | 0.9642 |
| RF_A vs PER_A | 2120 | 0.7345 | 9.431 | 1.028e-20 | 5.142e-21 | 0.8027 | 0.9605 | 0.3369 | 0.1685 | 1 | 0.9642 |
| EN_A vs HAR_A | 2120 | 1 | -5.948 | 3.167e-09 | 1 | 1 | -0.5322 | 0.5946 | 0.7027 | 0.0028 | 0.9642 |
| RF_A vs HAR_A | 2120 | 0.931 | 3.141 | 0.001706 | 0.0008528 | 1.002 | -0.01402 | 0.9888 | 0.5056 | 1 | 0.9642 |
| RF_A vs EN_A | 2120 | 0.931 | 3.142 | 0.001704 | 0.0008519 | 1.002 | -0.014 | 0.9888 | 0.5056 | 1 | 0.9642 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_AV | RF_AV |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1610 | 0.2479 | 1.306 | 1 | 1 | 0.9309 | 1.063 | 0.8916 |
| High RV (monthly RV > threshold) | 510 | 0.227 | 1.136 | 1 | 1 | 0.9315 | 0.9747 | 0.8701 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2142 | 1.318 | 1 | 1 | 0.9405 | 1.111 | 0.9234 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.5428 | 1.062 | 1 | 1 | 0.8919 | 0.7639 | 0.7353 |
| Feb 2018 Volmageddon | 17 | 0.1331 | 1.564 | 1 | 1 | 1.167 | 0.851 | 1.181 |
| COVID 2020 | 70 | 0.339 | 0.8901 | 1 | 1 | 0.9064 | 0.9247 | 0.8217 |
| 2022 bear market | 203 | 0.1566 | 1.318 | 1 | 1 | 0.9781 | 0.9002 | 0.9041 |
| Apr 2025 tariffs | 42 | 0.4854 | 0.715 | 1 | 1 | 0.6698 | 0.8973 | 0.6052 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.308 | 4 |
| HAR | A | 3.539 | 4 |
| EN | A | 3.539 | 4 |
| RF | A | 3.54 | 4 |
| EN | AV | 3.524 | 4 |
| RF | AV | 3.58 | 4 |

### Elastic net on set AV: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| rv_w | 0.7647 | 1 |
| rv_d | 0.5279 | 1 |
| log_vix_only | 0.2014 | 1 |
| rv_m | 0.06317 | 0.6667 |

### Random forest on set AV: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.4805 |
| log_vix_only | 0.2812 |
| rv_w | 0.1742 |
| rv_m | 0.06409 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 27.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2135)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2135 | 0.2937 | 2.226 | 0.4699 | 0.3772 | 1.303 | 1.187 | -3.837 | 0.0001279 | 0.9999 | -0.91 | 0.3629 | no | 0 | yes | 0.6148 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.2254 | 1.876 | 0.4611 | 0.4752 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0728 | yes | 0.63 | 0 | 0.7675 | 6.396e-05 |
| EN | A | 2135 | 0.2254 | 1.876 | 0.4611 | 0.4752 | 1 | 1 | 0.7017 | 0.4829 | 0.2415 | 1.263 | 0.2067 | no | 0.0728 | yes | 0.63 | 0 | 0.7675 | 6.395e-05 |
| RF | A | 2135 | 0.2207 | 2.203 | 0.4606 | 0.3835 | 0.9788 | 1.175 | 0.5621 | 0.5741 | 0.287 | -0.6736 | 0.5007 | yes | 0.2748 | yes | 0.63 | 0 | 0.7513 | 1.141e-06 |
| EN | AV | 2135 | 0.2171 | 1.801 | 0.4644 | 0.496 | 0.9628 | 0.9604 | 1.313 | 0.1894 | 0.09472 | 0.8212 | 0.4116 | yes | 0.2748 | yes | 0.843 | 0 | 0.739 | 7.841e-05 |
| RF | AV | 2135 | 0.2037 | 1.783 | 0.4564 | 0.5011 | 0.9035 | 0.9507 | 3.139 | 0.001718 | 0.000859 | 0.6646 | 0.5063 | yes | 1 | yes | 1 | 0 | 0.6934 | 6.618e-08 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2135 | 0.7675 | 3.837 | 0.0001279 | 6.396e-05 | 0.8427 | 0.91 | 0.3629 | 0.1815 | 0.5468 | 0.6984 |
| EN_A vs PER_A | 2135 | 0.7675 | 3.838 | 0.0001279 | 6.395e-05 | 0.8427 | 0.91 | 0.3629 | 0.1815 | 0.547 | 1 |
| RF_A vs PER_A | 2135 | 0.7513 | 4.74 | 2.282e-06 | 1.141e-06 | 0.9899 | 0.03346 | 0.9733 | 0.4867 | 1 | 0.6984 |
| EN_A vs HAR_A | 2135 | 1 | 0.7017 | 0.4829 | 0.2415 | 1 | 1.263 | 0.2067 | 0.1033 | 0.547 | 1 |
| RF_A vs HAR_A | 2135 | 0.9788 | 0.5621 | 0.5741 | 0.287 | 1.175 | -0.6736 | 0.5007 | 0.7497 | 1 | 0.6984 |
| RF_A vs EN_A | 2135 | 0.9788 | 0.5618 | 0.5743 | 0.2872 | 1.175 | -0.6736 | 0.5006 | 0.7497 | 1 | 0.6984 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_AV | RF_AV |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1619 | 0.2183 | 1.353 | 1 | 1 | 0.9538 | 0.9684 | 0.8853 |
| High RV (monthly RV > threshold) | 516 | 0.2478 | 1.163 | 1 | 0.9999 | 1.048 | 0.9474 | 0.9536 |
| Normal days (target <= Q3 + 1.5 IQR) | 1950 | 0.1723 | 1.335 | 1 | 1 | 0.9844 | 1.045 | 0.9394 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.7854 | 1.228 | 1 | 1 | 0.9661 | 0.7726 | 0.8204 |
| Feb 2018 Volmageddon | 15 | 0.131 | 1.853 | 1 | 1 | 0.9544 | 0.7068 | 0.9823 |
| COVID 2020 | 70 | 0.6708 | 1.029 | 1 | 1 | 1.054 | 0.8883 | 0.8566 |
| 2022 bear market | 206 | 0.131 | 1.281 | 1 | 0.9998 | 0.9756 | 0.7947 | 0.8654 |
| Apr 2025 tariffs | 42 | 1.039 | 1.094 | 1 | 1 | 0.9361 | 0.8821 | 0.8584 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.323 | 4 |
| HAR | A | 3.543 | 4 |
| EN | A | 3.543 | 4 |
| RF | A | 3.526 | 4 |
| EN | AV | 3.572 | 4 |
| RF | AV | 3.578 | 4 |

### Elastic net on set AV: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| rv_w | 0.6178 | 1 |
| rv_d | 0.4133 | 1 |
| log_vix_only | 0.2192 | 1 |
| rv_m | 0.1878 | 1 |

### Random forest on set AV: impurity importance (share)

| feature | mean_importance |
|---|---|
| log_vix_only | 0.3699 |
| rv_w | 0.2812 |
| rv_d | 0.1973 |
| rv_m | 0.1517 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 9.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-09-01, n = 2109)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2109 | 0.5021 | 3.151 | 0.6183 | -0.3927 | 1.524 | 1.558 | -1.534 | 0.1253 | 0.9374 | -1.32 | 0.1871 | yes | 0.2274 | yes | 0.2418 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3294 | 2.023 | 0.5663 | 0.106 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 0.365 | 0 | 0.6561 | 0.06265 |
| EN | A | 2109 | 0.3368 | 2.025 | 0.572 | 0.105 | 1.022 | 1.001 | -1.234 | 0.2174 | 0.8913 | -0.318 | 0.7505 | yes | 0.8104 | yes | 0.3434 | 0 | 0.6708 | 0.07221 |
| RF | A | 2109 | 0.3518 | 1.701 | 0.5221 | 0.2484 | 1.068 | 0.8407 | -0.708 | 0.479 | 0.7605 | 1.231 | 0.2185 | yes | 0.7808 | yes | 1 | 0 | 0.7007 | 0.03775 |
| EN | AV | 2109 | 0.3307 | 1.873 | 0.5553 | 0.1721 | 1.004 | 0.926 | -0.08218 | 0.9345 | 0.5327 | 1.121 | 0.2622 | yes | 0.9386 | yes | 0.365 | 0 | 0.6586 | 0.07071 |
| RF | AV | 2109 | 0.3495 | 1.843 | 0.5474 | 0.1856 | 1.061 | 0.911 | -0.6774 | 0.4982 | 0.7509 | 1.101 | 0.2712 | yes | 0.8104 | yes | 0.365 | 0 | 0.6962 | 0.03877 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2109 | 0.6561 | 1.534 | 0.1253 | 0.06265 | 0.6419 | 1.32 | 0.1871 | 0.09356 | 1 | 0.2054 |
| EN_A vs PER_A | 2109 | 0.6708 | 1.46 | 0.1444 | 0.07221 | 0.6426 | 1.317 | 0.188 | 0.09399 | 0.655 | 0.2038 |
| RF_A vs PER_A | 2109 | 0.7007 | 1.778 | 0.07551 | 0.03775 | 0.5397 | 1.337 | 0.1815 | 0.09075 | 0.655 | 1 |
| EN_A vs HAR_A | 2109 | 1.022 | -1.234 | 0.2174 | 0.8913 | 1.001 | -0.318 | 0.7505 | 0.6247 | 0.655 | 0.2038 |
| RF_A vs HAR_A | 2109 | 1.068 | -0.708 | 0.479 | 0.7605 | 0.8407 | 1.231 | 0.2185 | 0.1093 | 0.655 | 1 |
| RF_A vs EN_A | 2109 | 1.045 | -0.4559 | 0.6485 | 0.6757 | 0.8398 | 1.238 | 0.2158 | 0.1079 | 0.655 | 1 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_AV | RF_AV |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1593 | 0.3465 | 1.559 | 1 | 1.029 | 1.099 | 1.009 | 1.084 |
| High RV (monthly RV > threshold) | 516 | 0.2767 | 1.388 | 1 | 0.9966 | 0.9483 | 0.9841 | 0.9717 |
| Normal days (target <= Q3 + 1.5 IQR) | 1966 | 0.1944 | 1.285 | 1 | 1.045 | 1.012 | 1.057 | 0.9903 |
| Extreme days (target > Q3 + 1.5 IQR) | 143 | 2.186 | 1.817 | 1 | 0.9954 | 1.136 | 0.9384 | 1.148 |
| Feb 2018 Volmageddon | 14 | 0.04992 | 1.509 | 1 | 1 | 0.9719 | 1.273 | 1.538 |
| COVID 2020 | 70 | 1.485 | 2.133 | 1 | 1 | 0.9187 | 0.8789 | 0.9084 |
| 2022 bear market | 206 | 0.1392 | 1.76 | 1 | 0.7887 | 1.055 | 0.7895 | 1.214 |
| Apr 2025 tariffs | 42 | 0.5435 | 1.535 | 1 | 1 | 0.9625 | 0.9073 | 0.7818 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.701 | 4 |
| HAR | A | 3.26 | 4 |
| EN | A | 3.252 | 4 |
| RF | A | 3.147 | 4 |
| EN | AV | 3.257 | 4 |
| RF | AV | 3.164 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 150.8 | 3.713 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 98.73 | 2.347 | 41.67 | 0.5854 | 0.7866 | -0.07682 | 0.9147 |
| HAR_A | 2109 | 112.5 | 3.322 | 59.6 | 1.147 | 0.716 | 0.1165 | 0.8317 |
| EN_A | 2109 | 108.8 | 3.229 | 54.69 | 1.056 | 0.6994 | 0.1159 | 0.8122 |
| RF_A | 2109 | 139.1 | 4.034 | 84.23 | 1.938 | 0.7734 | 0.2179 | 0.9004 |
| EN_AV | 2109 | 145.9 | 4.084 | 79.23 | 1.518 | 0.8013 | 0.1327 | 0.9483 |
| RF_AV | 2109 | 141.1 | 4.173 | 85.57 | 1.876 | 0.7819 | 0.1796 | 0.9137 |

### Elastic net on set AV: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| rv_w | 0.4214 | 1 |
| log_vix_only | 0.2194 | 1 |
| rv_m | 0.194 | 0.8889 |
| rv_d | 0.1925 | 0.8889 |

### Random forest on set AV: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_w | 0.3612 |
| rv_d | 0.2394 |
| log_vix_only | 0.2128 |
| rv_m | 0.1865 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_AV | 0.8867 | 3.57e-08 | yes | yes | 0.6995 | yes |  | NaN | NaN |
| SPY | 5 | RF_AV | 0.9035 | 0.000859 | yes | yes | 0.6934 | yes |  | NaN | NaN |
| SPY | 22 | EN_AV | 1.004 | 0.5327 | yes | no | 0.6586 | no | HAR_A EN_A EN_AV | 79.23 | 0.1327 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.268 | 1.248 | 9.524e-08 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.7889 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 3.167e-09 | no | 0.7889 |
| SPY | 1 | all-model common days | RF | A | 0.931 | 1.002 | 0.001706 | no | 0.7345 |
| SPY | 1 | all-model common days | EN | AV | 1.043 | 0.9962 | 0.1922 | no | 0.823 |
| SPY | 1 | all-model common days | RF | AV | 0.8867 | 0.9047 | 7.14e-08 | yes | 0.6995 |
| SPY | 5 | all-model common days | PER | A | 1.303 | 1.187 | 0.0001279 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.7675 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 0.4829 | no | 0.7675 |
| SPY | 5 | all-model common days | RF | A | 0.9788 | 1.175 | 0.5741 | yes | 0.7513 |
| SPY | 5 | all-model common days | EN | AV | 0.9628 | 0.9604 | 0.1894 | yes | 0.739 |
| SPY | 5 | all-model common days | RF | AV | 0.9035 | 0.9507 | 0.001718 | yes | 0.6934 |
| SPY | 22 | all-model common days | PER | A | 1.524 | 1.558 | 0.1253 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6561 |
| SPY | 22 | all-model common days | EN | A | 1.022 | 1.001 | 0.2174 | yes | 0.6708 |
| SPY | 22 | all-model common days | RF | A | 1.068 | 0.8407 | 0.479 | yes | 0.7007 |
| SPY | 22 | all-model common days | EN | AV | 1.004 | 0.926 | 0.9345 | yes | 0.6586 |
| SPY | 22 | all-model common days | RF | AV | 1.061 | 0.911 | 0.4982 | yes | 0.6962 |

