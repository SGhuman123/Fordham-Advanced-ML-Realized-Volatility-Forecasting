# Results: test period, scenario "main"

Generated 2026-10-21 23:42 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2118)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2118 | 0.3079 | 2.867 | 0.4628 | 0.4065 | 1.308 | 1.258 | -6.324 | 3.109e-10 | 1 | -1.487 | 0.1371 | no | 0.0602 | yes | 0.4172 | 0 | 1 | NaN |
| HAR | A | 2118 | 0.2354 | 2.278 | 0.4408 | 0.5284 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.1818 | yes | 0.749 | 0 | 0.7646 | 1.554e-10 |
| EN | A | 2118 | 0.2356 | 2.278 | 0.4409 | 0.5284 | 1.001 | 1 | -1.639 | 0.1014 | 0.9493 | 1.02 | 0.3077 | yes | 0.1818 | yes | 0.749 | 0 | 0.765 | 1.73e-10 |
| RF | A | 2118 | 0.2311 | 2.506 | 0.46 | 0.4813 | 0.9818 | 1.1 | 0.8239 | 0.4101 | 0.205 | -0.5643 | 0.5726 | yes | 0.1818 | yes | 0.1912 | 0 | 0.7506 | 2.142e-17 |
| EN | B | 2118 | 0.317 | 2.171 | 0.432 | 0.5507 | 1.346 | 0.9527 | -2.175 | 0.02971 | 0.9851 | 0.4444 | 0.6568 | yes | 0.1228 | yes | 0.749 | 1.086 | 1.029 | 0.5912 |
| RF | B | 2118 | 0.2017 | 1.943 | 0.4127 | 0.5978 | 0.8567 | 0.8528 | 4.575 | 5.036e-06 | 2.518e-06 | 0.8506 | 0.3951 | yes | 0.4884 | yes | 0.749 | 0 | 0.655 | 2.951e-18 |
| EN | C | 2118 | 0.3135 | 2.204 | 0.4291 | 0.5437 | 1.332 | 0.9675 | -2.082 | 0.03744 | 0.9813 | 0.3109 | 0.7559 | yes | 0.1818 | yes | 0.749 | 1.086 | 1.018 | 0.5564 |
| RF | C | 2118 | 0.1991 | 1.572 | 0.4048 | 0.6746 | 0.8455 | 0.69 | 4.877 | 1.157e-06 | 5.784e-07 | 1.738 | 0.08238 | yes | 1 | yes | 1 | 0 | 0.6464 | 9.206e-20 |
| EN | D | 2118 | 0.4965 | 2.398 | 0.4159 | 0.5037 | 2.109 | 1.052 | -3.447 | 0.0005783 | 0.9997 | -0.3353 | 0.7375 | no | 0.0602 | yes | 0.4172 | 2.88 | 1.612 | 0.9935 |
| RF | D | 2118 | 0.217 | 3.143 | 0.4437 | 0.3494 | 0.9215 | 1.38 | 1.29 | 0.1972 | 0.09858 | -0.7527 | 0.4517 | yes | 0.4484 | yes | 0.749 | 0 | 0.7046 | 8.292e-08 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2120 | 0.7649 | 6.317 | 3.236e-10 | 1.618e-10 | 0.7947 | 1.487 | 0.1371 | 0.06854 | 0.3416 | 0.4744 |
| EN_A vs PER_A | 2120 | 0.7653 | 6.301 | 3.598e-10 | 1.799e-10 | 0.7946 | 1.487 | 0.137 | 0.06852 | 0.3208 | 1 |
| RF_A vs PER_A | 2120 | 0.7509 | 8.471 | 4.491e-17 | 2.245e-17 | 0.8741 | 0.6106 | 0.5415 | 0.2707 | 1 | 0.4744 |
| EN_A vs HAR_A | 2120 | 1.001 | -1.625 | 0.1043 | 0.9478 | 1 | 1.026 | 0.3049 | 0.1524 | 0.3208 | 1 |
| RF_A vs HAR_A | 2120 | 0.9817 | 0.8287 | 0.4074 | 0.2037 | 1.1 | -0.5643 | 0.5726 | 0.7137 | 1 | 0.4744 |
| RF_A vs EN_A | 2120 | 0.9812 | 0.8514 | 0.3947 | 0.1973 | 1.1 | -0.5645 | 0.5725 | 0.7138 | 1 | 0.4744 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2120 | -0.08132 | -34.51 | 0.02951 | 12.76 | 0.1108 | 3.043 | 0.001186 | 0.002372 |
| A->B | MSE | 2120 | 0.1075 | 4.725 | 0.5625 | 22.47 | 0.455 | 1.167 | 0.1217 | 0.2435 |
| A->C | QLIKE | 2120 | -0.0778 | -33.02 | 0.03216 | 13.91 | 0.11 | 2.976 | 0.001476 | 0.002952 |
| A->C | MSE | 2120 | 0.07397 | 3.25 | 0.9331 | 37.27 | 0.8591 | 1.115 | 0.1324 | 0.2648 |
| A->D | QLIKE | 2118 | -0.2609 | -110.8 | 0.01418 | 6.135 | 0.2751 | 3.634 | 0.000143 | 0.000286 |
| A->D | MSE | 2118 | -0.1195 | -5.244 | -0.637 | -25.42 | -0.5176 | -1.1 | 0.8644 | 0.2713 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1608 | 0.2388 | 1.356 | 1 | 1 | 0.975 | 1.498 | 0.8869 | 1.475 | 0.8685 | 2.46 | 0.8812 |
| High RV (monthly RV > threshold) | 510 | 0.2247 | 1.147 | 1 | 1.001 | 1.005 | 0.8372 | 0.7555 | 0.8502 | 0.7683 | 0.9305 | 1.057 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2035 | 1.388 | 1 | 1.001 | 1.004 | 1.565 | 0.944 | 1.544 | 0.9364 | 2.458 | 0.9183 |
| Extreme days (target > Q3 + 1.5 IQR) | 183 | 0.5736 | 1.01 | 1 | 0.9995 | 0.8974 | 0.5264 | 0.5295 | 0.5369 | 0.5047 | 0.798 | 0.9337 |
| Feb 2018 Volmageddon | 17 | 0.1429 | 1.456 | 1 | 1 | 1.643 | 0.7115 | 1.251 | 0.7109 | 1.168 | 1.016 | 1.468 |
| COVID 2020 | 70 | 0.329 | 0.9173 | 1 | 1 | 0.8225 | 0.7365 | 0.7973 | 0.7466 | 0.7208 | 0.9953 | 2.251 |
| 2022 bear market | 203 | 0.1593 | 1.295 | 1 | 1 | 1.017 | 0.6642 | 0.677 | 0.6642 | 0.6624 | 0.9898 | 0.7817 |
| Apr 2025 tariffs | 42 | 0.4742 | 0.7318 | 1 | 1 | 1.053 | 0.616 | 0.4265 | 0.6543 | 0.4198 | 0.6267 | 0.4103 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.307 | 4 |
| HAR | A | 3.54 | 4 |
| EN | A | 3.54 | 4 |
| RF | A | 3.529 | 4 |
| EN | B | 3.326 | 4 |
| RF | B | 3.615 | 4 |
| EN | C | 3.329 | 4 |
| RF | C | 3.621 | 4 |
| EN | D | 2.729 | 4 |
| RF | D | 3.567 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.07697 | 1 |
| negret_w | -0.06715 | 1 |
| vix9d_spread | 0.06057 | 1 |
| es_rsn_d | 0.05618 | 1 |
| vrp | 0.05577 | 1 |
| es_C_d | 0.05169 | 1 |
| es_rk_d | 0.05089 | 1 |
| overnight_d | 0.04466 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2711 |
| negret_w | 0.1027 |
| es_C_d | 0.09179 |
| es_rsn_d | 0.08764 |
| es_rk_d | 0.0566 |
| vix3m_spread | 0.05538 |
| rv_d | 0.04345 |
| iv_term | 0.03446 |

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
| PER | A | 2135 | 0.2937 | 2.226 | 0.4699 | 0.3714 | 1.366 | 1.204 | -4.993 | 6.427e-07 | 1 | -1.036 | 0.3004 | no | 0.0638 | yes | 0.7386 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.215 | 1.848 | 0.4443 | 0.4781 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.4936 | yes | 0.8312 | 0 | 0.732 | 3.214e-07 |
| EN | A | 2135 | 0.2149 | 1.847 | 0.4435 | 0.4784 | 0.9994 | 0.9994 | 0.7614 | 0.4465 | 0.2232 | 1.582 | 0.1137 | yes | 0.4936 | yes | 0.8312 | 0 | 0.7316 | 3.125e-07 |
| RF | A | 2135 | 0.226 | 2.14 | 0.4742 | 0.3957 | 1.051 | 1.158 | -1.461 | 0.1443 | 0.9279 | -0.7517 | 0.4523 | yes | 0.3512 | yes | 0.3596 | 0 | 0.7694 | 2.119e-06 |
| EN | B | 2135 | 0.2062 | 1.971 | 0.4557 | 0.4435 | 0.9592 | 1.066 | 0.6771 | 0.4984 | 0.2492 | -0.2959 | 0.7673 | yes | 0.4936 | yes | 0.8312 | 0 | 0.7021 | 0.000222 |
| RF | B | 2135 | 0.1898 | 1.693 | 0.4323 | 0.5219 | 0.8826 | 0.9162 | 2.543 | 0.01106 | 0.005529 | 0.6865 | 0.4925 | yes | 1 | yes | 1 | 0 | 0.6461 | 2.261e-07 |
| EN | C | 2135 | 0.4243 | 1.919 | 0.4589 | 0.4582 | 1.973 | 1.038 | -3.171 | 0.00154 | 0.9992 | -0.2158 | 0.8292 | yes | 0.1006 | yes | 0.8312 | 1.311 | 1.445 | 0.9758 |
| RF | C | 2135 | 0.2 | 2.035 | 0.4586 | 0.4253 | 0.9304 | 1.101 | 1.47 | 0.1418 | 0.07089 | -0.443 | 0.6578 | yes | 0.4936 | yes | 0.7386 | 0 | 0.6811 | 2.295e-06 |
| EN | D | 2135 | 0.6188 | 1.975 | 0.4252 | 0.4424 | 2.878 | 1.068 | -3.736 | 0.0001916 | 0.9999 | -0.3226 | 0.747 | no | 0.0638 | yes | 0.7916 | 2.904 | 2.107 | 0.9987 |
| RF | D | 2135 | 0.2469 | 2.877 | 0.4817 | 0.1874 | 1.149 | 1.557 | -1.021 | 0.3075 | 0.8462 | -0.9842 | 0.3251 | yes | 0.4936 | yes | 0.7386 | 0 | 0.8408 | 0.1038 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2135 | 0.732 | 4.993 | 6.427e-07 | 3.214e-07 | 0.8303 | 1.036 | 0.3004 | 0.1502 | 0.348 | 0.4588 |
| EN_A vs PER_A | 2135 | 0.7316 | 4.998 | 6.25e-07 | 3.125e-07 | 0.8298 | 1.039 | 0.2991 | 0.1495 | 1 | 1 |
| RF_A vs PER_A | 2135 | 0.7694 | 4.611 | 4.237e-06 | 2.119e-06 | 0.9614 | 0.1545 | 0.8772 | 0.4386 | 0.0822 | 0.4588 |
| EN_A vs HAR_A | 2135 | 0.9994 | 0.7614 | 0.4465 | 0.2232 | 0.9994 | 1.582 | 0.1137 | 0.05686 | 1 | 1 |
| RF_A vs HAR_A | 2135 | 1.051 | -1.461 | 0.1443 | 0.9279 | 1.158 | -0.7517 | 0.4523 | 0.7738 | 0.0822 | 0.4588 |
| RF_A vs EN_A | 2135 | 1.052 | -1.476 | 0.1401 | 0.9299 | 1.158 | -0.7544 | 0.4507 | 0.7747 | 0.0822 | 0.4588 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2135 | 0.008654 | 4.028 | 0.03622 | 16.03 | 0.02757 | 2.716 | 0.00333 | 0.006661 |
| A->B | MSE | 2135 | -0.1235 | -6.687 | 0.4466 | 20.87 | 0.5701 | 0.9187 | 0.1792 | 0.3583 |
| A->C | QLIKE | 2135 | -0.2094 | -97.46 | 0.02595 | 11.48 | 0.2354 | 3.586 | 0.0001715 | 0.0003429 |
| A->C | MSE | 2135 | -0.07148 | -3.87 | 0.1047 | 4.894 | 0.1762 | 0.6296 | 0.2645 | 0.529 |
| A->D | QLIKE | 2135 | -0.4039 | -188 | -0.02096 | -9.274 | 0.383 | 3.484 | 0.000252 | 0.000504 |
| A->D | MSE | 2135 | -0.1276 | -6.91 | -0.7377 | -34.48 | -0.6101 | -1.507 | 0.934 | 0.1319 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1619 | 0.2056 | 1.437 | 1 | 0.9989 | 1.039 | 0.9999 | 0.8999 | 2.362 | 0.9264 | 3.461 | 0.9944 |
| High RV (monthly RV > threshold) | 516 | 0.2446 | 1.178 | 1 | 1.001 | 1.082 | 0.8516 | 0.8369 | 0.9497 | 0.9408 | 1.341 | 1.555 |
| Normal days (target <= Q3 + 1.5 IQR) | 1950 | 0.1575 | 1.461 | 1 | 0.9975 | 1.108 | 1.139 | 0.9737 | 2.568 | 1.033 | 3.883 | 1.069 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.8215 | 1.174 | 1 | 1.003 | 0.9361 | 0.5963 | 0.6986 | 0.7732 | 0.7231 | 0.8481 | 1.31 |
| Feb 2018 Volmageddon | 15 | 0.1518 | 1.6 | 1 | 1 | 1.149 | 0.4573 | 1.174 | 0.5131 | 1.19 | 0.9589 | 0.9512 |
| COVID 2020 | 70 | 0.6643 | 1.039 | 1 | 1 | 0.9749 | 0.8624 | 0.6984 | 1.01 | 0.878 | 1.04 | 2.636 |
| 2022 bear market | 206 | 0.1373 | 1.221 | 1 | 0.995 | 1.052 | 0.5612 | 0.8869 | 0.5534 | 0.7798 | 1.76 | 0.7985 |
| Apr 2025 tariffs | 42 | 1.029 | 1.104 | 1 | 1 | 1.073 | 0.6438 | 0.7073 | 0.661 | 0.773 | 0.5789 | 0.6929 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.323 | 4 |
| HAR | A | 3.549 | 4 |
| EN | A | 3.549 | 4 |
| RF | A | 3.513 | 4 |
| EN | B | 3.603 | 4 |
| RF | B | 3.61 | 4 |
| EN | C | 2.953 | 4 |
| RF | C | 3.591 | 4 |
| EN | D | 2.338 | 4 |
| RF | D | 3.467 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.07849 | 1 |
| vrp | 0.05653 | 1 |
| negret_w | -0.05609 | 1 |
| vix9d_spread | 0.04951 | 1 |
| vix3m_spread | -0.0471 | 1 |
| es_C_d | 0.04349 | 1 |
| es_rsn_d | 0.0431 | 1 |
| overnight_d | 0.04302 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1281 |
| log_vxn | 0.06511 |
| negret_w | 0.0641 |
| rv_d | 0.06114 |
| es_rsn_d | 0.05686 |
| vix3m_spread | 0.04905 |
| rv_w | 0.04419 |
| iv_atm_1m | 0.04223 |

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
| PER | A | 2109 | 0.5021 | 3.151 | 0.6183 | -0.4123 | 1.508 | 1.55 | -1.78 | 0.07526 | 0.9624 | -1.315 | 0.1886 | yes | 0.315 | yes | 0.4516 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3329 | 2.032 | 0.5384 | 0.08907 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.902 | yes | 0.7706 | 0 | 0.6631 | 0.03763 |
| EN | A | 2109 | 0.3406 | 2.036 | 0.545 | 0.08749 | 1.023 | 1.002 | -1.286 | 0.1985 | 0.9008 | -0.5703 | 0.5685 | yes | 0.5522 | yes | 0.7266 | 0 | 0.6785 | 0.04581 |
| RF | A | 2109 | 0.3614 | 1.668 | 0.5164 | 0.2522 | 1.085 | 0.8209 | -1.729 | 0.08394 | 0.958 | 1.034 | 0.3013 | yes | 0.492 | yes | 1 | 0 | 0.7197 | 0.04804 |
| EN | B | 2109 | 0.3233 | 1.75 | 0.5071 | 0.2158 | 0.971 | 0.8609 | 0.4291 | 0.6679 | 0.3339 | 1.005 | 0.3151 | yes | 1 | yes | 0.8858 | 0 | 0.6439 | 0.05429 |
| RF | B | 2109 | 0.3514 | 1.744 | 0.5306 | 0.2181 | 1.055 | 0.8583 | -1.077 | 0.2815 | 0.8592 | 1.036 | 0.3005 | yes | 0.492 | yes | 0.8858 | 0 | 0.6999 | 0.04834 |
| EN | C | 2109 | 0.3285 | 1.861 | 0.5261 | 0.1657 | 0.9867 | 0.9159 | 0.2011 | 0.8406 | 0.4203 | 0.7088 | 0.4785 | yes | 0.902 | yes | 0.7836 | 0 | 0.6543 | 0.06161 |
| RF | C | 2109 | 0.3473 | 1.832 | 0.5304 | 0.179 | 1.043 | 0.9013 | -1.006 | 0.3143 | 0.8428 | 0.8295 | 0.4069 | yes | 0.492 | yes | 0.7836 | 0 | 0.6917 | 0.05713 |
| EN | D | 2109 | 0.4297 | 1.804 | 0.4778 | 0.1916 | 1.291 | 0.8875 | -1.838 | 0.06619 | 0.9669 | 0.8013 | 0.4231 | yes | 0.3718 | yes | 0.869 | 0.04742 | 0.8558 | 0.1805 |
| RF | D | 2109 | 0.4229 | 2.105 | 0.52 | 0.05644 | 1.27 | 1.036 | -1.534 | 0.1251 | 0.9374 | -0.1991 | 0.8422 | yes | 0.4788 | yes | 0.7836 | 0 | 0.8423 | 0.1044 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2109 | 0.6631 | 1.78 | 0.07526 | 0.03763 | 0.645 | 1.315 | 0.1886 | 0.09432 | 1 | 0.3748 |
| EN_A vs PER_A | 2109 | 0.6785 | 1.688 | 0.09161 | 0.04581 | 0.6461 | 1.311 | 0.1901 | 0.09505 | 0.2286 | 0.3616 |
| RF_A vs PER_A | 2109 | 0.7197 | 1.665 | 0.09609 | 0.04804 | 0.5295 | 1.284 | 0.1994 | 0.09971 | 0.2046 | 1 |
| EN_A vs HAR_A | 2109 | 1.023 | -1.286 | 0.1985 | 0.9008 | 1.002 | -0.5703 | 0.5685 | 0.7157 | 0.2286 | 0.3616 |
| RF_A vs HAR_A | 2109 | 1.085 | -1.729 | 0.08394 | 0.958 | 0.8209 | 1.034 | 0.3013 | 0.1507 | 0.2046 | 1 |
| RF_A vs EN_A | 2109 | 1.061 | -1.12 | 0.263 | 0.8685 | 0.8195 | 1.044 | 0.2967 | 0.1483 | 0.2046 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2109 | 0.01736 | 5.096 | 0.009935 | 2.749 | -0.007424 | -0.3462 | 0.6354 | 0.7292 |
| A->B | MSE | 2109 | 0.2862 | 14.06 | -0.07593 | -4.551 | -0.3621 | -1.038 | 0.8503 | 0.2993 |
| A->C | QLIKE | 2109 | 0.01213 | 3.561 | 0.01408 | 3.897 | 0.001949 | 0.1108 | 0.4559 | 0.9118 |
| A->C | MSE | 2109 | 0.1745 | 8.572 | -0.1633 | -9.788 | -0.3378 | -0.9703 | 0.834 | 0.332 |
| A->D | QLIKE | 2109 | -0.08906 | -26.14 | -0.06157 | -17.04 | 0.02749 | 0.428 | 0.3343 | 0.6687 |
| A->D | MSE | 2109 | 0.2322 | 11.41 | -0.4367 | -26.18 | -0.669 | -1.076 | 0.8589 | 0.2823 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1593 | 0.3501 | 1.543 | 1 | 1.025 | 1.111 | 0.981 | 1.062 | 0.9745 | 1.015 | 1.347 | 1.142 |
| High RV (monthly RV > threshold) | 516 | 0.2799 | 1.372 | 1 | 1.015 | 0.9868 | 0.9326 | 1.029 | 1.034 | 1.153 | 1.073 | 1.767 |
| Normal days (target <= Q3 + 1.5 IQR) | 1966 | 0.1733 | 1.441 | 1 | 1.043 | 1.139 | 1.113 | 1.102 | 1.107 | 1.084 | 1.348 | 1.106 |
| Extreme days (target > Q3 + 1.5 IQR) | 143 | 2.528 | 1.571 | 1 | 1.005 | 1.034 | 0.8368 | 1.011 | 0.8732 | 1.004 | 1.236 | 1.426 |
| Feb 2018 Volmageddon | 14 | 0.08687 | 0.8673 | 1 | 1 | 1.548 | 1.699 | 3.091 | 2.063 | 3.282 | 1.866 | 2.333 |
| COVID 2020 | 70 | 1.563 | 2.027 | 1 | 1 | 0.8466 | 0.8065 | 0.8285 | 0.9804 | 0.9182 | 1.194 | 2.04 |
| 2022 bear market | 206 | 0.1656 | 1.48 | 1 | 0.95 | 1.091 | 0.7208 | 0.946 | 0.7628 | 1.018 | 1.526 | 1.224 |
| Apr 2025 tariffs | 42 | 0.5158 | 1.618 | 1 | 1 | 1.219 | 0.7533 | 0.7258 | 0.6632 | 0.9409 | 0.5147 | 0.5772 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.701 | 4 |
| HAR | A | 3.209 | 4 |
| EN | A | 3.2 | 4 |
| RF | A | 3.118 | 4 |
| EN | B | 3.254 | 4 |
| RF | B | 3.16 | 4 |
| EN | C | 3.244 | 4 |
| RF | C | 3.18 | 4 |
| EN | D | 2.89 | 4 |
| RF | D | 2.953 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 89.01 | 1.842 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 47.51 | 0.9904 | 37.52 | 0.5713 | 0.7321 | -0.1066 | 0.8241 |
| HAR_A | 2109 | 54.46 | 1.543 | 52.42 | 1.198 | 0.6652 | 0.09609 | 0.7506 |
| EN_A | 2109 | 51.49 | 1.473 | 46.1 | 1.057 | 0.6368 | 0.09932 | 0.7155 |
| RF_A | 2109 | 89.77 | 2.719 | 85.23 | 2.265 | 0.7013 | 0.2808 | 0.7961 |
| EN_B | 2109 | 73.91 | 1.596 | 45.9 | 0.6927 | 0.6942 | 0.1333 | 0.7937 |
| RF_B | 2109 | 72.03 | 2.112 | 61.37 | 1.606 | 0.7065 | 0.161 | 0.8393 |
| EN_C | 2109 | 54.9 | 1.251 | 33.12 | 0.5058 | 0.6709 | 0.1041 | 0.779 |
| RF_C | 2109 | 51.37 | 1.067 | 27.76 | 0.4115 | 0.6956 | 0.1151 | 0.8454 |
| EN_D | 2109 | 73.8 | 1.529 | 52.74 | 0.7803 | 0.7283 | 0.118 | 0.8677 |
| RF_D | 2109 | 51.63 | 1.084 | 30.41 | 0.4542 | 0.6719 | 0.08943 | 0.8141 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.06277 | 1 |
| iv_skew_1m | 0.04777 | 1 |
| es_J_w | 0.04251 | 1 |
| vix9d_spread | 0.036 | 1 |
| negret_w | -0.03059 | 1 |
| iv_term | -0.03014 | 0.8889 |
| rv_d | 0.02695 | 1 |
| vrp | 0.02686 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.08532 |
| log_vxn | 0.05181 |
| es_C_d | 0.03571 |
| es_rsn_d | 0.03518 |
| negret_m | 0.03354 |
| parkinson_w | 0.03309 |
| es_rk_d | 0.03189 |
| negret_w | 0.03153 |

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
| PER | A | 2197 | 0.2339 | 6.124 | 0.7095 | 0.5804 | 1.211 | 1.124 | -6.009 | 2.181e-09 | 1 | -0.8842 | 0.3767 | yes | 0.1364 | yes | 0.6994 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.1931 | 5.45 | 0.6783 | 0.6266 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.834 | yes | 0.6994 | 0 | 0.8257 | 1.091e-09 |
| EN | A | 2197 | 0.1933 | 5.435 | 0.678 | 0.6276 | 1.001 | 0.9973 | -0.2756 | 0.7829 | 0.6086 | 1.032 | 0.3023 | yes | 0.834 | yes | 1 | 0 | 0.8266 | 3.708e-09 |
| RF | A | 2197 | 0.2188 | 10.97 | 0.8219 | 0.2485 | 1.133 | 2.013 | -1.537 | 0.1244 | 0.9378 | -1.259 | 0.2082 | yes | 0.2368 | yes | 0.234 | 0 | 0.9356 | 0.2007 |
| EN | B | 2197 | 0.3007 | 7.915 | 0.7307 | 0.4576 | 1.557 | 1.452 | -3.527 | 0.0004283 | 0.9998 | -1.051 | 0.2935 | no | 0.0772 | yes | 0.5776 | 1.821 | 1.286 | 0.9829 |
| RF | B | 2197 | 0.203 | 10.25 | 0.7532 | 0.2977 | 1.051 | 1.881 | -0.5075 | 0.6119 | 0.6941 | -1.059 | 0.2898 | yes | 0.7118 | yes | 0.5776 | 0 | 0.8681 | 0.07297 |
| EN | C | 2197 | 0.2876 | 7.927 | 0.7313 | 0.4568 | 1.489 | 1.455 | -3.283 | 0.001045 | 0.9995 | -1.056 | 0.2912 | yes | 0.1364 | yes | 0.5704 | 1.639 | 1.23 | 0.9638 |
| RF | C | 2197 | 0.1942 | 9.208 | 0.7408 | 0.369 | 1.006 | 1.69 | -0.08994 | 0.9283 | 0.5358 | -0.9588 | 0.3377 | yes | 0.834 | yes | 0.611 | 0 | 0.8304 | 0.00313 |
| EN | D | 2197 | 0.2067 | 6.611 | 0.6848 | 0.547 | 1.071 | 1.213 | -1.198 | 0.2309 | 0.8846 | -0.8568 | 0.3917 | yes | 0.6554 | yes | 0.6994 | 0.6827 | 0.884 | 0.02113 |
| RF | D | 2197 | 0.187 | 9.129 | 0.7238 | 0.3744 | 0.9684 | 1.675 | 0.524 | 0.6003 | 0.3002 | -0.9485 | 0.343 | yes | 1 | yes | 0.611 | 0 | 0.7996 | 0.0002993 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2197 | 0.8257 | 6.009 | 2.181e-09 | 1.091e-09 | 0.8899 | 0.8842 | 0.3767 | 0.1883 | 1 | 0.4262 |
| EN_A vs PER_A | 2197 | 0.8266 | 5.804 | 7.417e-09 | 3.708e-09 | 0.8874 | 0.8997 | 0.3684 | 0.1842 | 0.8056 | 1 |
| RF_A vs PER_A | 2197 | 0.9356 | 0.8393 | 0.4014 | 0.2007 | 1.791 | -1.053 | 0.2925 | 0.8537 | 0.1722 | 0.4262 |
| EN_A vs HAR_A | 2197 | 1.001 | -0.2756 | 0.7829 | 0.6086 | 0.9973 | 1.032 | 0.3023 | 0.1512 | 0.8056 | 1 |
| RF_A vs HAR_A | 2197 | 1.133 | -1.537 | 0.1244 | 0.9378 | 2.013 | -1.259 | 0.2082 | 0.8959 | 0.1722 | 0.4262 |
| RF_A vs EN_A | 2197 | 1.132 | -1.517 | 0.1294 | 0.9353 | 2.018 | -1.262 | 0.2069 | 0.8965 | 0.1722 | 0.4262 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2197 | -0.1074 | -55.56 | 0.01579 | 7.216 | 0.1232 | 4.268 | 1.026e-05 | 2.052e-05 |
| A->B | MSE | 2197 | -2.481 | -45.64 | 0.719 | 6.556 | 3.2 | 1.434 | 0.07579 | 0.1516 |
| A->C | QLIKE | 2197 | -0.09426 | -48.76 | 0.0246 | 11.24 | 0.1189 | 4.155 | 1.686e-05 | 3.372e-05 |
| A->C | MSE | 2197 | -2.492 | -45.86 | 1.76 | 16.04 | 4.252 | 1.487 | 0.06861 | 0.1372 |
| A->D | QLIKE | 2197 | -0.01341 | -6.937 | 0.03181 | 14.54 | 0.04522 | 3.484 | 0.000252 | 0.0005039 |
| A->D | MSE | 2197 | -1.176 | -21.65 | 1.838 | 16.76 | 3.015 | 1.585 | 0.0566 | 0.1132 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1459 | 0.1946 | 1.237 | 1 | 1.008 | 1.011 | 1.837 | 0.96 | 1.741 | 0.9749 | 1.163 | 0.9396 |
| High RV (monthly RV > threshold) | 738 | 0.1901 | 1.159 | 1 | 0.9873 | 1.381 | 0.991 | 1.236 | 0.9803 | 1.068 | 0.8844 | 1.027 |
| Normal days (target <= Q3 + 1.5 IQR) | 2007 | 0.161 | 1.296 | 1 | 1.002 | 1.064 | 1.789 | 1.014 | 1.695 | 1.041 | 1.159 | 0.9863 |
| Extreme days (target > Q3 + 1.5 IQR) | 190 | 0.5323 | 0.9405 | 1 | 0.9996 | 1.355 | 0.8166 | 1.171 | 0.8335 | 0.8926 | 0.7868 | 0.9113 |
| Feb 2018 Volmageddon | 43 | 0.3864 | 0.9705 | 1 | 1 | 0.9619 | 0.5832 | 0.9616 | 0.6443 | 0.9902 | 0.7005 | 1.008 |
| COVID 2020 | 70 | 0.222 | 0.7914 | 1 | 1 | 4.047 | 1.997 | 4.536 | 1.997 | 2.75 | 1.412 | 2.629 |
| 2022 bear market | 209 | 0.1659 | 1.179 | 1 | 1 | 1.056 | 1.383 | 0.6842 | 1.383 | 0.697 | 0.8403 | 0.7324 |
| Apr 2025 tariffs | 42 | 0.4398 | 0.9456 | 1 | 0.9213 | 1.307 | 0.7227 | 0.5621 | 0.7227 | 0.5711 | 0.6577 | 0.5323 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.478 | 4 |
| HAR | A | 3.605 | 4 |
| EN | A | 3.607 | 4 |
| RF | A | 3.532 | 4 |
| EN | B | 3.317 | 4 |
| RF | B | 3.579 | 4 |
| EN | C | 3.355 | 4 |
| RF | C | 3.609 | 4 |
| EN | D | 3.566 | 4 |
| RF | D | 3.619 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1206 | 1 |
| es_rsn_d | 0.1131 | 1 |
| vix9d_spread | 0.109 | 1 |
| es_C_d | 0.1055 | 1 |
| negret_w | -0.1046 | 1 |
| es_rk_d | 0.1012 | 1 |
| rv_d | 0.09851 | 1 |
| overnight_d | 0.09311 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2749 |
| negret_w | 0.1227 |
| es_C_d | 0.07921 |
| es_rsn_d | 0.07631 |
| rv_d | 0.07248 |
| es_rk_d | 0.06151 |
| iv_term | 0.04846 |
| overnight_d | 0.03521 |

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
| PER | A | 2193 | 0.2813 | 6.394 | 0.7824 | 0.4566 | 1.304 | 1.128 | -4.267 | 2.064e-05 | 1 | -0.5137 | 0.6075 | yes | 0.5316 | yes | 0.7002 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.2157 | 5.668 | 0.7286 | 0.5183 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.839 | yes | 0.7284 | 0 | 0.7667 | 1.032e-05 |
| EN | A | 2193 | 0.2159 | 5.659 | 0.7266 | 0.5192 | 1.001 | 0.9983 | -0.3107 | 0.7561 | 0.622 | 0.2772 | 0.7816 | yes | 0.839 | yes | 1 | 0 | 0.7675 | 1.4e-05 |
| RF | A | 2193 | 0.2899 | 10.49 | 0.8532 | 0.1087 | 1.344 | 1.85 | -1.616 | 0.1062 | 0.9469 | -1.291 | 0.1969 | yes | 0.5316 | yes | 0.3642 | 0 | 1.031 | 0.5679 |
| EN | B | 2193 | 0.4447 | 7.351 | 0.7476 | 0.3754 | 2.061 | 1.297 | -3.3 | 0.0009811 | 0.9995 | -0.917 | 0.3593 | yes | 0.1138 | yes | 0.7002 | 2.599 | 1.581 | 0.9897 |
| RF | B | 2193 | 0.285 | 10.15 | 0.8354 | 0.1377 | 1.321 | 1.79 | -1.36 | 0.1741 | 0.913 | -1.18 | 0.2383 | yes | 0.5316 | yes | 0.5924 | 0 | 1.013 | 0.5264 |
| EN | C | 2193 | 0.5108 | 7.48 | 0.7549 | 0.3644 | 2.368 | 1.32 | -3.743 | 0.0001862 | 0.9999 | -0.9379 | 0.3484 | no | 0.074 | yes | 0.6622 | 3.283 | 1.816 | 0.998 |
| RF | C | 2193 | 0.3089 | 10.29 | 0.8478 | 0.1256 | 1.432 | 1.815 | -1.636 | 0.1021 | 0.949 | -1.196 | 0.2317 | yes | 0.5316 | yes | 0.5924 | 0 | 1.098 | 0.6733 |
| EN | D | 2193 | 0.2123 | 7.341 | 0.7351 | 0.3762 | 0.9842 | 1.295 | 0.2203 | 0.8256 | 0.4128 | -0.9428 | 0.3459 | yes | 1 | yes | 0.651 | 0.0912 | 0.7547 | 0.002203 |
| RF | D | 2193 | 0.2279 | 8.221 | 0.8252 | 0.3014 | 1.057 | 1.45 | -0.8216 | 0.4114 | 0.7943 | -1.065 | 0.2872 | yes | 0.5316 | yes | 0.5924 | 0 | 0.8101 | 0.009192 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2193 | 0.7667 | 4.267 | 2.064e-05 | 1.032e-05 | 0.8865 | 0.5137 | 0.6075 | 0.3037 | 1 | 0.7284 |
| EN_A vs PER_A | 2193 | 0.7675 | 4.198 | 2.8e-05 | 1.4e-05 | 0.8849 | 0.513 | 0.608 | 0.304 | 0.7974 | 1 |
| RF_A vs PER_A | 2193 | 1.031 | -0.171 | 0.8643 | 0.5679 | 1.64 | -0.9807 | 0.3269 | 0.8366 | 0.1142 | 0.4258 |
| EN_A vs HAR_A | 2193 | 1.001 | -0.3107 | 0.7561 | 0.622 | 0.9983 | 0.2772 | 0.7816 | 0.3908 | 0.7974 | 1 |
| RF_A vs HAR_A | 2193 | 1.344 | -1.616 | 0.1062 | 0.9469 | 1.85 | -1.291 | 0.1969 | 0.9015 | 0.1142 | 0.4258 |
| RF_A vs EN_A | 2193 | 1.343 | -1.612 | 0.1072 | 0.9464 | 1.854 | -1.302 | 0.1931 | 0.9034 | 0.1142 | 0.4258 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2193 | -0.2287 | -105.9 | 0.004904 | 1.692 | 0.2337 | 3.414 | 0.0003263 | 0.0006527 |
| A->B | MSE | 2193 | -1.692 | -29.91 | 0.3408 | 3.249 | 2.033 | 1.159 | 0.1234 | 0.2467 |
| A->C | QLIKE | 2193 | -0.2949 | -136.6 | -0.01897 | -6.545 | 0.2759 | 3.612 | 0.0001552 | 0.0003103 |
| A->C | MSE | 2193 | -1.821 | -32.19 | 0.1984 | 1.891 | 2.02 | 1.129 | 0.1295 | 0.2591 |
| A->D | QLIKE | 2193 | 0.003623 | 1.678 | 0.06201 | 21.39 | 0.05839 | 1.292 | 0.09817 | 0.1963 |
| A->D | MSE | 2193 | -1.682 | -29.73 | 2.267 | 21.61 | 3.949 | 1.273 | 0.1015 | 0.2031 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1455 | 0.222 | 1.393 | 1 | 1.007 | 1.038 | 2.436 | 1.019 | 2.842 | 1.112 | 1.014 | 1.005 |
| High RV (monthly RV > threshold) | 738 | 0.2033 | 1.112 | 1 | 0.989 | 2.003 | 1.256 | 1.972 | 1.347 | 2.122 | 0.9198 | 1.168 |
| Normal days (target <= Q3 + 1.5 IQR) | 1994 | 0.1471 | 1.425 | 1 | 1.002 | 1.135 | 2.888 | 1.097 | 3.367 | 1.178 | 1.123 | 1.168 |
| Extreme days (target > Q3 + 1.5 IQR) | 199 | 0.9028 | 1.107 | 1 | 0.9992 | 1.686 | 0.7119 | 1.687 | 0.7358 | 1.847 | 0.757 | 0.8753 |
| Feb 2018 Volmageddon | 43 | 1.018 | 1.307 | 1 | 1 | 1.053 | 0.5747 | 1.205 | 0.6382 | 1.195 | 0.6809 | 1.125 |
| COVID 2020 | 70 | 0.7078 | 0.9768 | 1 | 1.004 | 3.712 | 1.118 | 4.005 | 1.126 | 4.476 | 1.083 | 1.195 |
| 2022 bear market | 209 | 0.1553 | 1.004 | 1 | 1 | 0.955 | 2.389 | 0.6083 | 2.327 | 0.6513 | 0.6877 | 0.7179 |
| Apr 2025 tariffs | 42 | 0.6073 | 1.221 | 1 | 0.9634 | 1.304 | 0.7125 | 1.115 | 0.7125 | 1.143 | 0.7563 | 1.063 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.346 | 4 |
| HAR | A | 3.533 | 4 |
| EN | A | 3.533 | 4 |
| RF | A | 3.317 | 4 |
| EN | B | 2.869 | 4 |
| RF | B | 3.34 | 4 |
| EN | C | 2.683 | 4 |
| RF | C | 3.287 | 4 |
| EN | D | 3.541 | 4 |
| RF | D | 3.522 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.08984 | 1 |
| iv_term | -0.08875 | 1 |
| vix9d_spread | 0.08452 | 1 |
| negret_w | -0.08126 | 1 |
| es_J_w | 0.07796 | 0.7778 |
| iv_atm_1m | 0.07507 | 1 |
| es_C_d | 0.06845 | 0.7778 |
| es_rk_d | 0.06834 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1844 |
| vix9d_spread | 0.06806 |
| iv_atm_1m | 0.053 |
| es_C_d | 0.0487 |
| log_vxn | 0.04743 |
| negret_w | 0.04718 |
| es_rsn_d | 0.0451 |
| log_vix | 0.04211 |

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
| PER | A | 2176 | 0.6032 | 10.5 | 1.079 | -0.3754 | 1.559 | 1.664 | -2.029 | 0.04261 | 0.9787 | -1.233 | 0.2179 | yes | 0.4294 | yes | 0.6482 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.3869 | 6.309 | 0.874 | 0.1736 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.9892 | yes | 1 | 0 | 0.6415 | 0.0213 |
| EN | A | 2176 | 0.3868 | 6.36 | 0.838 | 0.167 | 0.9997 | 1.008 | 0.007953 | 0.9937 | 0.4968 | -0.1123 | 0.9106 | yes | 1 | yes | 0.8634 | 0 | 0.6413 | 0.02382 |
| RF | A | 2176 | 0.4754 | 7.363 | 0.8963 | 0.03565 | 1.229 | 1.167 | -1.725 | 0.08466 | 0.9577 | -1.1 | 0.2714 | yes | 0.4294 | yes | 0.6482 | 0 | 0.7881 | 0.04511 |
| EN | B | 2176 | 0.4665 | 6.736 | 0.8718 | 0.1178 | 1.206 | 1.068 | -1.817 | 0.06936 | 0.9653 | -0.5762 | 0.5646 | yes | 0.4294 | yes | 0.6482 | 0 | 0.7735 | 0.08989 |
| RF | B | 2176 | 0.5216 | 7.507 | 1.077 | 0.01675 | 1.348 | 1.19 | -2.512 | 0.01206 | 0.994 | -1.224 | 0.2209 | yes | 0.4294 | yes | 0.6482 | 0 | 0.8647 | 0.1904 |
| EN | C | 2176 | 0.4913 | 6.913 | 0.8846 | 0.09451 | 1.27 | 1.096 | -1.995 | 0.04615 | 0.9769 | -0.6909 | 0.4897 | yes | 0.4294 | yes | 0.6482 | 0 | 0.8146 | 0.1132 |
| RF | C | 2176 | 0.5413 | 7.841 | 1.122 | -0.02705 | 1.399 | 1.243 | -2.519 | 0.01184 | 0.9941 | -1.441 | 0.1497 | yes | 0.4294 | yes | 0.6482 | 0 | 0.8975 | 0.2638 |
| EN | D | 2176 | 0.4854 | 6.923 | 0.8934 | 0.0933 | 1.255 | 1.097 | -2.268 | 0.02346 | 0.9883 | -0.9593 | 0.3375 | yes | 0.4294 | yes | 0.6482 | 0.1379 | 0.8048 | 0.09776 |
| RF | D | 2176 | 0.4695 | 7.231 | 0.9657 | 0.05291 | 1.213 | 1.146 | -1.662 | 0.09666 | 0.9517 | -0.9237 | 0.3557 | yes | 0.4294 | yes | 0.6482 | 0 | 0.7783 | 0.08399 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2176 | 0.6415 | 2.029 | 0.04261 | 0.0213 | 0.6008 | 1.233 | 0.2179 | 0.1089 | 0.9892 | 1 |
| EN_A vs PER_A | 2176 | 0.6413 | 1.982 | 0.04765 | 0.02382 | 0.6056 | 1.154 | 0.2486 | 0.1243 | 1 | 0.8634 |
| RF_A vs PER_A | 2176 | 0.7881 | 1.695 | 0.09021 | 0.04511 | 0.7011 | 0.9684 | 0.333 | 0.1665 | 0.0722 | 0.4006 |
| EN_A vs HAR_A | 2176 | 0.9997 | 0.007953 | 0.9937 | 0.4968 | 1.008 | -0.1123 | 0.9106 | 0.5447 | 1 | 0.8634 |
| RF_A vs HAR_A | 2176 | 1.229 | -1.725 | 0.08466 | 0.9577 | 1.167 | -1.1 | 0.2714 | 0.8643 | 0.0722 | 0.4006 |
| RF_A vs EN_A | 2176 | 1.229 | -1.841 | 0.06569 | 0.9672 | 1.158 | -1.435 | 0.1514 | 0.9243 | 0.0722 | 0.4006 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 2176 | -0.07972 | -20.61 | -0.0462 | -9.72 | 0.03352 | 0.5592 | 0.288 | 0.5761 |
| A->B | MSE | 2176 | -0.3761 | -5.913 | -0.1443 | -1.96 | 0.2318 | 0.4418 | 0.3293 | 0.6587 |
| A->C | QLIKE | 2176 | -0.1045 | -27.02 | -0.06598 | -13.88 | 0.03854 | 0.5519 | 0.2905 | 0.5811 |
| A->C | MSE | 2176 | -0.5535 | -8.704 | -0.4787 | -6.502 | 0.07483 | 0.1176 | 0.4532 | 0.9064 |
| A->D | QLIKE | 2176 | -0.09863 | -25.5 | 0.005889 | 1.239 | 0.1045 | 1.525 | 0.06368 | 0.1274 |
| A->D | MSE | 2176 | -0.5628 | -8.849 | 0.1318 | 1.79 | 0.6945 | 1.11 | 0.1336 | 0.2672 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1438 | 0.4426 | 1.662 | 1 | 0.9571 | 1.125 | 1.096 | 1.309 | 1.134 | 1.337 | 1.218 | 1.12 |
| High RV (monthly RV > threshold) | 738 | 0.2784 | 1.238 | 1 | 1.132 | 1.549 | 1.545 | 1.469 | 1.69 | 1.59 | 1.368 | 1.504 |
| Normal days (target <= Q3 + 1.5 IQR) | 2049 | 0.1925 | 1.79 | 1 | 1.003 | 1.278 | 1.479 | 1.562 | 1.532 | 1.608 | 1.564 | 1.241 |
| Extreme days (target > Q3 + 1.5 IQR) | 127 | 3.523 | 1.355 | 1 | 0.997 | 1.185 | 0.9649 | 1.159 | 1.039 | 1.215 | 0.9817 | 1.189 |
| Feb 2018 Volmageddon | 43 | 0.3806 | 3.019 | 1 | 1 | 1.437 | 0.7583 | 1.015 | 0.9132 | 1.069 | 0.8974 | 0.8542 |
| COVID 2020 | 70 | 2.273 | 1.535 | 1 | 1.194 | 1.537 | 1.323 | 1.529 | 1.538 | 1.721 | 1.253 | 1.623 |
| 2022 bear market | 209 | 0.2293 | 1.114 | 1 | 0.9995 | 0.9362 | 1.688 | 0.9794 | 1.688 | 0.8292 | 1.558 | 0.8584 |
| Apr 2025 tariffs | 42 | 0.2363 | 2.917 | 1 | 1.006 | 1.743 | 0.815 | 0.9309 | 0.815 | 0.951 | 0.9934 | 0.9636 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.398 | 4 |
| HAR | A | 3.044 | 4 |
| EN | A | 3.049 | 4 |
| RF | A | 2.783 | 4 |
| EN | B | 2.816 | 4 |
| RF | B | 2.776 | 4 |
| EN | C | 2.746 | 4 |
| RF | C | 2.74 | 4 |
| EN | D | 2.777 | 4 |
| RF | D | 2.859 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 89.76 | 1.772 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 31.55 | 0.6043 | 24.81 | 0.3841 | 0.7413 | -0.1283 | 0.8497 |
| HAR_A | 2176 | 59.66 | 1.271 | 45.56 | 0.756 | 0.7105 | 0.05298 | 0.8309 |
| EN_A | 2176 | 72.39 | 1.429 | 53.69 | 0.8215 | 0.7192 | 0.1038 | 0.8341 |
| RF_A | 2176 | 64.53 | 1.297 | 44.65 | 0.6921 | 0.7252 | 0.08306 | 0.8704 |
| EN_B | 2176 | 71.6 | 1.417 | 51.59 | 0.7925 | 0.7408 | 0.1011 | 0.8934 |
| RF_B | 2176 | 42.92 | 0.8422 | 21.12 | 0.3221 | 0.6429 | 0.08333 | 0.8019 |
| EN_C | 2176 | 74.97 | 1.564 | 57.33 | 0.9477 | 0.7417 | 0.09373 | 0.8961 |
| RF_C | 2176 | 39.45 | 0.7763 | 19.67 | 0.3004 | 0.6411 | 0.075 | 0.8065 |
| EN_D | 2176 | 62.14 | 1.222 | 44.48 | 0.68 | 0.716 | 0.08034 | 0.8557 |
| RF_D | 2176 | 37.08 | 0.7364 | 17.87 | 0.2746 | 0.6429 | 0.0846 | 0.7964 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1606 | 1 |
| es_J_w | 0.1334 | 0.8889 |
| es_rsp_d | 0.113 | 0.8889 |
| iv_skew_1m | 0.1057 | 1 |
| vix9d_spread | 0.06695 | 1 |
| iv_term | -0.06316 | 0.8889 |
| negret_w | -0.05356 | 0.8889 |
| dgs10 | -0.04841 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1032 |
| negret_w | 0.03524 |
| log_vxn | 0.03494 |
| parkinson_w | 0.03182 |
| iv_atm_1m | 0.03085 |
| negret_m | 0.02927 |
| es_rsn_d | 0.02855 |
| es_rk_d | 0.02768 |

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
| SPY | 1 | RF_C | 0.8455 | 5.784e-07 | yes | yes | 0.6464 | yes | EN_B EN_C EN_D | NaN | NaN |
| SPY | 5 | RF_B | 0.8826 | 0.005529 | yes | yes | 0.6461 | yes | EN_C EN_D RF_D | NaN | NaN |
| SPY | 22 | EN_B | 0.971 | 0.3339 | yes | no | 0.6439 | no | EN_B EN_C RF_C EN_D RF_D | 45.9 | 0.1333 |
| ES | 1 | RF_D | 0.9684 | 0.3002 | yes | no | 0.7996 | yes | RF_A EN_B RF_B EN_C | NaN | NaN |
| ES | 5 | EN_D | 0.9842 | 0.4128 | yes | no | 0.7547 | yes | RF_A EN_B RF_B EN_C RF_C | NaN | NaN |
| ES | 22 | EN_A | 0.9997 | 0.4968 | yes | no | 0.6413 | yes | EN_B RF_B EN_C RF_C EN_D RF_D | 53.69 | 0.1038 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.308 | 1.258 | 3.109e-10 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7646 |
| SPY | 1 | all-model common days | EN | A | 1.001 | 1 | 0.1014 | yes | 0.765 |
| SPY | 1 | all-model common days | RF | A | 0.9818 | 1.1 | 0.4101 | yes | 0.7506 |
| SPY | 1 | all-model common days | EN | B | 1.346 | 0.9527 | 0.02971 | yes | 1.029 |
| SPY | 1 | all-model common days | RF | B | 0.8567 | 0.8528 | 5.036e-06 | yes | 0.655 |
| SPY | 1 | all-model common days | EN | C | 1.332 | 0.9675 | 0.03744 | yes | 1.018 |
| SPY | 1 | all-model common days | RF | C | 0.8455 | 0.69 | 1.157e-06 | yes | 0.6464 |
| SPY | 1 | all-model common days | EN | D | 2.109 | 1.052 | 0.0005783 | no | 1.612 |
| SPY | 1 | all-model common days | RF | D | 0.9215 | 1.38 | 0.1972 | yes | 0.7046 |
| SPY | 5 | all-model common days | PER | A | 1.366 | 1.204 | 6.427e-07 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.732 |
| SPY | 5 | all-model common days | EN | A | 0.9994 | 0.9994 | 0.4465 | yes | 0.7316 |
| SPY | 5 | all-model common days | RF | A | 1.051 | 1.158 | 0.1443 | yes | 0.7694 |
| SPY | 5 | all-model common days | EN | B | 0.9592 | 1.066 | 0.4984 | yes | 0.7021 |
| SPY | 5 | all-model common days | RF | B | 0.8826 | 0.9162 | 0.01106 | yes | 0.6461 |
| SPY | 5 | all-model common days | EN | C | 1.973 | 1.038 | 0.00154 | yes | 1.445 |
| SPY | 5 | all-model common days | RF | C | 0.9304 | 1.101 | 0.1418 | yes | 0.6811 |
| SPY | 5 | all-model common days | EN | D | 2.878 | 1.068 | 0.0001916 | no | 2.107 |
| SPY | 5 | all-model common days | RF | D | 1.149 | 1.557 | 0.3075 | yes | 0.8408 |
| SPY | 22 | all-model common days | PER | A | 1.508 | 1.55 | 0.07526 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6631 |
| SPY | 22 | all-model common days | EN | A | 1.023 | 1.002 | 0.1985 | yes | 0.6785 |
| SPY | 22 | all-model common days | RF | A | 1.085 | 0.8209 | 0.08394 | yes | 0.7197 |
| SPY | 22 | all-model common days | EN | B | 0.971 | 0.8609 | 0.6679 | yes | 0.6439 |
| SPY | 22 | all-model common days | RF | B | 1.055 | 0.8583 | 0.2815 | yes | 0.6999 |
| SPY | 22 | all-model common days | EN | C | 0.9867 | 0.9159 | 0.8406 | yes | 0.6543 |
| SPY | 22 | all-model common days | RF | C | 1.043 | 0.9013 | 0.3143 | yes | 0.6917 |
| SPY | 22 | all-model common days | EN | D | 1.291 | 0.8875 | 0.06619 | yes | 0.8558 |
| SPY | 22 | all-model common days | RF | D | 1.27 | 1.036 | 0.1251 | yes | 0.8423 |
| ES | 1 | all-model common days | PER | A | 1.211 | 1.124 | 2.181e-09 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.8257 |
| ES | 1 | all-model common days | EN | A | 1.001 | 0.9973 | 0.7829 | yes | 0.8266 |
| ES | 1 | all-model common days | RF | A | 1.133 | 2.013 | 0.1244 | yes | 0.9356 |
| ES | 1 | all-model common days | EN | B | 1.557 | 1.452 | 0.0004283 | no | 1.286 |
| ES | 1 | all-model common days | RF | B | 1.051 | 1.881 | 0.6119 | yes | 0.8681 |
| ES | 1 | all-model common days | EN | C | 1.489 | 1.455 | 0.001045 | yes | 1.23 |
| ES | 1 | all-model common days | RF | C | 1.006 | 1.69 | 0.9283 | yes | 0.8304 |
| ES | 1 | all-model common days | EN | D | 1.071 | 1.213 | 0.2309 | yes | 0.884 |
| ES | 1 | all-model common days | RF | D | 0.9684 | 1.675 | 0.6003 | yes | 0.7996 |
| ES | 5 | all-model common days | PER | A | 1.304 | 1.128 | 2.064e-05 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7667 |
| ES | 5 | all-model common days | EN | A | 1.001 | 0.9983 | 0.7561 | yes | 0.7675 |
| ES | 5 | all-model common days | RF | A | 1.344 | 1.85 | 0.1062 | yes | 1.031 |
| ES | 5 | all-model common days | EN | B | 2.061 | 1.297 | 0.0009811 | yes | 1.581 |
| ES | 5 | all-model common days | RF | B | 1.321 | 1.79 | 0.1741 | yes | 1.013 |
| ES | 5 | all-model common days | EN | C | 2.368 | 1.32 | 0.0001862 | no | 1.816 |
| ES | 5 | all-model common days | RF | C | 1.432 | 1.815 | 0.1021 | yes | 1.098 |
| ES | 5 | all-model common days | EN | D | 0.9842 | 1.295 | 0.8256 | yes | 0.7547 |
| ES | 5 | all-model common days | RF | D | 1.057 | 1.45 | 0.4114 | yes | 0.8101 |
| ES | 22 | all-model common days | PER | A | 1.559 | 1.664 | 0.04261 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6415 |
| ES | 22 | all-model common days | EN | A | 0.9997 | 1.008 | 0.9937 | yes | 0.6413 |
| ES | 22 | all-model common days | RF | A | 1.229 | 1.167 | 0.08466 | yes | 0.7881 |
| ES | 22 | all-model common days | EN | B | 1.206 | 1.068 | 0.06936 | yes | 0.7735 |
| ES | 22 | all-model common days | RF | B | 1.348 | 1.19 | 0.01206 | yes | 0.8647 |
| ES | 22 | all-model common days | EN | C | 1.27 | 1.096 | 0.04615 | yes | 0.8146 |
| ES | 22 | all-model common days | RF | C | 1.399 | 1.243 | 0.01184 | yes | 0.8975 |
| ES | 22 | all-model common days | EN | D | 1.255 | 1.097 | 0.02346 | yes | 0.8048 |
| ES | 22 | all-model common days | RF | D | 1.213 | 1.146 | 0.09666 | yes | 0.7783 |

