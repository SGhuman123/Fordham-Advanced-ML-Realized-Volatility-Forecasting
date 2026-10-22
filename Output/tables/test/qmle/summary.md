# Results: test period, scenario "qmle"

Generated 2026-10-21 23:42 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2118)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2118 | 0.1875 | 0.8028 | 0.3363 | 0.7503 | 1.133 | 0.8759 | -3.624 | 0.0002969 | 0.9999 | 0.7349 | 0.4625 | no | 0.0856 | yes | 0.8712 | 0 | 1 | NaN |
| HAR | A | 2118 | 0.1654 | 0.9166 | 0.351 | 0.7149 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0856 | yes | 0.6688 | 0 | 0.8822 | 0.0001485 |
| EN | A | 2118 | 0.1655 | 0.9164 | 0.3511 | 0.7149 | 1 | 0.9999 | -0.8828 | 0.3774 | 0.8113 | 1.749 | 0.08046 | no | 0.0856 | yes | 0.6688 | 0 | 0.8826 | 0.0001593 |
| RF | A | 2118 | 0.1522 | 0.8153 | 0.3403 | 0.7464 | 0.9205 | 0.8895 | 3.754 | 0.0001788 | 8.938e-05 | 0.9269 | 0.3541 | yes | 0.642 | yes | 0.8712 | 0 | 0.8121 | 7.832e-20 |
| EN | C | 2118 | 0.1957 | 0.9306 | 0.3536 | 0.7105 | 1.183 | 1.015 | -2.369 | 0.01791 | 0.991 | -0.08944 | 0.9287 | no | 0.0856 | yes | 0.6714 | 0.4249 | 1.044 | 0.7214 |
| RF | C | 2118 | 0.1401 | 0.7142 | 0.3356 | 0.7778 | 0.847 | 0.7792 | 5.08 | 4.099e-07 | 2.05e-07 | 0.8582 | 0.3909 | yes | 1 | yes | 1 | 0 | 0.7473 | 3.519e-16 |
| EN | D | 2118 | 0.2777 | 0.9721 | 0.339 | 0.6976 | 1.679 | 1.061 | -3.263 | 0.00112 | 0.9994 | -0.3326 | 0.7394 | no | 0.0856 | yes | 0.6688 | 2.172 | 1.481 | 0.9955 |
| RF | D | 2118 | 0.1552 | 1.87 | 0.3707 | 0.4185 | 0.9384 | 2.04 | 0.9083 | 0.3638 | 0.1819 | -1.001 | 0.3168 | yes | 0.642 | yes | 0.6688 | 0 | 0.8279 | 0.003735 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2120 | 0.8826 | 3.618 | 0.0003044 | 0.0001522 | 1.142 | -0.7349 | 0.4625 | 0.7688 | 0.0004 | 0.2526 |
| EN_A vs PER_A | 2120 | 0.883 | 3.6 | 0.0003261 | 0.0001631 | 1.142 | -0.7341 | 0.463 | 0.7685 | 0.0004 | 0.2746 |
| RF_A vs PER_A | 2120 | 0.8123 | 9.132 | 1.529e-19 | 7.647e-20 | 1.016 | -0.07179 | 0.9428 | 0.5286 | 1 | 0.9096 |
| EN_A vs HAR_A | 2120 | 1 | -0.8599 | 0.3899 | 0.805 | 0.9999 | 1.757 | 0.07908 | 0.03954 | 0.0004 | 0.2746 |
| RF_A vs HAR_A | 2120 | 0.9203 | 3.768 | 0.0001692 | 8.461e-05 | 0.8895 | 0.927 | 0.354 | 0.177 | 1 | 0.9096 |
| RF_A vs EN_A | 2120 | 0.9199 | 3.777 | 0.0001629 | 8.144e-05 | 0.8896 | 0.9259 | 0.3546 | 0.1773 | 1 | 0.9096 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2120 | -0.03017 | -18.22 | 0.01216 | 7.982 | 0.04233 | 3.432 | 0.0003056 | 0.0006112 |
| A->C | MSE | 2120 | -0.01413 | -1.544 | 0.101 | 12.4 | 0.1151 | 0.3311 | 0.3703 | 0.7406 |
| A->D | QLIKE | 2118 | -0.1122 | -67.81 | -0.002966 | -1.948 | 0.1092 | 3.123 | 0.0009077 | 0.001815 |
| A->D | MSE | 2118 | -0.05569 | -6.077 | -1.054 | -129.3 | -0.9985 | -1.251 | 0.8945 | 0.2111 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1628 | 0.1721 | 1.164 | 1 | 1 | 0.9312 | 1.275 | 0.8541 | 1.859 | 0.8737 |
| High RV (monthly RV > threshold) | 490 | 0.143 | 1.012 | 1 | 1 | 0.8777 | 0.8156 | 0.8187 | 0.9589 | 1.197 |
| Normal days (target <= Q3 + 1.5 IQR) | 1938 | 0.1493 | 1.205 | 1 | 1.001 | 0.9503 | 1.322 | 0.9165 | 1.872 | 0.9248 |
| Extreme days (target > Q3 + 1.5 IQR) | 180 | 0.3391 | 0.795 | 1 | 0.9997 | 0.779 | 0.526 | 0.5177 | 0.7617 | 1.003 |
| Feb 2018 Volmageddon | 17 | 0.129 | 1.383 | 1 | 1 | 0.9511 | 0.7292 | 1.087 | 1.273 | 1.211 |
| COVID 2020 | 70 | 0.2199 | 0.6615 | 1 | 1 | 0.7355 | 0.6384 | 0.7528 | 0.6921 | 2.424 |
| 2022 bear market | 203 | 0.1022 | 1.114 | 1 | 0.9998 | 0.9725 | 0.725 | 0.7453 | 1.231 | 0.8887 |
| Apr 2025 tariffs | 42 | 0.2844 | 0.7522 | 1 | 1 | 0.6767 | 0.5933 | 0.4539 | 0.5587 | 0.3728 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.595 | 4 |
| HAR | A | 3.676 | 4 |
| EN | A | 3.676 | 4 |
| RF | A | 3.688 | 4 |
| EN | C | 3.619 | 4 |
| RF | C | 3.73 | 4 |
| EN | D | 3.341 | 4 |
| RF | D | 3.689 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1075 | 1 |
| rv_d | 0.101 | 1 |
| es_rsn_d | 0.08345 | 1 |
| overnight_w | 0.07879 | 0.6667 |
| negret_w | -0.07085 | 1 |
| vrp | 0.0614 | 1 |
| es_J_w | 0.05843 | 0.6667 |
| vix9d_spread | 0.04492 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_C_d | 0.167 |
| vix9d_spread | 0.1032 |
| rv_d | 0.09753 |
| negret_w | 0.07294 |
| es_rsn_d | 0.06322 |
| es_rk_d | 0.0617 |
| overnight_d | 0.05726 |
| log_vxn | 0.04037 |

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
| PER | A | 2135 | 0.2199 | 1.405 | 0.3981 | 0.4901 | 1.336 | 1.222 | -4.834 | 1.431e-06 | 1 | -1.053 | 0.2923 | yes | 0.1016 | yes | 0.7436 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.1646 | 1.15 | 0.3724 | 0.5827 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8488 | yes | 0.7436 | 0 | 0.7484 | 7.156e-07 |
| EN | A | 2135 | 0.1645 | 1.149 | 0.3718 | 0.5829 | 0.9996 | 0.9995 | 0.5877 | 0.5568 | 0.2784 | 1.256 | 0.2092 | yes | 0.8534 | yes | 1 | 0 | 0.7481 | 7.189e-07 |
| RF | A | 2135 | 0.1696 | 1.572 | 0.4012 | 0.4295 | 1.03 | 1.367 | -1.094 | 0.2741 | 0.8629 | -1.315 | 0.1885 | yes | 0.7544 | yes | 0.7436 | 0 | 0.7711 | 5.645e-07 |
| EN | C | 2135 | 0.2826 | 1.293 | 0.4023 | 0.5309 | 1.717 | 1.124 | -3.267 | 0.001105 | 0.9994 | -0.6022 | 0.5471 | yes | 0.1016 | yes | 0.7436 | 1.171 | 1.285 | 0.9504 |
| RF | C | 2135 | 0.1627 | 1.206 | 0.4223 | 0.5623 | 0.9884 | 1.049 | 0.2089 | 0.8345 | 0.4173 | -0.2102 | 0.8335 | yes | 1 | yes | 0.7436 | 0 | 0.7397 | 0.0003503 |
| EN | D | 2135 | 0.353 | 1.461 | 0.3825 | 0.4699 | 2.145 | 1.27 | -3.455 | 0.0005602 | 0.9997 | -0.8704 | 0.3842 | no | 0.094 | yes | 0.7436 | 1.92 | 1.605 | 0.9924 |
| RF | D | 2135 | 0.1844 | 2.104 | 0.4027 | 0.2366 | 1.121 | 1.829 | -0.8507 | 0.395 | 0.8025 | -1.097 | 0.2726 | yes | 0.7544 | yes | 0.7436 | 0 | 0.8388 | 0.09725 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2135 | 0.7484 | 4.834 | 1.431e-06 | 7.156e-07 | 0.8184 | 1.053 | 0.2923 | 0.1462 | 0.4824 | 0.2252 |
| EN_A vs PER_A | 2135 | 0.7481 | 4.833 | 1.438e-06 | 7.189e-07 | 0.818 | 1.056 | 0.2913 | 0.1456 | 1 | 1 |
| RF_A vs PER_A | 2135 | 0.7711 | 4.882 | 1.129e-06 | 5.645e-07 | 1.119 | -0.4502 | 0.6526 | 0.6737 | 0.2486 | 0.2252 |
| EN_A vs HAR_A | 2135 | 0.9996 | 0.5877 | 0.5568 | 0.2784 | 0.9995 | 1.256 | 0.2092 | 0.1046 | 1 | 1 |
| RF_A vs HAR_A | 2135 | 1.03 | -1.094 | 0.2741 | 0.8629 | 1.367 | -1.315 | 0.1885 | 0.9057 | 0.2486 | 0.2252 |
| RF_A vs EN_A | 2135 | 1.031 | -1.105 | 0.2692 | 0.8654 | 1.368 | -1.317 | 0.1879 | 0.9061 | 0.2486 | 0.2252 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2135 | -0.1181 | -71.81 | 0.006914 | 4.078 | 0.125 | 3.493 | 0.0002433 | 0.0004867 |
| A->C | MSE | 2135 | -0.1432 | -12.46 | 0.3662 | 23.29 | 0.5094 | 0.6997 | 0.2421 | 0.4842 |
| A->D | QLIKE | 2135 | -0.1885 | -114.6 | -0.01488 | -8.773 | 0.1736 | 3.04 | 0.001195 | 0.002391 |
| A->D | MSE | 2135 | -0.3114 | -27.09 | -0.5314 | -33.8 | -0.22 | -0.6375 | 0.7381 | 0.5238 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1639 | 0.1623 | 1.38 | 1 | 0.9992 | 1.005 | 1.928 | 0.9447 | 2.412 | 0.9508 |
| High RV (monthly RV > threshold) | 496 | 0.1722 | 1.198 | 1 | 1.001 | 1.108 | 1.061 | 1.124 | 1.314 | 1.65 |
| Normal days (target <= Q3 + 1.5 IQR) | 1959 | 0.1283 | 1.379 | 1 | 0.998 | 1.039 | 2.11 | 1.108 | 2.633 | 1.004 |
| Extreme days (target > Q3 + 1.5 IQR) | 176 | 0.5686 | 1.229 | 1 | 1.004 | 1.008 | 0.7306 | 0.6879 | 0.9178 | 1.413 |
| Feb 2018 Volmageddon | 15 | 0.1336 | 1.49 | 1 | 1 | 1.387 | 0.528 | 1.582 | 1.287 | 1.492 |
| COVID 2020 | 70 | 0.505 | 1.155 | 1 | 1 | 1.036 | 1.072 | 0.9541 | 0.9644 | 2.642 |
| 2022 bear market | 206 | 0.1121 | 1.248 | 1 | 0.9966 | 1.007 | 0.6745 | 0.8925 | 2.354 | 0.9351 |
| Apr 2025 tariffs | 42 | 0.5916 | 1.249 | 1 | 1 | 1.091 | 0.6534 | 0.8088 | 0.5529 | 0.7315 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.504 | 4 |
| HAR | A | 3.66 | 4 |
| EN | A | 3.66 | 4 |
| RF | A | 3.638 | 4 |
| EN | C | 3.354 | 4 |
| RF | C | 3.68 | 4 |
| EN | D | 3.125 | 4 |
| RF | D | 3.601 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.08785 | 0.8889 |
| vrp | 0.05757 | 1 |
| rv_d | 0.0548 | 1 |
| negret_w | -0.05094 | 1 |
| es_C_d | 0.04896 | 0.8889 |
| overnight_d | 0.04823 | 0.8889 |
| vix3m_spread | -0.04267 | 1 |
| vix9d_spread | 0.03574 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.1236 |
| iv_term | 0.08722 |
| negret_w | 0.06428 |
| rv_w | 0.0586 |
| parkinson_w | 0.04828 |
| log_vxn | 0.04592 |
| vix3m_spread | 0.04558 |
| es_rsn_d | 0.04541 |

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
| PER | A | 2109 | 0.4459 | 2.53 | 0.5594 | -0.3869 | 1.532 | 1.577 | -1.882 | 0.06 | 0.97 | -1.332 | 0.1831 | yes | 0.2204 | yes | 0.4514 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.2912 | 1.604 | 0.4827 | 0.1206 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.9116 | yes | 0.813 | 0 | 0.6529 | 0.03 |
| EN | A | 2109 | 0.2993 | 1.609 | 0.4903 | 0.1179 | 1.028 | 1.003 | -1.402 | 0.1611 | 0.9194 | -0.9115 | 0.3621 | yes | 0.6568 | yes | 0.7916 | 0 | 0.6713 | 0.03861 |
| RF | A | 2109 | 0.3222 | 1.409 | 0.4834 | 0.2278 | 1.106 | 0.8782 | -1.495 | 0.1351 | 0.9324 | 0.6622 | 0.5079 | yes | 0.6568 | yes | 1 | 0 | 0.7224 | 0.02999 |
| EN | C | 2109 | 0.288 | 1.47 | 0.4833 | 0.1944 | 0.9892 | 0.9162 | 0.1204 | 0.9042 | 0.4521 | 0.6241 | 0.5326 | yes | 1 | yes | 0.813 | 0 | 0.6459 | 0.06491 |
| RF | C | 2109 | 0.3111 | 1.413 | 0.4832 | 0.2256 | 1.069 | 0.8807 | -1.244 | 0.2136 | 0.8932 | 0.8542 | 0.3931 | yes | 0.6568 | yes | 0.9792 | 0 | 0.6977 | 0.06337 |
| EN | D | 2109 | 0.3756 | 1.453 | 0.4401 | 0.2037 | 1.29 | 0.9055 | -1.871 | 0.06155 | 0.9692 | 0.6441 | 0.5196 | yes | 0.3186 | yes | 0.9358 | 0 | 0.8423 | 0.1071 |
| RF | D | 2109 | 0.3621 | 1.682 | 0.4667 | 0.07815 | 1.244 | 1.048 | -1.479 | 0.1392 | 0.9304 | -0.2761 | 0.7825 | yes | 0.5102 | yes | 0.813 | 0 | 0.812 | 0.07549 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2109 | 0.6529 | 1.882 | 0.06 | 0.03 | 0.6341 | 1.332 | 0.1831 | 0.09154 | 1 | 0.5494 |
| EN_A vs PER_A | 2109 | 0.6713 | 1.768 | 0.07721 | 0.03861 | 0.636 | 1.324 | 0.1855 | 0.09277 | 0.2666 | 0.5372 |
| RF_A vs PER_A | 2109 | 0.7224 | 1.882 | 0.05998 | 0.02999 | 0.5568 | 1.204 | 0.2286 | 0.1143 | 0.2666 | 1 |
| EN_A vs HAR_A | 2109 | 1.028 | -1.402 | 0.1611 | 0.9194 | 1.003 | -0.9115 | 0.3621 | 0.8189 | 0.2666 | 0.5372 |
| RF_A vs HAR_A | 2109 | 1.106 | -1.495 | 0.1351 | 0.9324 | 0.8782 | 0.6622 | 0.5079 | 0.254 | 0.2666 | 1 |
| RF_A vs EN_A | 2109 | 1.076 | -1.018 | 0.3089 | 0.8456 | 0.8754 | 0.6794 | 0.4969 | 0.2485 | 0.2666 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2109 | 0.01131 | 3.779 | 0.01101 | 3.418 | -0.0002977 | -0.01939 | 0.5077 | 0.9845 |
| A->C | MSE | 2109 | 0.1395 | 8.667 | -0.003989 | -0.2832 | -0.1435 | -0.5624 | 0.713 | 0.5739 |
| A->D | QLIKE | 2109 | -0.07628 | -25.48 | -0.03995 | -12.4 | 0.03633 | 0.6668 | 0.2525 | 0.505 |
| A->D | MSE | 2109 | 0.1566 | 9.732 | -0.2729 | -19.38 | -0.4296 | -0.8124 | 0.7917 | 0.4167 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1613 | 0.3124 | 1.539 | 1 | 1.027 | 1.112 | 0.9668 | 1.049 | 1.314 | 1.102 |
| High RV (monthly RV > threshold) | 496 | 0.2219 | 1.5 | 1 | 1.035 | 1.08 | 1.092 | 1.159 | 1.179 | 1.893 |
| Normal days (target <= Q3 + 1.5 IQR) | 1974 | 0.1561 | 1.474 | 1 | 1.051 | 1.095 | 1.149 | 1.15 | 1.266 | 1.072 |
| Extreme days (target > Q3 + 1.5 IQR) | 135 | 2.266 | 1.59 | 1 | 1.005 | 1.118 | 0.8282 | 0.9862 | 1.314 | 1.417 |
| Feb 2018 Volmageddon | 14 | 0.08042 | 0.7621 | 1 | 1 | 1.615 | 2.303 | 3.845 | 2.142 | 2.553 |
| COVID 2020 | 70 | 1.548 | 2.046 | 1 | 1 | 0.9294 | 0.9025 | 0.8822 | 1.197 | 1.885 |
| 2022 bear market | 206 | 0.1607 | 1.587 | 1 | 1.006 | 1.134 | 0.8059 | 1.04 | 1.646 | 1.382 |
| Apr 2025 tariffs | 42 | 0.3667 | 1.7 | 1 | 1 | 1.338 | 0.6666 | 0.9873 | 0.4999 | 0.5692 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.859 | 4 |
| HAR | A | 3.313 | 4 |
| EN | A | 3.302 | 4 |
| RF | A | 3.21 | 4 |
| EN | C | 3.352 | 4 |
| RF | C | 3.275 | 4 |
| EN | D | 3.044 | 4 |
| RF | D | 3.117 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 102.8 | 2.432 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 53.43 | 1.156 | 32.16 | 0.4486 | 0.7307 | -0.1054 | 0.8255 |
| HAR_A | 2109 | 65.17 | 1.837 | 48.05 | 0.9086 | 0.6785 | 0.0642 | 0.7648 |
| EN_A | 2109 | 63.93 | 1.815 | 44.72 | 0.8475 | 0.6633 | 0.06863 | 0.7496 |
| RF_A | 2109 | 94 | 3.318 | 81.31 | 2.18 | 0.7278 | 0.202 | 0.8246 |
| EN_C | 2109 | 67.8 | 1.753 | 37.92 | 0.5781 | 0.6913 | 0.1018 | 0.8061 |
| RF_C | 2109 | 66.1 | 1.592 | 32.41 | 0.4818 | 0.716 | 0.1135 | 0.8706 |
| EN_D | 2109 | 89.85 | 2.123 | 56.78 | 0.8417 | 0.743 | 0.09307 | 0.8872 |
| RF_D | 2109 | 75.75 | 1.802 | 39.9 | 0.5939 | 0.6885 | 0.09187 | 0.8431 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.05623 | 1 |
| iv_skew_1m | 0.04746 | 1 |
| es_J_w | 0.04194 | 1 |
| vix9d_spread | 0.03335 | 1 |
| negret_w | -0.03139 | 1 |
| es_rsp_d | 0.03118 | 0.7778 |
| vrp | 0.02892 | 0.8889 |
| iv_term | -0.02866 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.0599 |
| rv_d | 0.05017 |
| log_vxn | 0.04971 |
| parkinson_w | 0.03749 |
| rv_w | 0.03706 |
| es_rsn_w | 0.03691 |
| es_C_d | 0.03397 |
| log_vix | 0.03353 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_C | 0.847 | 2.05e-07 | yes | yes | 0.7473 | yes | EN_C EN_D | NaN | NaN |
| SPY | 5 | RF_C | 0.9884 | 0.4173 | yes | no | 0.7397 | yes | EN_C EN_D RF_D | NaN | NaN |
| SPY | 22 | EN_C | 0.9892 | 0.4521 | yes | no | 0.6459 | no | EN_C RF_C EN_D RF_D | 37.92 | 0.1018 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.133 | 0.8759 | 0.0002969 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.8822 |
| SPY | 1 | all-model common days | EN | A | 1 | 0.9999 | 0.3774 | no | 0.8826 |
| SPY | 1 | all-model common days | RF | A | 0.9205 | 0.8895 | 0.0001788 | yes | 0.8121 |
| SPY | 1 | all-model common days | EN | C | 1.183 | 1.015 | 0.01791 | no | 1.044 |
| SPY | 1 | all-model common days | RF | C | 0.847 | 0.7792 | 4.099e-07 | yes | 0.7473 |
| SPY | 1 | all-model common days | EN | D | 1.679 | 1.061 | 0.00112 | no | 1.481 |
| SPY | 1 | all-model common days | RF | D | 0.9384 | 2.04 | 0.3638 | yes | 0.8279 |
| SPY | 5 | all-model common days | PER | A | 1.336 | 1.222 | 1.431e-06 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7484 |
| SPY | 5 | all-model common days | EN | A | 0.9996 | 0.9995 | 0.5568 | yes | 0.7481 |
| SPY | 5 | all-model common days | RF | A | 1.03 | 1.367 | 0.2741 | yes | 0.7711 |
| SPY | 5 | all-model common days | EN | C | 1.717 | 1.124 | 0.001105 | yes | 1.285 |
| SPY | 5 | all-model common days | RF | C | 0.9884 | 1.049 | 0.8345 | yes | 0.7397 |
| SPY | 5 | all-model common days | EN | D | 2.145 | 1.27 | 0.0005602 | no | 1.605 |
| SPY | 5 | all-model common days | RF | D | 1.121 | 1.829 | 0.395 | yes | 0.8388 |
| SPY | 22 | all-model common days | PER | A | 1.532 | 1.577 | 0.06 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6529 |
| SPY | 22 | all-model common days | EN | A | 1.028 | 1.003 | 0.1611 | yes | 0.6713 |
| SPY | 22 | all-model common days | RF | A | 1.106 | 0.8782 | 0.1351 | yes | 0.7224 |
| SPY | 22 | all-model common days | EN | C | 0.9892 | 0.9162 | 0.9042 | yes | 0.6459 |
| SPY | 22 | all-model common days | RF | C | 1.069 | 0.8807 | 0.2136 | yes | 0.6977 |
| SPY | 22 | all-model common days | EN | D | 1.29 | 0.9055 | 0.06155 | yes | 0.8423 |
| SPY | 22 | all-model common days | RF | D | 1.244 | 1.048 | 0.1392 | yes | 0.812 |

