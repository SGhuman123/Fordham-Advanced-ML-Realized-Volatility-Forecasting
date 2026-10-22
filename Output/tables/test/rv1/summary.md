# Results: test period, scenario "rv1"

Generated 2026-10-21 23:42 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.1865 | 4.986 | 0.6517 | 0.6591 | 1.17 | 1.071 | -5.859 | 5.372e-09 | 1 | -0.5593 | 0.576 | yes | 0.378 | yes | 0.6302 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.1594 | 4.655 | 0.6307 | 0.6817 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 0.6302 | 0 | 0.8545 | 2.686e-09 |
| EN | A | 2197 | 0.1603 | 4.645 | 0.6311 | 0.6824 | 1.006 | 0.9979 | -1.356 | 0.1751 | 0.9125 | 0.9531 | 0.3406 | yes | 0.9458 | yes | 1 | 0 | 0.8596 | 3.435e-08 |
| RF | A | 2197 | 0.2199 | 11.99 | 0.8071 | 0.1801 | 1.38 | 2.576 | -1.701 | 0.0891 | 0.9554 | -1.249 | 0.2119 | yes | 0.378 | yes | 0.3714 | 0 | 1.179 | 0.8214 |
| EN | C | 2197 | 0.2991 | 7.441 | 0.696 | 0.4912 | 1.877 | 1.599 | -4.334 | 1.532e-05 | 1 | -1.055 | 0.2915 | no | 0.0468 | yes | 0.5796 | 2.003 | 1.604 | 0.9997 |
| RF | C | 2197 | 0.1698 | 9.335 | 0.7198 | 0.3617 | 1.065 | 2.006 | -0.874 | 0.3822 | 0.8089 | -1.034 | 0.301 | yes | 0.4096 | yes | 0.5906 | 0 | 0.9103 | 0.1016 |
| EN | D | 2197 | 0.3107 | 6.161 | 0.6611 | 0.5788 | 1.95 | 1.324 | -3.86 | 0.0001167 | 0.9999 | -0.9065 | 0.3648 | no | 0.09 | yes | 0.6302 | 2.64 | 1.666 | 0.9992 |
| RF | D | 2197 | 0.16 | 8.803 | 0.6974 | 0.3981 | 1.004 | 1.891 | -0.06581 | 0.9475 | 0.5262 | -0.9682 | 0.3331 | yes | 0.9504 | yes | 0.5906 | 0 | 0.858 | 0.008387 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2197 | 0.8545 | 5.859 | 5.372e-09 | 2.686e-09 | 0.9334 | 0.5593 | 0.576 | 0.288 | 1 | 0.4608 |
| EN_A vs PER_A | 2197 | 0.8596 | 5.413 | 6.87e-08 | 3.435e-08 | 0.9315 | 0.5733 | 0.5665 | 0.2832 | 0.3808 | 1 |
| RF_A vs PER_A | 2197 | 1.179 | -0.9208 | 0.3573 | 0.8214 | 2.405 | -1.155 | 0.2481 | 0.876 | 0.3808 | 0.4608 |
| EN_A vs HAR_A | 2197 | 1.006 | -1.356 | 0.1751 | 0.9125 | 0.9979 | 0.9531 | 0.3406 | 0.1703 | 0.3808 | 1 |
| RF_A vs HAR_A | 2197 | 1.38 | -1.701 | 0.0891 | 0.9554 | 2.576 | -1.249 | 0.2119 | 0.8941 | 0.3808 | 0.4608 |
| RF_A vs EN_A | 2197 | 1.372 | -1.673 | 0.09451 | 0.9527 | 2.582 | -1.25 | 0.2113 | 0.8944 | 0.3808 | 0.4608 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2197 | -0.1388 | -86.56 | 0.05015 | 22.81 | 0.1889 | 4.611 | 2.115e-06 | 4.23e-06 |
| A->C | MSE | 2197 | -2.796 | -60.2 | 2.657 | 22.15 | 5.453 | 1.358 | 0.08723 | 0.1745 |
| A->D | QLIKE | 2197 | -0.1504 | -93.81 | 0.05991 | 27.24 | 0.2103 | 4.467 | 4.162e-06 | 8.324e-06 |
| A->D | MSE | 2197 | -1.516 | -32.63 | 3.189 | 26.59 | 4.705 | 1.434 | 0.07589 | 0.1518 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1533 | 0.1574 | 1.194 | 1 | 1.012 | 1.025 | 2.273 | 1.031 | 2.407 | 0.978 |
| High RV (monthly RV > threshold) | 664 | 0.1639 | 1.117 | 1 | 0.9924 | 2.167 | 0.9985 | 1.14 | 0.936 | 1.062 |
| Normal days (target <= Q3 + 1.5 IQR) | 1999 | 0.1343 | 1.235 | 1 | 1.008 | 1.087 | 2.151 | 1.093 | 2.3 | 1.036 |
| Extreme days (target > Q3 + 1.5 IQR) | 198 | 0.412 | 0.9573 | 1 | 0.9998 | 2.345 | 0.9739 | 0.9748 | 0.7956 | 0.9005 |
| Feb 2018 Volmageddon | 43 | 0.3833 | 0.9704 | 1 | 1 | 1.024 | 0.6952 | 0.9124 | 0.6594 | 0.9303 |
| COVID 2020 | 70 | 0.1722 | 0.7734 | 1 | 1 | 10.3 | 1.894 | 3.237 | 1.295 | 2.718 |
| 2022 bear market | 209 | 0.1393 | 1.137 | 1 | 1 | 1.122 | 0.9362 | 0.7147 | 0.9338 | 0.7684 |
| Apr 2025 tariffs | 42 | 0.3139 | 0.9149 | 1 | 0.9365 | 1.553 | 0.7201 | 0.5553 | 0.6662 | 0.5133 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.589 | 4 |
| HAR | A | 3.674 | 4 |
| EN | A | 3.673 | 4 |
| RF | A | 3.505 | 4 |
| EN | C | 3.3 | 4 |
| RF | C | 3.661 | 4 |
| EN | D | 3.254 | 4 |
| RF | D | 3.678 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1565 | 1 |
| es_rsn_d | 0.1552 | 1 |
| rv_d | 0.1139 | 0.8889 |
| negret_w | -0.1123 | 1 |
| overnight_d | 0.1078 | 0.8889 |
| es_C_d | 0.1054 | 0.8889 |
| vix9d_spread | 0.1038 | 1 |
| es_rk_d | 0.101 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2165 |
| negret_w | 0.1421 |
| rv_d | 0.1342 |
| es_C_d | 0.09379 |
| es_rsn_d | 0.06111 |
| es_rk_d | 0.04827 |
| iv_term | 0.04473 |
| overnight_d | 0.03138 |

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
| PER | A | 2193 | 0.2505 | 6.79 | 0.7698 | 0.4419 | 1.306 | 1.218 | -4.12 | 3.925e-05 | 1 | -0.8197 | 0.4125 | yes | 0.6936 | yes | 0.6918 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.1918 | 5.573 | 0.7051 | 0.5419 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 0.6918 | 0 | 0.7659 | 1.962e-05 |
| EN | A | 2193 | 0.1934 | 5.56 | 0.7059 | 0.543 | 1.008 | 0.9977 | -2.293 | 0.02197 | 0.989 | 1.44 | 0.15 | yes | 0.6936 | yes | 1 | 0 | 0.772 | 3.747e-05 |
| RF | A | 2193 | 0.2588 | 10.39 | 0.803 | 0.1461 | 1.349 | 1.864 | -1.497 | 0.1346 | 0.9327 | -1.163 | 0.2452 | yes | 0.6936 | yes | 0.6068 | 0 | 1.033 | 0.5687 |
| EN | C | 2193 | 0.4906 | 7.255 | 0.7346 | 0.4036 | 2.557 | 1.302 | -3.825 | 0.0001343 | 0.9999 | -0.9089 | 0.3635 | no | 0.071 | yes | 0.6918 | 3.238 | 1.959 | 0.9989 |
| RF | C | 2193 | 0.2398 | 8.959 | 0.836 | 0.2636 | 1.25 | 1.608 | -2.537 | 0.01126 | 0.9944 | -1.087 | 0.277 | yes | 0.6936 | yes | 0.6382 | 0 | 0.9573 | 0.3317 |
| EN | D | 2193 | 0.4486 | 7.373 | 0.7487 | 0.3939 | 2.339 | 1.323 | -3.782 | 0.0001597 | 0.9999 | -0.9715 | 0.3314 | no | 0.0986 | yes | 0.6772 | 2.736 | 1.791 | 0.998 |
| RF | D | 2193 | 0.2701 | 10.49 | 0.8213 | 0.1379 | 1.408 | 1.882 | -1.464 | 0.1434 | 0.9283 | -1.153 | 0.249 | yes | 0.6936 | yes | 0.6382 | 0 | 1.078 | 0.6339 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2193 | 0.7659 | 4.12 | 3.925e-05 | 1.962e-05 | 0.8208 | 0.8197 | 0.4125 | 0.2062 | 1 | 0.5844 |
| EN_A vs PER_A | 2193 | 0.772 | 3.968 | 7.494e-05 | 3.747e-05 | 0.8189 | 0.8276 | 0.408 | 0.204 | 0.15 | 1 |
| RF_A vs PER_A | 2193 | 1.033 | -0.173 | 0.8627 | 0.5687 | 1.53 | -0.8582 | 0.3909 | 0.8046 | 0.15 | 0.5844 |
| EN_A vs HAR_A | 2193 | 1.008 | -2.293 | 0.02197 | 0.989 | 0.9977 | 1.44 | 0.15 | 0.07501 | 0.15 | 1 |
| RF_A vs HAR_A | 2193 | 1.349 | -1.497 | 0.1346 | 0.9327 | 1.864 | -1.163 | 0.2452 | 0.8774 | 0.15 | 0.5844 |
| RF_A vs EN_A | 2193 | 1.339 | -1.461 | 0.144 | 0.928 | 1.868 | -1.166 | 0.2438 | 0.8781 | 0.15 | 0.5844 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2193 | -0.2972 | -153.7 | 0.01906 | 7.365 | 0.3163 | 3.814 | 7.027e-05 | 0.0001405 |
| A->C | MSE | 2193 | -1.695 | -30.49 | 1.429 | 13.76 | 3.124 | 1.085 | 0.1391 | 0.2782 |
| A->D | QLIKE | 2193 | -0.2552 | -132 | -0.01128 | -4.359 | 0.244 | 3.61 | 0.0001566 | 0.0003132 |
| A->D | MSE | 2193 | -1.813 | -32.61 | -0.09944 | -0.9573 | 1.713 | 0.9871 | 0.1618 | 0.3237 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1529 | 0.1938 | 1.375 | 1 | 1.012 | 1.023 | 3.044 | 1.235 | 2.769 | 1.068 |
| High RV (monthly RV > threshold) | 664 | 0.1873 | 1.141 | 1 | 0.9972 | 2.127 | 1.399 | 1.285 | 1.313 | 2.218 |
| Normal days (target <= Q3 + 1.5 IQR) | 1996 | 0.1325 | 1.374 | 1 | 1.012 | 1.102 | 3.646 | 1.362 | 3.268 | 1.129 |
| Extreme days (target > Q3 + 1.5 IQR) | 197 | 0.7927 | 1.19 | 1 | 1.001 | 1.768 | 0.713 | 1.061 | 0.7633 | 1.88 |
| Feb 2018 Volmageddon | 43 | 0.9081 | 1.259 | 1 | 1 | 0.9388 | 0.7045 | 1.291 | 0.7046 | 1.106 |
| COVID 2020 | 70 | 0.607 | 1.086 | 1 | 1 | 4.055 | 1.049 | 1.68 | 1.05 | 4.76 |
| 2022 bear market | 209 | 0.1478 | 0.9815 | 1 | 1 | 0.9467 | 2.668 | 0.6169 | 1.67 | 0.6762 |
| Apr 2025 tariffs | 42 | 0.4546 | 1.496 | 1 | 0.9868 | 1.34 | 0.7421 | 1.221 | 0.8342 | 0.9226 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.424 | 4 |
| HAR | A | 3.59 | 4 |
| EN | A | 3.588 | 4 |
| RF | A | 3.393 | 4 |
| EN | C | 2.738 | 4 |
| RF | C | 3.507 | 4 |
| EN | D | 2.868 | 4 |
| RF | D | 3.376 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.1546 | 0.7778 |
| rv_d | 0.1136 | 1 |
| negret_w | -0.09904 | 1 |
| vix9d_spread | 0.09582 | 1 |
| iv_term | -0.0948 | 1 |
| overnight_d | 0.09202 | 0.7778 |
| iv_atm_1m | 0.08649 | 1 |
| es_C_d | 0.08433 | 0.7778 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1249 |
| log_vxn | 0.06078 |
| rv_d | 0.0589 |
| es_rk_d | 0.05131 |
| negret_w | 0.04927 |
| vix3m_spread | 0.0476 |
| iv_atm_1m | 0.04707 |
| log_vix | 0.03954 |

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
| PER | A | 2176 | 0.5843 | 10.85 | 1.078 | -0.4016 | 1.563 | 1.677 | -2.047 | 0.04076 | 0.9796 | -1.242 | 0.2145 | yes | 0.2354 | yes | 0.506 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.3739 | 6.472 | 0.8802 | 0.1641 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7276 | yes | 0.745 | 0 | 0.64 | 0.02038 |
| EN | A | 2176 | 0.3709 | 6.409 | 0.8311 | 0.1722 | 0.9919 | 0.9903 | 0.2341 | 0.8149 | 0.4075 | 0.131 | 0.8958 | yes | 1 | yes | 1 | 0 | 0.6348 | 0.0228 |
| RF | A | 2176 | 0.4484 | 7.407 | 0.8768 | 0.04333 | 1.199 | 1.144 | -1.602 | 0.1093 | 0.9453 | -1.021 | 0.3075 | yes | 0.4834 | yes | 0.506 | 0 | 0.7675 | 0.02793 |
| EN | C | 2176 | 0.4795 | 6.863 | 0.8676 | 0.1136 | 1.282 | 1.06 | -2.025 | 0.04304 | 0.9785 | -0.5165 | 0.6055 | yes | 0.3722 | yes | 0.745 | 0.04596 | 0.8207 | 0.1458 |
| RF | C | 2176 | 0.4375 | 7.225 | 0.9295 | 0.06687 | 1.17 | 1.116 | -1.322 | 0.1865 | 0.9068 | -0.7477 | 0.4547 | yes | 0.4834 | yes | 0.696 | 0 | 0.7488 | 0.0667 |
| EN | D | 2176 | 0.4668 | 6.924 | 0.8779 | 0.1057 | 1.248 | 1.07 | -2.157 | 0.03115 | 0.9844 | -0.7346 | 0.4627 | yes | 0.4834 | yes | 0.745 | 0.1379 | 0.799 | 0.1229 |
| RF | D | 2176 | 0.4429 | 7.139 | 0.9036 | 0.07791 | 1.184 | 1.103 | -1.537 | 0.1245 | 0.9378 | -0.6951 | 0.487 | yes | 0.4834 | yes | 0.745 | 0 | 0.7581 | 0.04441 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2176 | 0.64 | 2.047 | 0.04076 | 0.02038 | 0.5964 | 1.242 | 0.2145 | 0.1073 | 0.7276 | 0.7404 |
| EN_A vs PER_A | 2176 | 0.6348 | 2 | 0.0456 | 0.0228 | 0.5906 | 1.169 | 0.2427 | 0.1214 | 1 | 1 |
| RF_A vs PER_A | 2176 | 0.7675 | 1.913 | 0.05586 | 0.02793 | 0.6825 | 1.004 | 0.3156 | 0.1578 | 0.1128 | 0.382 |
| EN_A vs HAR_A | 2176 | 0.9919 | 0.2341 | 0.8149 | 0.4075 | 0.9903 | 0.131 | 0.8958 | 0.4479 | 1 | 1 |
| RF_A vs HAR_A | 2176 | 1.199 | -1.602 | 0.1093 | 0.9453 | 1.144 | -1.021 | 0.3075 | 0.8463 | 0.1128 | 0.382 |
| RF_A vs EN_A | 2176 | 1.209 | -1.705 | 0.08837 | 0.9558 | 1.156 | -1.415 | 0.1574 | 0.9213 | 0.1128 | 0.382 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2176 | -0.1086 | -29.29 | 0.01094 | 2.44 | 0.1196 | 1.673 | 0.04722 | 0.09444 |
| A->C | MSE | 2176 | -0.4537 | -7.079 | 0.1822 | 2.46 | 0.6359 | 1.432 | 0.07616 | 0.1523 |
| A->D | QLIKE | 2176 | -0.09596 | -25.87 | 0.005529 | 1.233 | 0.1015 | 1.967 | 0.02466 | 0.04933 |
| A->D | MSE | 2176 | -0.5151 | -8.036 | 0.2677 | 3.615 | 0.7828 | 1.401 | 0.08067 | 0.1613 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1512 | 0.414 | 1.645 | 1 | 0.9513 | 1.101 | 1.204 | 1.052 | 1.194 | 1.092 |
| High RV (monthly RV > threshold) | 664 | 0.2827 | 1.286 | 1 | 1.127 | 1.526 | 1.544 | 1.562 | 1.431 | 1.493 |
| Normal days (target <= Q3 + 1.5 IQR) | 2052 | 0.1898 | 1.762 | 1 | 0.9984 | 1.216 | 1.613 | 1.161 | 1.571 | 1.216 |
| Extreme days (target > Q3 + 1.5 IQR) | 124 | 3.421 | 1.379 | 1 | 0.9858 | 1.184 | 0.9786 | 1.178 | 0.9528 | 1.155 |
| Feb 2018 Volmageddon | 43 | 0.3441 | 2.972 | 1 | 1 | 1.396 | 0.9277 | 0.8784 | 0.8919 | 1.057 |
| COVID 2020 | 70 | 2.245 | 1.625 | 1 | 1.173 | 1.436 | 1.33 | 1.673 | 1.203 | 1.538 |
| 2022 bear market | 209 | 0.2179 | 1.235 | 1 | 0.9949 | 1.004 | 1.957 | 0.7714 | 1.902 | 0.7764 |
| Apr 2025 tariffs | 42 | 0.2121 | 3.218 | 1 | 1 | 1.997 | 0.8389 | 1.08 | 0.9959 | 1.051 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.452 | 4 |
| HAR | A | 3.081 | 4 |
| EN | A | 3.095 | 4 |
| RF | A | 2.85 | 4 |
| EN | C | 2.777 | 4 |
| RF | C | 2.941 | 4 |
| EN | D | 2.821 | 4 |
| RF | D | 2.908 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 89.65 | 1.758 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 31.82 | 0.556 | 23.91 | 0.3398 | 0.7431 | -0.1346 | 0.8488 |
| HAR_A | 2176 | 55.34 | 1.151 | 40.45 | 0.6621 | 0.6935 | 0.02754 | 0.8084 |
| EN_A | 2176 | 76.68 | 1.706 | 61.7 | 1.111 | 0.7017 | 0.09706 | 0.8065 |
| RF_A | 2176 | 63.05 | 1.23 | 42.31 | 0.6446 | 0.7316 | 0.08551 | 0.8759 |
| EN_C | 2176 | 80.46 | 1.807 | 65.87 | 1.201 | 0.7367 | 0.09561 | 0.8791 |
| RF_C | 2176 | 46.65 | 0.9167 | 24.35 | 0.3725 | 0.6471 | 0.09147 | 0.8006 |
| EN_D | 2176 | 73.25 | 1.631 | 59.03 | 1.066 | 0.7201 | 0.08406 | 0.8617 |
| RF_D | 2176 | 49.44 | 0.9739 | 29.87 | 0.4582 | 0.6549 | 0.09356 | 0.7918 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1716 | 1 |
| es_J_w | 0.1362 | 0.8889 |
| es_rsp_d | 0.117 | 0.8889 |
| iv_skew_1m | 0.107 | 1 |
| vix9d_spread | 0.06838 | 1 |
| iv_term | -0.05494 | 0.8889 |
| negret_w | -0.04904 | 1 |
| vrp | 0.04833 | 0.7778 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1089 |
| vix3m_spread | 0.04724 |
| iv_atm_1m | 0.04261 |
| parkinson_w | 0.03822 |
| iv_skew_1m | 0.03803 |
| log_vxn | 0.03652 |
| es_rsn_d | 0.03456 |
| es_rk_d | 0.03401 |

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
| ES | 1 | RF_D | 1.004 | 0.5262 | yes | no | 0.858 | yes | RF_A EN_C RF_C EN_D | NaN | NaN |
| ES | 5 | EN_A | 1.008 | 0.989 | yes | no | 0.772 | yes | RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | EN_A | 0.9919 | 0.4075 | yes | no | 0.6348 | yes | EN_C RF_C EN_D | 61.7 | 0.09706 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 1.17 | 1.071 | 5.372e-09 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.8545 |
| ES | 1 | all-model common days | EN | A | 1.006 | 0.9979 | 0.1751 | yes | 0.8596 |
| ES | 1 | all-model common days | RF | A | 1.38 | 2.576 | 0.0891 | yes | 1.179 |
| ES | 1 | all-model common days | EN | C | 1.877 | 1.599 | 1.532e-05 | no | 1.604 |
| ES | 1 | all-model common days | RF | C | 1.065 | 2.006 | 0.3822 | yes | 0.9103 |
| ES | 1 | all-model common days | EN | D | 1.95 | 1.324 | 0.0001167 | no | 1.666 |
| ES | 1 | all-model common days | RF | D | 1.004 | 1.891 | 0.9475 | yes | 0.858 |
| ES | 5 | all-model common days | PER | A | 1.306 | 1.218 | 3.925e-05 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7659 |
| ES | 5 | all-model common days | EN | A | 1.008 | 0.9977 | 0.02197 | yes | 0.772 |
| ES | 5 | all-model common days | RF | A | 1.349 | 1.864 | 0.1346 | yes | 1.033 |
| ES | 5 | all-model common days | EN | C | 2.557 | 1.302 | 0.0001343 | no | 1.959 |
| ES | 5 | all-model common days | RF | C | 1.25 | 1.608 | 0.01126 | yes | 0.9573 |
| ES | 5 | all-model common days | EN | D | 2.339 | 1.323 | 0.0001597 | no | 1.791 |
| ES | 5 | all-model common days | RF | D | 1.408 | 1.882 | 0.1434 | yes | 1.078 |
| ES | 22 | all-model common days | PER | A | 1.563 | 1.677 | 0.04076 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.64 |
| ES | 22 | all-model common days | EN | A | 0.9919 | 0.9903 | 0.8149 | yes | 0.6348 |
| ES | 22 | all-model common days | RF | A | 1.199 | 1.144 | 0.1093 | yes | 0.7675 |
| ES | 22 | all-model common days | EN | C | 1.282 | 1.06 | 0.04304 | yes | 0.8207 |
| ES | 22 | all-model common days | RF | C | 1.17 | 1.116 | 0.1865 | yes | 0.7488 |
| ES | 22 | all-model common days | EN | D | 1.248 | 1.07 | 0.03115 | yes | 0.799 |
| ES | 22 | all-model common days | RF | D | 1.184 | 1.103 | 0.1245 | yes | 0.7581 |

