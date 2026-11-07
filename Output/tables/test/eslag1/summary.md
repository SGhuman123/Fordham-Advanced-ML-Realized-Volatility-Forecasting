# Results: test period, scenario "eslag1"

Generated 2026-11-04 12:16 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-10-01, n = 2119)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2119 | 0.3079 | 2.866 | 0.4627 | 0.4066 | 1.308 | 1.258 | -6.327 | 3.04e-10 | 1 | -1.487 | 0.1371 | no | 0.0456 | yes | 0.846 | 0 | 1 | NaN |
| HAR | A | 2119 | 0.2354 | 2.277 | 0.4407 | 0.5284 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6166 | yes | 1 | 0 | 0.7645 | 1.52e-10 |
| EN | D | 2119 | 0.5139 | 2.651 | 0.4284 | 0.451 | 2.183 | 1.164 | -3.558 | 0.0003821 | 0.9998 | -0.69 | 0.4903 | no | 0.0456 | yes | 0.846 | 3.115 | 1.669 | 0.9956 |
| RF | D | 2119 | 0.2255 | 3.153 | 0.4527 | 0.347 | 0.9581 | 1.385 | 0.6237 | 0.5329 | 0.2664 | -0.7272 | 0.4672 | yes | 1 | yes | 0.846 | 0 | 0.7325 | 5.553e-06 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_D | RF_D |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1609 | 0.2388 | 1.356 | 1 | 2.545 | 0.9013 |
| High RV (monthly RV > threshold) | 510 | 0.2247 | 1.147 | 1 | 0.9685 | 1.148 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2035 | 1.388 | 1 | 2.531 | 0.9566 |
| Extreme days (target > Q3 + 1.5 IQR) | 184 | 0.5705 | 1.009 | 1 | 0.8781 | 0.9635 |
| Feb 2018 Volmageddon | 17 | 0.1429 | 1.456 | 1 | 0.9393 | 1.294 |
| COVID 2020 | 70 | 0.329 | 0.9173 | 1 | 1.264 | 2.597 |
| 2022 bear market | 203 | 0.1593 | 1.295 | 1 | 1.328 | 0.7599 |
| Apr 2025 tariffs | 42 | 0.4742 | 0.7318 | 1 | 0.6892 | 0.3839 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.307 | 4 |
| HAR | A | 3.541 | 4 |
| EN | D | 2.683 | 4 |
| RF | D | 3.552 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.08514 | 1 |
| rv_d | 0.06643 | 1 |
| negret_w | -0.06624 | 1 |
| vix9d_spread | 0.06603 | 1 |
| vrp | 0.06223 | 1 |
| negret_d | -0.05223 | 1 |
| es_C_d | 0.047 | 1 |
| es_rsn_d | 0.04655 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2566 |
| negret_w | 0.1506 |
| rv_d | 0.1449 |
| vix3m_spread | 0.0751 |
| iv_term | 0.0579 |
| log_vxn | 0.04893 |
| parkinson_d | 0.02993 |
| iv_atm_1m | 0.02773 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 27.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2135)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2135 | 0.2937 | 2.226 | 0.4699 | 0.3714 | 1.366 | 1.204 | -4.993 | 6.427e-07 | 1 | -1.036 | 0.3004 | no | 0.0364 | yes | 0.7066 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.215 | 1.848 | 0.4443 | 0.4781 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.732 | 3.214e-07 |
| EN | D | 2135 | 0.7053 | 2.11 | 0.433 | 0.4042 | 3.28 | 1.142 | -3.795 | 0.0001518 | 0.9999 | -0.551 | 0.5817 | no | 0.0364 | yes | 0.7066 | 3.232 | 2.401 | 0.9993 |
| RF | D | 2135 | 0.2388 | 2.875 | 0.4699 | 0.188 | 1.111 | 1.556 | -0.7893 | 0.43 | 0.785 | -0.9893 | 0.3226 | yes | 0.5644 | yes | 0.7012 | 0 | 0.8131 | 0.06312 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_D | RF_D |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1619 | 0.2056 | 1.437 | 1 | 3.848 | 0.9369 |
| High RV (monthly RV > threshold) | 516 | 0.2446 | 1.178 | 1 | 1.782 | 1.569 |
| Normal days (target <= Q3 + 1.5 IQR) | 1950 | 0.1575 | 1.461 | 1 | 4.457 | 1.011 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.8215 | 1.174 | 1 | 0.9038 | 1.313 |
| Feb 2018 Volmageddon | 15 | 0.1518 | 1.6 | 1 | 0.9242 | 1.004 |
| COVID 2020 | 70 | 0.6643 | 1.039 | 1 | 1.104 | 2.572 |
| 2022 bear market | 206 | 0.1373 | 1.221 | 1 | 2.987 | 0.7655 |
| Apr 2025 tariffs | 42 | 1.029 | 1.104 | 1 | 0.7348 | 0.8616 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.323 | 4 |
| HAR | A | 3.549 | 4 |
| EN | D | 2.068 | 4 |
| RF | D | 3.479 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.0776 | 1 |
| vrp | 0.0663 | 1 |
| rv_d | 0.06331 | 1 |
| negret_w | -0.05625 | 1 |
| vix9d_spread | 0.05618 | 1 |
| negret_d | -0.05172 | 1 |
| vix3m_spread | -0.05106 | 1 |
| parkinson_d | 0.04795 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1741 |
| negret_w | 0.1041 |
| vix3m_spread | 0.09532 |
| rv_d | 0.09198 |
| log_vxn | 0.08331 |
| rv_w | 0.06748 |
| parkinson_w | 0.05479 |
| iv_atm_1m | 0.05047 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 9.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-09-01, n = 2109)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2109 | 0.5021 | 3.151 | 0.6183 | -0.4123 | 1.508 | 1.55 | -1.78 | 0.07526 | 0.9624 | -1.315 | 0.1886 | yes | 0.2342 | yes | 0.3168 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3329 | 2.032 | 0.5384 | 0.08907 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 0.6498 | 0 | 0.6631 | 0.03763 |
| EN | D | 2109 | 0.4166 | 1.823 | 0.4802 | 0.1829 | 1.251 | 0.8971 | -1.862 | 0.06268 | 0.9687 | 0.7342 | 0.4629 | yes | 0.376 | yes | 1 | 0 | 0.8298 | 0.1181 |
| RF | D | 2109 | 0.4339 | 2.14 | 0.5423 | 0.04063 | 1.303 | 1.053 | -1.658 | 0.0974 | 0.9513 | -0.2926 | 0.7699 | yes | 0.376 | yes | 0.6498 | 0 | 0.8642 | 0.1486 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_D | RF_D |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1593 | 0.3501 | 1.543 | 1 | 1.293 | 1.187 |
| High RV (monthly RV > threshold) | 516 | 0.2799 | 1.372 | 1 | 1.089 | 1.754 |
| Normal days (target <= Q3 + 1.5 IQR) | 1966 | 0.1733 | 1.441 | 1 | 1.26 | 1.17 |
| Extreme days (target > Q3 + 1.5 IQR) | 143 | 2.528 | 1.571 | 1 | 1.243 | 1.429 |
| Feb 2018 Volmageddon | 14 | 0.08687 | 0.8673 | 1 | 1.81 | 2.353 |
| COVID 2020 | 70 | 1.563 | 2.027 | 1 | 1.231 | 2.115 |
| 2022 bear market | 206 | 0.1656 | 1.48 | 1 | 1.56 | 1.13 |
| Apr 2025 tariffs | 42 | 0.5158 | 1.618 | 1 | 0.5545 | 0.678 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.701 | 4 |
| HAR | A | 3.209 | 4 |
| EN | D | 2.936 | 4 |
| RF | D | 2.945 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 89.01 | 1.842 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 47.51 | 0.9904 | 37.52 | 0.5713 | 0.7321 | -0.1066 | 0.8241 |
| HAR_A | 2109 | 54.46 | 1.543 | 52.42 | 1.198 | 0.6652 | 0.09609 | 0.7506 |
| EN_D | 2109 | 71.89 | 1.475 | 50.33 | 0.7412 | 0.7269 | 0.109 | 0.8663 |
| RF_D | 2109 | 44.95 | 0.9313 | 21.23 | 0.3152 | 0.6439 | 0.08457 | 0.7767 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.06288 | 1 |
| rv_d | 0.04667 | 1 |
| iv_skew_1m | 0.0464 | 1 |
| vix9d_spread | 0.04073 | 1 |
| iv_term | -0.03711 | 1 |
| negret_w | -0.03701 | 1 |
| vrp | 0.03288 | 1 |
| es_J_w | 0.0275 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.06042 |
| log_vxn | 0.04537 |
| rv_d | 0.04336 |
| negret_w | 0.04303 |
| parkinson_w | 0.03589 |
| vix3m_spread | 0.03428 |
| vix9d_spread | 0.03391 |
| negret_m | 0.03358 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.3449 | 6.187 | 0.7948 | 0.5761 | 1.286 | 0.9261 | -5.667 | 1.642e-08 | 1 | 0.3853 | 0.7001 | no | 0.006 | yes | 1 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.2681 | 6.681 | 0.7741 | 0.5422 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.1168 | yes | 0.6564 | 0 | 0.7773 | 8.211e-09 |
| EN | A | 2197 | 0.2693 | 6.668 | 0.7745 | 0.5431 | 1.004 | 0.9981 | -1.061 | 0.2888 | 0.8556 | 1.115 | 0.2649 | yes | 0.1168 | yes | 0.6666 | 0 | 0.7807 | 3.618e-08 |
| RF | A | 2197 | 0.3048 | 11.85 | 0.8795 | 0.1882 | 1.137 | 1.773 | -1.541 | 0.1234 | 0.9383 | -1.267 | 0.2052 | yes | 0.1168 | yes | 0.2588 | 0 | 0.8836 | 0.07204 |
| EN | B | 2197 | 0.2593 | 8.669 | 0.7547 | 0.406 | 0.9672 | 1.298 | 0.341 | 0.7332 | 0.3666 | -0.8771 | 0.3805 | yes | 0.1168 | yes | 0.5246 | 1.229 | 0.7519 | 0.00118 |
| RF | B | 2197 | 0.1947 | 9.564 | 0.7276 | 0.3446 | 0.7263 | 1.432 | 3.645 | 0.0002735 | 0.0001368 | -0.8149 | 0.4152 | yes | 1 | yes | 0.5938 | 0 | 0.5646 | 6.908e-11 |
| EN | C | 2197 | 0.3143 | 8.688 | 0.7575 | 0.4047 | 1.172 | 1.3 | -1.307 | 0.1913 | 0.9044 | -0.8856 | 0.3759 | yes | 0.1168 | yes | 0.5088 | 1.912 | 0.9113 | 0.2043 |
| RF | C | 2197 | 0.203 | 9.209 | 0.7442 | 0.369 | 0.7572 | 1.378 | 3.308 | 0.0009535 | 0.0004767 | -0.7547 | 0.4505 | yes | 0.1914 | yes | 0.6154 | 0 | 0.5886 | 2.088e-10 |
| EN | D | 2197 | 0.2437 | 8.281 | 0.7385 | 0.4326 | 0.9091 | 1.239 | 1.068 | 0.2858 | 0.1429 | -0.8245 | 0.4097 | yes | 0.1168 | yes | 0.5938 | 1.001 | 0.7067 | 3.101e-05 |
| RF | D | 2197 | 0.199 | 9.148 | 0.7402 | 0.3731 | 0.7422 | 1.369 | 3.617 | 0.0003049 | 0.0001524 | -0.758 | 0.4485 | yes | 0.472 | yes | 0.599 | 0 | 0.5769 | 1.706e-11 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2197 | 0.7773 | 5.667 | 1.642e-08 | 8.211e-09 | 1.08 | -0.3853 | 0.7001 | 0.65 | 1 | 0.6564 |
| EN_A vs PER_A | 2197 | 0.7807 | 5.404 | 7.236e-08 | 3.618e-08 | 1.078 | -0.3736 | 0.7087 | 0.6456 | 0.1764 | 0.6666 |
| RF_A vs PER_A | 2197 | 0.8836 | 1.461 | 0.1441 | 0.07204 | 1.915 | -1.12 | 0.2627 | 0.8687 | 0.1486 | 0.477 |
| EN_A vs HAR_A | 2197 | 1.004 | -1.061 | 0.2888 | 0.8556 | 0.9981 | 1.115 | 0.2649 | 0.1324 | 0.1764 | 0.6666 |
| RF_A vs HAR_A | 2197 | 1.137 | -1.541 | 0.1234 | 0.9383 | 1.773 | -1.267 | 0.2052 | 0.8974 | 0.1486 | 0.477 |
| RF_A vs EN_A | 2197 | 1.132 | -1.487 | 0.137 | 0.9315 | 1.777 | -1.272 | 0.2036 | 0.8982 | 0.1486 | 0.477 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2197 | 0.009949 | 3.695 | 0.11 | 36.11 | 0.1001 | 4.041 | 2.749e-05 | 5.499e-05 |
| A->B | MSE | 2197 | -2 | -30 | 2.283 | 19.27 | 4.283 | 1.481 | 0.06943 | 0.1389 |
| A->C | QLIKE | 2197 | -0.04502 | -16.72 | 0.1017 | 33.39 | 0.1468 | 4.287 | 9.436e-06 | 1.887e-05 |
| A->C | MSE | 2197 | -2.02 | -30.29 | 2.637 | 22.26 | 4.657 | 1.496 | 0.06741 | 0.1348 |
| A->D | QLIKE | 2197 | 0.02553 | 9.481 | 0.1058 | 34.71 | 0.08024 | 3.423 | 0.0003159 | 0.0006317 |
| A->D | MSE | 2197 | -1.613 | -24.18 | 2.698 | 22.78 | 4.311 | 1.509 | 0.06575 | 0.1315 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1460 | 0.2757 | 1.36 | 1 | 1.008 | 1.012 | 1.056 | 0.6828 | 1.338 | 0.738 | 0.9765 | 0.7201 |
| High RV (monthly RV > threshold) | 737 | 0.253 | 1.128 | 1 | 0.9974 | 1.406 | 0.7762 | 0.8201 | 0.8149 | 0.7986 | 0.7638 | 0.7899 |
| Normal days (target <= Q3 + 1.5 IQR) | 2007 | 0.2054 | 1.459 | 1 | 1.004 | 1.074 | 1.157 | 0.8002 | 1.444 | 0.8655 | 1.073 | 0.8544 |
| Extreme days (target > Q3 + 1.5 IQR) | 190 | 0.9306 | 0.885 | 1 | 1.005 | 1.284 | 0.5245 | 0.554 | 0.5393 | 0.5047 | 0.5268 | 0.4807 |
| Feb 2018 Volmageddon | 43 | 0.9524 | 0.9144 | 1 | 1 | 0.9026 | 0.234 | 0.3681 | 0.26 | 0.3325 | 0.2813 | 0.3328 |
| COVID 2020 | 70 | 0.4582 | 0.6698 | 1 | 1 | 3.051 | 1.383 | 1.669 | 1.383 | 1.412 | 1.197 | 1.332 |
| 2022 bear market | 209 | 0.2271 | 1.179 | 1 | 1 | 0.9352 | 0.6866 | 0.4651 | 1.018 | 0.4623 | 0.5673 | 0.4658 |
| Apr 2025 tariffs | 42 | 0.686 | 0.9602 | 1 | 0.9751 | 1.141 | 0.4092 | 0.3028 | 0.4092 | 0.3029 | 0.4439 | 0.3091 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.208 | 4 |
| HAR | A | 3.439 | 4 |
| EN | A | 3.44 | 4 |
| RF | A | 3.336 | 4 |
| EN | B | 3.446 | 4 |
| RF | B | 3.605 | 4 |
| EN | C | 3.289 | 4 |
| RF | C | 3.6 | 4 |
| EN | D | 3.484 | 4 |
| RF | D | 3.607 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1408 | 1 |
| vix9d_spread | 0.1174 | 1 |
| negret_w | -0.1082 | 1 |
| es_C_d | 0.09243 | 1 |
| negret_d | -0.09136 | 1 |
| es_rk_d | 0.08816 | 1 |
| rv_d | 0.08762 | 1 |
| es_rsn_d | 0.08562 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2977 |
| negret_w | 0.1504 |
| iv_term | 0.1144 |
| log_vix | 0.05614 |
| vix3m_spread | 0.05539 |
| log_vxn | 0.05134 |
| iv_atm_1m | 0.0459 |
| parkinson_d | 0.04234 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-23, n = 2193)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2193 | 0.3537 | 7.908 | 0.8655 | 0.328 | 1.297 | 1.12 | -3.772 | 0.000166 | 0.9999 | -0.4171 | 0.6766 | yes | 0.196 | yes | 0.875 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.2726 | 7.058 | 0.8075 | 0.4003 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8216 | yes | 1 | 0 | 0.7708 | 8.298e-05 |
| EN | A | 2193 | 0.2731 | 7.198 | 0.7964 | 0.3883 | 1.002 | 1.02 | -0.2304 | 0.8178 | 0.5911 | -0.4717 | 0.6372 | yes | 0.8216 | yes | 0.875 | 0 | 0.7721 | 0.0001607 |
| RF | A | 2193 | 0.3511 | 10.73 | 0.8987 | 0.08823 | 1.288 | 1.52 | -1.677 | 0.0937 | 0.9531 | -1.25 | 0.2115 | yes | 0.196 | yes | 0.3492 | 0 | 0.9926 | 0.4806 |
| EN | B | 2193 | 0.4908 | 7.517 | 0.7597 | 0.3612 | 1.8 | 1.065 | -2.752 | 0.005973 | 0.997 | -0.3905 | 0.6962 | yes | 0.196 | yes | 0.875 | 2.736 | 1.388 | 0.9507 |
| RF | B | 2193 | 0.2883 | 10.16 | 0.8322 | 0.1365 | 1.057 | 1.44 | -0.3145 | 0.7532 | 0.6234 | -1.044 | 0.2965 | yes | 0.8216 | yes | 0.6648 | 0 | 0.8151 | 0.1387 |
| EN | C | 2193 | 0.555 | 7.712 | 0.7619 | 0.3447 | 2.036 | 1.093 | -3.151 | 0.00165 | 0.9992 | -0.4899 | 0.6243 | yes | 0.1204 | yes | 0.875 | 3.511 | 1.569 | 0.985 |
| RF | C | 2193 | 0.2462 | 8.651 | 0.827 | 0.2648 | 0.9029 | 1.226 | 1.221 | 0.2224 | 0.1112 | -0.8008 | 0.4233 | yes | 1 | yes | 0.727 | 0 | 0.696 | 0.001098 |
| EN | D | 2193 | 0.5533 | 7.907 | 0.7852 | 0.3281 | 2.03 | 1.12 | -3.167 | 0.001561 | 0.9992 | -0.6451 | 0.5189 | yes | 0.1454 | yes | 0.8138 | 3.374 | 1.564 | 0.9854 |
| RF | D | 2193 | 0.3028 | 10.15 | 0.8409 | 0.1379 | 1.111 | 1.438 | -0.5707 | 0.5683 | 0.7159 | -1.022 | 0.3071 | yes | 0.6606 | yes | 0.727 | 0 | 0.8562 | 0.2102 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2193 | 0.7708 | 3.772 | 0.000166 | 8.298e-05 | 0.8925 | 0.4171 | 0.6766 | 0.3383 | 1 | 1 |
| EN_A vs PER_A | 2193 | 0.7721 | 3.603 | 0.0003215 | 0.0001607 | 0.9103 | 0.3201 | 0.7489 | 0.3745 | 0.8276 | 0.637 |
| RF_A vs PER_A | 2193 | 0.9926 | 0.04854 | 0.9613 | 0.4806 | 1.357 | -0.7374 | 0.461 | 0.7695 | 0.1064 | 0.5186 |
| EN_A vs HAR_A | 2193 | 1.002 | -0.2304 | 0.8178 | 0.5911 | 1.02 | -0.4717 | 0.6372 | 0.6814 | 0.8276 | 0.637 |
| RF_A vs HAR_A | 2193 | 1.288 | -1.677 | 0.0937 | 0.9531 | 1.52 | -1.25 | 0.2115 | 0.8942 | 0.1064 | 0.5186 |
| RF_A vs EN_A | 2193 | 1.285 | -1.712 | 0.08705 | 0.9565 | 1.491 | -1.317 | 0.188 | 0.906 | 0.1064 | 0.5186 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2193 | -0.2177 | -79.73 | 0.06276 | 17.88 | 0.2805 | 3.684 | 0.0001177 | 0.0002353 |
| A->B | MSE | 2193 | -0.3186 | -4.426 | 0.5683 | 5.297 | 0.8869 | 1.015 | 0.155 | 0.31 |
| A->C | QLIKE | 2193 | -0.2819 | -103.2 | 0.1049 | 29.88 | 0.3868 | 4.184 | 1.488e-05 | 2.977e-05 |
| A->C | MSE | 2193 | -0.5137 | -7.136 | 2.078 | 19.37 | 2.592 | 1.287 | 0.09919 | 0.1984 |
| A->D | QLIKE | 2193 | -0.2802 | -102.6 | 0.04823 | 13.74 | 0.3285 | 3.83 | 6.598e-05 | 0.000132 |
| A->D | MSE | 2193 | -0.7083 | -9.84 | 0.5844 | 5.447 | 1.293 | 1.272 | 0.1018 | 0.2037 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1456 | 0.2786 | 1.398 | 1 | 1.001 | 1.059 | 2.048 | 0.8337 | 2.359 | 0.877 | 2.302 | 0.8776 |
| High RV (monthly RV > threshold) | 737 | 0.2608 | 1.084 | 1 | 1.003 | 1.77 | 1.278 | 1.53 | 1.353 | 0.9576 | 1.455 | 1.603 |
| Normal days (target <= Q3 + 1.5 IQR) | 1994 | 0.1716 | 1.451 | 1 | 0.995 | 1.121 | 2.745 | 0.9409 | 3.141 | 1.052 | 3.104 | 0.9787 |
| Extreme days (target > Q3 + 1.5 IQR) | 199 | 1.285 | 1.092 | 1 | 1.011 | 1.511 | 0.537 | 1.213 | 0.557 | 0.7039 | 0.5928 | 1.287 |
| Feb 2018 Volmageddon | 43 | 1.348 | 1.339 | 1 | 1 | 1.256 | 0.431 | 0.9568 | 0.4794 | 0.9236 | 0.5079 | 0.9177 |
| COVID 2020 | 70 | 1.126 | 0.9603 | 1 | 1.037 | 2.686 | 0.7275 | 2.561 | 0.7524 | 0.9658 | 0.7524 | 2.763 |
| 2022 bear market | 209 | 0.1844 | 1.035 | 1 | 1 | 0.9648 | 2.295 | 0.4934 | 2.232 | 0.5259 | 2.215 | 0.5808 |
| Apr 2025 tariffs | 42 | 0.9122 | 1.311 | 1 | 0.9686 | 1.135 | 0.6099 | 0.7743 | 0.5951 | 0.8141 | 0.6789 | 0.6739 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.155 | 4 |
| HAR | A | 3.397 | 4 |
| EN | A | 3.395 | 4 |
| RF | A | 3.164 | 4 |
| EN | B | 2.743 | 4 |
| RF | B | 3.33 | 4 |
| EN | C | 2.554 | 4 |
| RF | C | 3.481 | 4 |
| EN | D | 2.563 | 4 |
| RF | D | 3.298 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.1315 | 0.7778 |
| vix9d_spread | 0.1212 | 1 |
| parkinson_d | 0.1173 | 1 |
| iv_term | -0.1162 | 1 |
| negret_w | -0.109 | 1 |
| negret_d | -0.09075 | 0.8889 |
| iv_atm_1m | 0.08379 | 1 |
| vix3m_spread | -0.0799 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1567 |
| vix3m_spread | 0.07826 |
| negret_w | 0.06602 |
| log_vxn | 0.05915 |
| iv_atm_1m | 0.05888 |
| vix9d_spread | 0.04954 |
| log_vix | 0.04671 |
| parkinson_w | 0.04132 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-08-28, n = 2176)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2176 | 0.6449 | 10.93 | 1.104 | -0.4311 | 1.548 | 1.639 | -2.007 | 0.04483 | 0.9776 | -1.225 | 0.2208 | yes | 0.511 | yes | 0.4842 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.4167 | 6.667 | 0.9035 | 0.1268 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7178 | yes | 0.8536 | 0 | 0.6461 | 0.02242 |
| EN | A | 2176 | 0.4131 | 6.578 | 0.8614 | 0.1385 | 0.9914 | 0.9867 | 0.2714 | 0.7861 | 0.393 | 0.2134 | 0.831 | yes | 1 | yes | 1 | 0 | 0.6405 | 0.02514 |
| RF | A | 2176 | 0.4956 | 7.409 | 0.9097 | 0.02953 | 1.189 | 1.111 | -1.64 | 0.1011 | 0.9495 | -0.9914 | 0.3216 | yes | 0.511 | yes | 0.4842 | 0 | 0.7685 | 0.03914 |
| EN | B | 2176 | 0.5557 | 6.767 | 0.8741 | 0.1137 | 1.334 | 1.015 | -1.684 | 0.09233 | 0.9538 | -0.1866 | 0.852 | yes | 0.511 | yes | 0.8536 | 0.2298 | 0.8616 | 0.2608 |
| RF | B | 2176 | 0.5849 | 10.99 | 1.425 | -0.4395 | 1.404 | 1.648 | -2.594 | 0.00955 | 0.9952 | -2.448 | 0.01445 | yes | 0.511 | yes | 0.1414 | 0 | 0.9069 | 0.3047 |
| EN | C | 2176 | 0.5941 | 6.941 | 0.8867 | 0.09089 | 1.426 | 1.041 | -1.949 | 0.05138 | 0.9743 | -0.4228 | 0.6725 | yes | 0.511 | yes | 0.8428 | 0.2298 | 0.9213 | 0.3508 |
| RF | C | 2176 | 0.4452 | 7.079 | 0.9014 | 0.07284 | 1.068 | 1.062 | -0.7001 | 0.484 | 0.758 | -0.5252 | 0.5995 | yes | 0.534 | yes | 0.8086 | 0 | 0.6903 | 0.03785 |
| EN | D | 2176 | 0.5336 | 6.821 | 0.8827 | 0.1066 | 1.281 | 1.023 | -1.909 | 0.05636 | 0.9718 | -0.327 | 0.7437 | yes | 0.511 | yes | 0.8428 | 0.1379 | 0.8274 | 0.177 |
| RF | D | 2176 | 0.4466 | 7.041 | 0.8923 | 0.07778 | 1.072 | 1.056 | -0.8067 | 0.4199 | 0.79 | -0.4901 | 0.6241 | yes | 0.511 | yes | 0.8428 | 0 | 0.6925 | 0.03179 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2176 | 0.6461 | 2.007 | 0.04483 | 0.02242 | 0.6101 | 1.225 | 0.2208 | 0.1104 | 0.7178 | 0.6952 |
| EN_A vs PER_A | 2176 | 0.6405 | 1.959 | 0.05028 | 0.02514 | 0.602 | 1.161 | 0.2458 | 0.1229 | 1 | 1 |
| RF_A vs PER_A | 2176 | 0.7685 | 1.762 | 0.07827 | 0.03914 | 0.6781 | 1.017 | 0.3093 | 0.1547 | 0.0972 | 0.3726 |
| EN_A vs HAR_A | 2176 | 0.9914 | 0.2714 | 0.7861 | 0.393 | 0.9867 | 0.2134 | 0.831 | 0.4155 | 1 | 1 |
| RF_A vs HAR_A | 2176 | 1.189 | -1.64 | 0.1011 | 0.9495 | 1.111 | -0.9914 | 0.3216 | 0.8392 | 0.0972 | 0.3726 |
| RF_A vs EN_A | 2176 | 1.2 | -1.792 | 0.07329 | 0.9634 | 1.126 | -1.461 | 0.1441 | 0.9279 | 0.0972 | 0.3726 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2176 | -0.1426 | -34.52 | -0.08929 | -18.02 | 0.0533 | 0.5006 | 0.3084 | 0.6167 |
| A->B | MSE | 2176 | -0.189 | -2.874 | -3.581 | -48.33 | -3.392 | -2.008 | 0.9776 | 0.04472 |
| A->C | QLIKE | 2176 | -0.1811 | -43.83 | 0.05042 | 10.17 | 0.2315 | 2.166 | 0.01522 | 0.03044 |
| A->C | MSE | 2176 | -0.3632 | -5.521 | 0.3307 | 4.463 | 0.6939 | 1.607 | 0.05413 | 0.1083 |
| A->D | QLIKE | 2176 | -0.1205 | -29.17 | 0.04897 | 9.882 | 0.1695 | 2.168 | 0.01514 | 0.03027 |
| A->D | MSE | 2176 | -0.2435 | -3.701 | 0.3684 | 4.972 | 0.6119 | 1.44 | 0.07501 | 0.15 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1439 | 0.4803 | 1.655 | 1 | 0.9512 | 1.098 | 1.127 | 1.425 | 1.188 | 0.9642 | 1.18 | 0.9845 |
| High RV (monthly RV > threshold) | 737 | 0.2924 | 1.204 | 1 | 1.12 | 1.483 | 1.998 | 1.336 | 2.188 | 1.403 | 1.603 | 1.352 |
| Normal days (target <= Q3 + 1.5 IQR) | 2049 | 0.2011 | 1.78 | 1 | 1.002 | 1.243 | 1.882 | 1.827 | 2.003 | 1.039 | 1.745 | 1.055 |
| Extreme days (target > Q3 + 1.5 IQR) | 127 | 3.894 | 1.354 | 1 | 0.9823 | 1.144 | 0.8771 | 1.051 | 0.9452 | 1.093 | 0.8938 | 1.086 |
| Feb 2018 Volmageddon | 43 | 0.4504 | 3.098 | 1 | 1 | 1.635 | 0.6283 | 0.8046 | 0.7642 | 0.7336 | 0.7371 | 0.776 |
| COVID 2020 | 70 | 2.939 | 1.431 | 1 | 1.099 | 1.368 | 1.036 | 1.198 | 1.205 | 1.345 | 1.026 | 1.311 |
| 2022 bear market | 209 | 0.2479 | 1.076 | 1 | 0.9981 | 0.9978 | 2.512 | 0.8438 | 2.512 | 0.7167 | 2.412 | 0.724 |
| Apr 2025 tariffs | 42 | 0.3107 | 2.399 | 1 | 1.002 | 1.548 | 0.6173 | 0.7914 | 0.6173 | 0.7626 | 0.7695 | 0.8359 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.274 | 4 |
| HAR | A | 2.964 | 4 |
| EN | A | 2.979 | 4 |
| RF | A | 2.729 | 4 |
| EN | B | 2.536 | 4 |
| RF | B | 2.713 | 4 |
| EN | C | 2.424 | 4 |
| RF | C | 2.898 | 4 |
| EN | D | 2.623 | 4 |
| RF | D | 2.889 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 89.76 | 1.772 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 31.96 | 0.6243 | 24.52 | 0.3845 | 0.7381 | -0.1338 | 0.8428 |
| HAR_A | 2176 | 51.88 | 1.086 | 35.06 | 0.5662 | 0.6893 | 0.0121 | 0.8042 |
| EN_A | 2176 | 72.41 | 1.608 | 56.78 | 1.014 | 0.6985 | 0.08601 | 0.8061 |
| RF_A | 2176 | 57.33 | 1.154 | 37.78 | 0.5909 | 0.6994 | 0.0819 | 0.8382 |
| EN_B | 2176 | 75.94 | 1.523 | 57.18 | 0.8878 | 0.7426 | 0.09853 | 0.8879 |
| RF_B | 2176 | 46.81 | 0.9179 | 25.81 | 0.393 | 0.6613 | 0.04903 | 0.8258 |
| EN_C | 2176 | 83.46 | 1.91 | 69.23 | 1.271 | 0.7445 | 0.09176 | 0.8897 |
| RF_C | 2176 | 57.4 | 1.139 | 36.17 | 0.5537 | 0.6907 | 0.09566 | 0.8552 |
| EN_D | 2176 | 68.45 | 1.367 | 51.53 | 0.7971 | 0.7261 | 0.08249 | 0.8676 |
| RF_D | 2176 | 55.91 | 1.108 | 37.15 | 0.5694 | 0.6769 | 0.09599 | 0.8267 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1601 | 1 |
| es_J_w | 0.1032 | 0.8889 |
| iv_skew_1m | 0.09368 | 1 |
| iv_term | -0.08502 | 1 |
| vix9d_spread | 0.07978 | 1 |
| es_rsp_d | 0.06892 | 0.8889 |
| negret_w | -0.06151 | 1 |
| vrp | 0.05311 | 0.7778 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.09472 |
| negret_w | 0.03849 |
| log_vxn | 0.03584 |
| iv_atm_1m | 0.0357 |
| rv_d | 0.03486 |
| vix3m_spread | 0.03348 |
| parkinson_w | 0.03257 |
| negret_m | 0.02857 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_D | 0.9581 | 0.2664 | yes | no | 0.7325 | yes | EN_D | NaN | NaN |
| SPY | 5 | RF_D | 1.111 | 0.785 | yes | no | 0.8131 | no | EN_D RF_D | NaN | NaN |
| SPY | 22 | EN_D | 1.251 | 0.9687 | yes | no | 0.8298 | no | EN_D RF_D | 50.33 | 0.109 |
| ES | 1 | RF_B | 0.7263 | 0.0001368 | yes | yes | 0.5646 | yes | RF_A EN_C | NaN | NaN |
| ES | 5 | RF_C | 0.9029 | 0.1112 | yes | no | 0.696 | yes | RF_A EN_B RF_B EN_C EN_D RF_D | NaN | NaN |
| ES | 22 | EN_A | 0.9914 | 0.393 | yes | no | 0.6405 | yes | EN_B RF_B EN_C EN_D | 56.78 | 0.08601 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.308 | 1.258 | 3.04e-10 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7645 |
| SPY | 1 | all-model common days | EN | D | 2.183 | 1.164 | 0.0003821 | no | 1.669 |
| SPY | 1 | all-model common days | RF | D | 0.9581 | 1.385 | 0.5329 | yes | 0.7325 |
| SPY | 5 | all-model common days | PER | A | 1.366 | 1.204 | 6.427e-07 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.732 |
| SPY | 5 | all-model common days | EN | D | 3.28 | 1.142 | 0.0001518 | no | 2.401 |
| SPY | 5 | all-model common days | RF | D | 1.111 | 1.556 | 0.43 | yes | 0.8131 |
| SPY | 22 | all-model common days | PER | A | 1.508 | 1.55 | 0.07526 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6631 |
| SPY | 22 | all-model common days | EN | D | 1.251 | 0.8971 | 0.06268 | yes | 0.8298 |
| SPY | 22 | all-model common days | RF | D | 1.303 | 1.053 | 0.0974 | yes | 0.8642 |
| ES | 1 | all-model common days | PER | A | 1.286 | 0.9261 | 1.642e-08 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7773 |
| ES | 1 | all-model common days | EN | A | 1.004 | 0.9981 | 0.2888 | yes | 0.7807 |
| ES | 1 | all-model common days | RF | A | 1.137 | 1.773 | 0.1234 | yes | 0.8836 |
| ES | 1 | all-model common days | EN | B | 0.9672 | 1.298 | 0.7332 | yes | 0.7519 |
| ES | 1 | all-model common days | RF | B | 0.7263 | 1.432 | 0.0002735 | yes | 0.5646 |
| ES | 1 | all-model common days | EN | C | 1.172 | 1.3 | 0.1913 | yes | 0.9113 |
| ES | 1 | all-model common days | RF | C | 0.7572 | 1.378 | 0.0009535 | yes | 0.5886 |
| ES | 1 | all-model common days | EN | D | 0.9091 | 1.239 | 0.2858 | yes | 0.7067 |
| ES | 1 | all-model common days | RF | D | 0.7422 | 1.369 | 0.0003049 | yes | 0.5769 |
| ES | 5 | all-model common days | PER | A | 1.297 | 1.12 | 0.000166 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7708 |
| ES | 5 | all-model common days | EN | A | 1.002 | 1.02 | 0.8178 | yes | 0.7721 |
| ES | 5 | all-model common days | RF | A | 1.288 | 1.52 | 0.0937 | yes | 0.9926 |
| ES | 5 | all-model common days | EN | B | 1.8 | 1.065 | 0.005973 | yes | 1.388 |
| ES | 5 | all-model common days | RF | B | 1.057 | 1.44 | 0.7532 | yes | 0.8151 |
| ES | 5 | all-model common days | EN | C | 2.036 | 1.093 | 0.00165 | yes | 1.569 |
| ES | 5 | all-model common days | RF | C | 0.9029 | 1.226 | 0.2224 | yes | 0.696 |
| ES | 5 | all-model common days | EN | D | 2.03 | 1.12 | 0.001561 | yes | 1.564 |
| ES | 5 | all-model common days | RF | D | 1.111 | 1.438 | 0.5683 | yes | 0.8562 |
| ES | 22 | all-model common days | PER | A | 1.548 | 1.639 | 0.04483 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6461 |
| ES | 22 | all-model common days | EN | A | 0.9914 | 0.9867 | 0.7861 | yes | 0.6405 |
| ES | 22 | all-model common days | RF | A | 1.189 | 1.111 | 0.1011 | yes | 0.7685 |
| ES | 22 | all-model common days | EN | B | 1.334 | 1.015 | 0.09233 | yes | 0.8616 |
| ES | 22 | all-model common days | RF | B | 1.404 | 1.648 | 0.00955 | yes | 0.9069 |
| ES | 22 | all-model common days | EN | C | 1.426 | 1.041 | 0.05138 | yes | 0.9213 |
| ES | 22 | all-model common days | RF | C | 1.068 | 1.062 | 0.484 | yes | 0.6903 |
| ES | 22 | all-model common days | EN | D | 1.281 | 1.023 | 0.05636 | yes | 0.8274 |
| ES | 22 | all-model common days | RF | D | 1.072 | 1.056 | 0.4199 | yes | 0.6925 |

