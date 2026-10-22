# Results: test period, scenario "rk"

Generated 2026-10-21 23:43 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.2133 | 5.686 | 0.6801 | 0.5913 | 1.166 | 1.119 | -5.082 | 4.04e-07 | 1 | -0.858 | 0.391 | no | 0.0654 | yes | 0.6994 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.1829 | 5.08 | 0.6586 | 0.6349 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7494 | yes | 0.6994 | 0 | 0.8573 | 2.02e-07 |
| EN | A | 2197 | 0.1822 | 5.066 | 0.6577 | 0.6359 | 0.9962 | 0.9973 | 1.376 | 0.1691 | 0.08453 | 0.9351 | 0.3499 | yes | 0.8182 | yes | 1 | 0 | 0.854 | 1.575e-07 |
| RF | A | 2197 | 0.2019 | 9.871 | 0.7699 | 0.2905 | 1.104 | 1.943 | -1.498 | 0.1342 | 0.9329 | -1.215 | 0.2245 | yes | 0.4994 | yes | 0.3578 | 0 | 0.9466 | 0.2041 |
| EN | C | 2197 | 0.3709 | 7.478 | 0.7005 | 0.4625 | 2.028 | 1.472 | -4.228 | 2.455e-05 | 1 | -1.047 | 0.2951 | no | 0.0394 | yes | 0.5822 | 2.685 | 1.739 | 0.9998 |
| RF | C | 2197 | 0.1781 | 6.583 | 0.69 | 0.5269 | 0.9739 | 1.296 | 0.6016 | 0.5475 | 0.2737 | -0.6653 | 0.5059 | yes | 0.8286 | yes | 0.6994 | 0 | 0.8349 | 0.0002061 |
| EN | D | 2197 | 0.205 | 6.136 | 0.6562 | 0.5589 | 1.121 | 1.208 | -1.628 | 0.1036 | 0.9482 | -0.8072 | 0.4196 | yes | 0.4994 | yes | 0.6742 | 0.6827 | 0.9609 | 0.29 |
| RF | D | 2197 | 0.1764 | 8.342 | 0.6964 | 0.4004 | 0.9643 | 1.642 | 0.6793 | 0.497 | 0.2485 | -0.9659 | 0.3342 | yes | 1 | yes | 0.5822 | 0 | 0.8267 | 0.0006513 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2197 | 0.8573 | 5.082 | 4.04e-07 | 2.02e-07 | 0.8933 | 0.858 | 0.391 | 0.1955 | 0.2482 | 0.4784 |
| EN_A vs PER_A | 2197 | 0.854 | 5.13 | 3.149e-07 | 1.575e-07 | 0.8909 | 0.8733 | 0.3826 | 0.1913 | 1 | 1 |
| RF_A vs PER_A | 2197 | 0.9466 | 0.8272 | 0.4082 | 0.2041 | 1.736 | -1.017 | 0.3091 | 0.8455 | 0.1474 | 0.4784 |
| EN_A vs HAR_A | 2197 | 0.9962 | 1.376 | 0.1691 | 0.08453 | 0.9973 | 0.9351 | 0.3499 | 0.1749 | 1 | 1 |
| RF_A vs HAR_A | 2197 | 1.104 | -1.498 | 0.1342 | 0.9329 | 1.943 | -1.215 | 0.2245 | 0.8877 | 0.1474 | 0.4784 |
| RF_A vs EN_A | 2197 | 1.108 | -1.546 | 0.1222 | 0.9389 | 1.948 | -1.218 | 0.2232 | 0.8884 | 0.1474 | 0.4784 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2197 | -0.1888 | -103.6 | 0.02383 | 11.8 | 0.2126 | 4.761 | 1.026e-06 | 2.053e-06 |
| A->C | MSE | 2197 | -2.412 | -47.6 | 3.288 | 33.31 | 5.7 | 1.393 | 0.08193 | 0.1639 |
| A->D | QLIKE | 2197 | -0.02279 | -12.51 | 0.02558 | 12.67 | 0.04837 | 3.575 | 0.0001788 | 0.0003577 |
| A->D | MSE | 2197 | -1.07 | -21.12 | 1.529 | 15.49 | 2.599 | 1.383 | 0.08338 | 0.1668 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1478 | 0.173 | 1.197 | 1 | 1.001 | 0.9949 | 2.62 | 1.023 | 1.272 | 0.9836 |
| High RV (monthly RV > threshold) | 719 | 0.2033 | 1.112 | 1 | 0.9881 | 1.295 | 0.9921 | 0.8881 | 0.8563 | 0.9305 |
| Normal days (target <= Q3 + 1.5 IQR) | 1998 | 0.1498 | 1.224 | 1 | 0.9959 | 1.052 | 2.392 | 1.085 | 1.248 | 1.019 |
| Extreme days (target > Q3 + 1.5 IQR) | 199 | 0.515 | 0.9987 | 1 | 0.9968 | 1.257 | 0.9662 | 0.6497 | 0.7495 | 0.8042 |
| Feb 2018 Volmageddon | 43 | 0.425 | 0.9609 | 1 | 1 | 0.9243 | 0.5589 | 0.9498 | 0.597 | 0.9102 |
| COVID 2020 | 70 | 0.1909 | 0.7589 | 1 | 1 | 3.438 | 2.094 | 1.372 | 1.416 | 2.265 |
| 2022 bear market | 209 | 0.1291 | 1.167 | 1 | 1 | 1.177 | 0.9314 | 0.7274 | 0.9282 | 0.7721 |
| Apr 2025 tariffs | 42 | 0.3918 | 0.8986 | 1 | 0.9213 | 1.31 | 0.676 | 0.4679 | 0.6317 | 0.5585 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.523 | 4 |
| HAR | A | 3.624 | 4 |
| EN | A | 3.626 | 4 |
| RF | A | 3.569 | 4 |
| EN | C | 3.101 | 4 |
| RF | C | 3.652 | 4 |
| EN | D | 3.564 | 4 |
| RF | D | 3.645 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1317 | 1 |
| es_rsn_d | 0.1084 | 1 |
| es_C_d | 0.1063 | 1 |
| es_rk_d | 0.1013 | 1 |
| rv_d | 0.1012 | 1 |
| negret_w | -0.1005 | 1 |
| vix9d_spread | 0.09627 | 1 |
| overnight_d | 0.09389 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.1542 |
| negret_w | 0.1339 |
| es_C_d | 0.1016 |
| es_rsn_d | 0.0949 |
| iv_term | 0.05262 |
| rv_d | 0.05091 |
| es_rk_d | 0.04642 |
| overnight_d | 0.03624 |

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
| PER | A | 2193 | 0.271 | 6.176 | 0.7678 | 0.4538 | 1.309 | 1.145 | -4.342 | 1.479e-05 | 1 | -0.6133 | 0.5397 | yes | 0.2952 | yes | 0.7014 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.207 | 5.396 | 0.7107 | 0.5228 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7468 | yes | 0.7014 | 0 | 0.7638 | 7.395e-06 |
| EN | A | 2193 | 0.2067 | 5.379 | 0.7091 | 0.5242 | 0.9986 | 0.9969 | 0.6055 | 0.5449 | 0.2725 | 0.9245 | 0.3553 | yes | 1 | yes | 1 | 0 | 0.7627 | 8.212e-06 |
| RF | A | 2193 | 0.2501 | 9.328 | 0.8028 | 0.175 | 1.208 | 1.729 | -1.551 | 0.1212 | 0.9394 | -1.194 | 0.2326 | yes | 0.7012 | yes | 0.4326 | 0 | 0.9229 | 0.2609 |
| EN | C | 2193 | 0.5078 | 7.025 | 0.7277 | 0.3787 | 2.454 | 1.302 | -3.694 | 0.0002265 | 0.9999 | -0.9044 | 0.3659 | no | 0.0734 | yes | 0.7014 | 3.146 | 1.874 | 0.9981 |
| RF | C | 2193 | 0.2386 | 8.174 | 0.7985 | 0.2771 | 1.153 | 1.515 | -1.825 | 0.06818 | 0.9659 | -1.036 | 0.3004 | yes | 0.7468 | yes | 0.608 | 0 | 0.8807 | 0.08864 |
| EN | D | 2193 | 0.2433 | 7.076 | 0.7316 | 0.3741 | 1.176 | 1.311 | -1.591 | 0.1118 | 0.9441 | -0.9645 | 0.3349 | yes | 0.7468 | yes | 0.657 | 0.228 | 0.8979 | 0.1621 |
| RF | D | 2193 | 0.2627 | 9.621 | 0.803 | 0.1491 | 1.269 | 1.783 | -1.213 | 0.2253 | 0.8873 | -1.158 | 0.2469 | yes | 0.7468 | yes | 0.5586 | 0 | 0.9694 | 0.4349 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2193 | 0.7638 | 4.342 | 1.479e-05 | 7.395e-06 | 0.8737 | 0.6133 | 0.5397 | 0.2699 | 0.6424 | 0.5466 |
| EN_A vs PER_A | 2193 | 0.7627 | 4.318 | 1.642e-05 | 8.212e-06 | 0.871 | 0.6225 | 0.5337 | 0.2668 | 1 | 1 |
| RF_A vs PER_A | 2193 | 0.9229 | 0.6407 | 0.5218 | 0.2609 | 1.51 | -0.8752 | 0.3815 | 0.8092 | 0.1194 | 0.5466 |
| EN_A vs HAR_A | 2193 | 0.9986 | 0.6055 | 0.5449 | 0.2725 | 0.9969 | 0.9245 | 0.3553 | 0.1777 | 1 | 1 |
| RF_A vs HAR_A | 2193 | 1.208 | -1.551 | 0.1212 | 0.9394 | 1.729 | -1.194 | 0.2326 | 0.8837 | 0.1194 | 0.5466 |
| RF_A vs EN_A | 2193 | 1.21 | -1.561 | 0.1188 | 0.9406 | 1.734 | -1.201 | 0.2297 | 0.8851 | 0.1194 | 0.5466 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2193 | -0.3011 | -145.7 | 0.01142 | 4.568 | 0.3126 | 3.773 | 8.277e-05 | 0.0001655 |
| A->C | MSE | 2193 | -1.645 | -30.59 | 1.155 | 12.38 | 2.8 | 1.161 | 0.1228 | 0.2457 |
| A->D | QLIKE | 2193 | -0.03663 | -17.72 | -0.01262 | -5.047 | 0.02401 | 0.8856 | 0.188 | 0.3759 |
| A->D | MSE | 2193 | -1.697 | -31.55 | -0.2925 | -3.136 | 1.404 | 1.007 | 0.1571 | 0.3142 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1474 | 0.2063 | 1.389 | 1 | 1.003 | 1.023 | 3.028 | 1.156 | 1.238 | 0.9763 |
| High RV (monthly RV > threshold) | 719 | 0.2083 | 1.148 | 1 | 0.9899 | 1.584 | 1.287 | 1.147 | 1.048 | 1.864 |
| Normal days (target <= Q3 + 1.5 IQR) | 1992 | 0.143 | 1.406 | 1 | 0.9989 | 1.103 | 3.468 | 1.236 | 1.405 | 1.045 |
| Extreme days (target > Q3 + 1.5 IQR) | 201 | 0.8405 | 1.146 | 1 | 0.9981 | 1.385 | 0.7437 | 1.014 | 0.7879 | 1.648 |
| Feb 2018 Volmageddon | 43 | 0.9882 | 1.289 | 1 | 1 | 0.9178 | 0.6336 | 1.296 | 0.7015 | 1.13 |
| COVID 2020 | 70 | 0.6385 | 1.002 | 1 | 1.001 | 2.632 | 1.134 | 1.591 | 1.128 | 3.918 |
| 2022 bear market | 209 | 0.1343 | 1.029 | 1 | 1 | 1.095 | 2.764 | 0.7046 | 1.379 | 0.7343 |
| Apr 2025 tariffs | 42 | 0.5319 | 1.346 | 1 | 0.9697 | 1.323 | 0.7501 | 1.003 | 0.7715 | 1.131 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.378 | 4 |
| HAR | A | 3.556 | 4 |
| EN | A | 3.558 | 4 |
| RF | A | 3.433 | 4 |
| EN | C | 2.685 | 4 |
| RF | C | 3.499 | 4 |
| EN | D | 3.454 | 4 |
| RF | D | 3.395 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.1156 | 0.7778 |
| negret_w | -0.09165 | 1 |
| es_rsn_d | 0.0894 | 1 |
| iv_term | -0.08678 | 1 |
| vix9d_spread | 0.08582 | 1 |
| overnight_d | 0.07753 | 0.7778 |
| iv_atm_1m | 0.07695 | 1 |
| es_C_d | 0.07523 | 0.7778 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1949 |
| log_vix | 0.05629 |
| iv_atm_1m | 0.05617 |
| log_vxn | 0.05492 |
| negret_w | 0.05405 |
| es_C_d | 0.0537 |
| es_rsn_d | 0.04878 |
| rv_d | 0.04175 |

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
| PER | A | 2176 | 0.5927 | 10.04 | 1.057 | -0.3806 | 1.575 | 1.662 | -2.038 | 0.04171 | 0.9791 | -1.242 | 0.2145 | yes | 0.3758 | yes | 0.473 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.3763 | 6.041 | 0.8526 | 0.1694 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.9818 | yes | 0.9052 | 0 | 0.635 | 0.02086 |
| EN | A | 2176 | 0.3762 | 6.033 | 0.8133 | 0.1705 | 0.9996 | 0.9987 | 0.0114 | 0.9909 | 0.4955 | 0.01774 | 0.9859 | yes | 1 | yes | 1 | 0 | 0.6347 | 0.02331 |
| RF | A | 2176 | 0.4559 | 6.886 | 0.8616 | 0.05328 | 1.211 | 1.14 | -1.641 | 0.1009 | 0.9495 | -0.9956 | 0.3196 | yes | 0.3758 | yes | 0.473 | 0 | 0.7692 | 0.03262 |
| EN | C | 2176 | 0.4996 | 6.548 | 0.8595 | 0.09967 | 1.328 | 1.084 | -2.118 | 0.03427 | 0.9829 | -0.6402 | 0.5221 | yes | 0.3758 | yes | 0.7608 | 0.09191 | 0.843 | 0.1828 |
| RF | C | 2176 | 0.5402 | 8.8 | 1.264 | -0.21 | 1.435 | 1.457 | -2.54 | 0.01117 | 0.9944 | -2.235 | 0.02554 | yes | 0.3758 | yes | 0.1748 | 0 | 0.9114 | 0.3195 |
| EN | D | 2176 | 0.4598 | 6.473 | 0.8602 | 0.1101 | 1.222 | 1.071 | -2.093 | 0.03651 | 0.9817 | -0.7827 | 0.4339 | yes | 0.3758 | yes | 0.7608 | 0.09191 | 0.7759 | 0.09377 |
| RF | D | 2176 | 0.4204 | 6.644 | 0.864 | 0.08656 | 1.117 | 1.1 | -1.019 | 0.3081 | 0.8459 | -0.6693 | 0.5034 | yes | 0.3758 | yes | 0.7608 | 0 | 0.7093 | 0.04106 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2176 | 0.635 | 2.038 | 0.04171 | 0.02086 | 0.6016 | 1.242 | 0.2145 | 0.1072 | 0.9818 | 0.9052 |
| EN_A vs PER_A | 2176 | 0.6347 | 1.991 | 0.04662 | 0.02331 | 0.6008 | 1.166 | 0.2436 | 0.1218 | 1 | 1 |
| RF_A vs PER_A | 2176 | 0.7692 | 1.844 | 0.06525 | 0.03262 | 0.6857 | 1.02 | 0.3078 | 0.1539 | 0.0946 | 0.3738 |
| EN_A vs HAR_A | 2176 | 0.9996 | 0.0114 | 0.9909 | 0.4955 | 0.9987 | 0.01774 | 0.9859 | 0.4929 | 1 | 1 |
| RF_A vs HAR_A | 2176 | 1.211 | -1.641 | 0.1009 | 0.9495 | 1.14 | -0.9956 | 0.3196 | 0.8402 | 0.0946 | 0.3738 |
| RF_A vs EN_A | 2176 | 1.212 | -1.742 | 0.08168 | 0.9592 | 1.141 | -1.348 | 0.1778 | 0.9111 | 0.0946 | 0.3738 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2176 | -0.1234 | -32.82 | -0.08429 | -18.49 | 0.03916 | 0.4451 | 0.3281 | 0.6563 |
| A->C | MSE | 2176 | -0.515 | -8.535 | -1.915 | -27.81 | -1.4 | -1.418 | 0.9218 | 0.1564 |
| A->D | QLIKE | 2176 | -0.08364 | -22.23 | 0.0355 | 7.788 | 0.1191 | 1.904 | 0.02852 | 0.05703 |
| A->D | MSE | 2176 | -0.4394 | -7.284 | 0.2421 | 3.516 | 0.6815 | 1.534 | 0.06263 | 0.1253 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1457 | 0.4257 | 1.68 | 1 | 0.954 | 1.122 | 1.197 | 1.391 | 1.177 | 1.014 |
| High RV (monthly RV > threshold) | 719 | 0.2762 | 1.246 | 1 | 1.142 | 1.489 | 1.737 | 1.575 | 1.362 | 1.439 |
| Normal days (target <= Q3 + 1.5 IQR) | 2052 | 0.1922 | 1.852 | 1 | 0.9998 | 1.264 | 1.647 | 1.694 | 1.504 | 1.049 |
| Extreme days (target > Q3 + 1.5 IQR) | 124 | 3.423 | 1.317 | 1 | 0.9994 | 1.163 | 1.03 | 1.195 | 0.9598 | 1.18 |
| Feb 2018 Volmageddon | 43 | 0.3579 | 3.046 | 1 | 1 | 1.368 | 0.8806 | 0.8795 | 0.8474 | 0.7975 |
| COVID 2020 | 70 | 2.28 | 1.557 | 1 | 1.188 | 1.479 | 1.5 | 1.639 | 1.213 | 1.545 |
| 2022 bear market | 209 | 0.2227 | 1.204 | 1 | 1.025 | 0.9781 | 1.666 | 0.7816 | 1.642 | 0.7884 |
| Apr 2025 tariffs | 42 | 0.2274 | 3.016 | 1 | 1.001 | 1.758 | 0.7873 | 0.9918 | 0.9317 | 0.9503 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.427 | 4 |
| HAR | A | 3.073 | 4 |
| EN | A | 3.078 | 4 |
| RF | A | 2.833 | 4 |
| EN | C | 2.712 | 4 |
| RF | C | 2.803 | 4 |
| EN | D | 2.841 | 4 |
| RF | D | 2.96 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 93.91 | 1.925 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 37.28 | 0.6959 | 24.4 | 0.3519 | 0.7449 | -0.1337 | 0.8543 |
| HAR_A | 2176 | 58.89 | 1.174 | 38.83 | 0.5786 | 0.7155 | 0.02923 | 0.8396 |
| EN_A | 2176 | 77.23 | 1.583 | 54.9 | 0.8406 | 0.7243 | 0.09508 | 0.8392 |
| RF_A | 2176 | 66.92 | 1.37 | 43.14 | 0.6609 | 0.7302 | 0.08766 | 0.8782 |
| EN_C | 2176 | 78.59 | 1.623 | 54.8 | 0.8447 | 0.7454 | 0.09368 | 0.8989 |
| RF_C | 2176 | 47.56 | 0.9803 | 21.38 | 0.3295 | 0.636 | 0.05832 | 0.795 |
| EN_D | 2176 | 73.16 | 1.497 | 50.78 | 0.7776 | 0.7403 | 0.0852 | 0.8929 |
| RF_D | 2176 | 64.72 | 1.335 | 41.57 | 0.6377 | 0.6967 | 0.09832 | 0.8465 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1486 | 1 |
| es_J_w | 0.1324 | 1 |
| es_rsp_d | 0.1104 | 0.7778 |
| iv_skew_1m | 0.1054 | 1 |
| vix9d_spread | 0.06153 | 1 |
| iv_term | -0.05402 | 0.8889 |
| vrp | 0.04581 | 0.7778 |
| negret_w | -0.04556 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1146 |
| negret_w | 0.04562 |
| vix3m_spread | 0.04241 |
| iv_skew_1m | 0.0393 |
| iv_atm_1m | 0.03353 |
| parkinson_w | 0.03248 |
| log_vxn | 0.03194 |
| es_rsn_d | 0.03087 |

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
| ES | 1 | RF_D | 0.9643 | 0.2485 | yes | no | 0.8267 | yes | RF_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_A | 0.9986 | 0.2725 | yes | no | 0.7627 | yes | RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | EN_A | 0.9996 | 0.4955 | yes | no | 0.6347 | yes | EN_C RF_C EN_D | 54.9 | 0.09508 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 1.166 | 1.119 | 4.04e-07 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.8573 |
| ES | 1 | all-model common days | EN | A | 0.9962 | 0.9973 | 0.1691 | yes | 0.854 |
| ES | 1 | all-model common days | RF | A | 1.104 | 1.943 | 0.1342 | yes | 0.9466 |
| ES | 1 | all-model common days | EN | C | 2.028 | 1.472 | 2.455e-05 | no | 1.739 |
| ES | 1 | all-model common days | RF | C | 0.9739 | 1.296 | 0.5475 | yes | 0.8349 |
| ES | 1 | all-model common days | EN | D | 1.121 | 1.208 | 0.1036 | yes | 0.9609 |
| ES | 1 | all-model common days | RF | D | 0.9643 | 1.642 | 0.497 | yes | 0.8267 |
| ES | 5 | all-model common days | PER | A | 1.309 | 1.145 | 1.479e-05 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7638 |
| ES | 5 | all-model common days | EN | A | 0.9986 | 0.9969 | 0.5449 | yes | 0.7627 |
| ES | 5 | all-model common days | RF | A | 1.208 | 1.729 | 0.1212 | yes | 0.9229 |
| ES | 5 | all-model common days | EN | C | 2.454 | 1.302 | 0.0002265 | no | 1.874 |
| ES | 5 | all-model common days | RF | C | 1.153 | 1.515 | 0.06818 | yes | 0.8807 |
| ES | 5 | all-model common days | EN | D | 1.176 | 1.311 | 0.1118 | yes | 0.8979 |
| ES | 5 | all-model common days | RF | D | 1.269 | 1.783 | 0.2253 | yes | 0.9694 |
| ES | 22 | all-model common days | PER | A | 1.575 | 1.662 | 0.04171 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.635 |
| ES | 22 | all-model common days | EN | A | 0.9996 | 0.9987 | 0.9909 | yes | 0.6347 |
| ES | 22 | all-model common days | RF | A | 1.211 | 1.14 | 0.1009 | yes | 0.7692 |
| ES | 22 | all-model common days | EN | C | 1.328 | 1.084 | 0.03427 | yes | 0.843 |
| ES | 22 | all-model common days | RF | C | 1.435 | 1.457 | 0.01117 | yes | 0.9114 |
| ES | 22 | all-model common days | EN | D | 1.222 | 1.071 | 0.03651 | yes | 0.7759 |
| ES | 22 | all-model common days | RF | D | 1.117 | 1.1 | 0.3081 | yes | 0.7093 |

