# Results: test period, scenario "strict"

Generated 2026-10-21 23:42 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-08-25, n = 1650)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 1650 | 0.3187 | 3.554 | 0.4983 | 0.4084 | 1.287 | 1.257 | -5.166 | 2.686e-07 | 1 | -1.431 | 0.1527 | no | 0.0004 | yes | 0.711 | 0 | 1 | NaN |
| HAR | A | 1650 | 0.2476 | 2.828 | 0.4776 | 0.5293 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.186 | yes | 0.711 | 0 | 0.7771 | 1.343e-07 |
| EN | A | 1650 | 0.2479 | 2.828 | 0.4779 | 0.5293 | 1.001 | 1 | -1.717 | 0.08608 | 0.957 | 0.2842 | 0.7763 | yes | 0.186 | yes | 0.711 | 0 | 0.778 | 1.535e-07 |
| RF | A | 1650 | 0.2378 | 2.959 | 0.479 | 0.5074 | 0.9605 | 1.046 | 1.524 | 0.1278 | 0.06389 | -0.266 | 0.7903 | yes | 0.2114 | yes | 0.711 | 0 | 0.7464 | 2.197e-15 |
| EN | C | 1650 | 0.3061 | 2.741 | 0.4634 | 0.5438 | 1.236 | 0.9692 | -1.71 | 0.08749 | 0.9563 | 0.286 | 0.7749 | yes | 0.186 | yes | 0.711 | 1.091 | 0.9606 | 0.3673 |
| RF | C | 1650 | 0.2056 | 2.31 | 0.4348 | 0.6156 | 0.8302 | 0.8167 | 4.969 | 7.439e-07 | 3.719e-07 | 1.269 | 0.2048 | yes | 1 | yes | 1 | 0 | 0.6451 | 4.695e-16 |
| EN | D | 1650 | 0.225 | 3.037 | 0.4499 | 0.4946 | 0.9087 | 1.074 | 3.115 | 0.001874 | 0.0009368 | -0.471 | 0.6377 | yes | 0.5686 | yes | 0.711 | 0 | 0.7061 | 2.172e-10 |
| RF | D | 1650 | 0.2345 | 4.029 | 0.4897 | 0.3294 | 0.9469 | 1.425 | 0.6437 | 0.5198 | 0.2599 | -0.7855 | 0.4323 | yes | 0.5686 | yes | 0.711 | 0 | 0.7358 | 0.0001821 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 1650 | 0.7771 | 5.166 | 2.686e-07 | 1.343e-07 | 0.7957 | 1.431 | 0.1527 | 0.07633 | 0.0962 | 0.744 |
| EN_A vs PER_A | 1650 | 0.778 | 5.14 | 3.069e-07 | 1.535e-07 | 0.7957 | 1.431 | 0.1526 | 0.07632 | 0.0798 | 1 |
| RF_A vs PER_A | 1650 | 0.7464 | 7.918 | 4.393e-15 | 2.197e-15 | 0.8326 | 0.7848 | 0.4327 | 0.2164 | 1 | 0.744 |
| EN_A vs HAR_A | 1650 | 1.001 | -1.717 | 0.08608 | 0.957 | 1 | 0.2842 | 0.7763 | 0.3881 | 0.0798 | 1 |
| RF_A vs HAR_A | 1650 | 0.9605 | 1.524 | 0.1278 | 0.06389 | 1.046 | -0.266 | 0.7903 | 0.6049 | 1 | 0.744 |
| RF_A vs EN_A | 1650 | 0.9593 | 1.569 | 0.1168 | 0.05839 | 1.046 | -0.2661 | 0.7902 | 0.6049 | 1 | 0.744 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 1650 | -0.05816 | -23.46 | 0.03225 | 13.56 | 0.09042 | 2.675 | 0.003768 | 0.007537 |
| A->C | MSE | 1650 | 0.08713 | 3.081 | 0.6496 | 21.95 | 0.5625 | 0.9271 | 0.177 | 0.354 |
| A->D | QLIKE | 1650 | 0.02292 | 9.246 | 0.003373 | 1.418 | -0.01955 | -1.084 | 0.8608 | 0.2784 |
| A->D | MSE | 1650 | -0.2083 | -7.367 | -1.07 | -36.15 | -0.8615 | -1.273 | 0.8983 | 0.2034 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1239 | 0.2509 | 1.343 | 1 | 1.001 | 0.9745 | 1.362 | 0.849 | 0.9018 | 0.8763 |
| High RV (monthly RV > threshold) | 411 | 0.2377 | 1.109 | 1 | 1.002 | 0.9158 | 0.8367 | 0.7704 | 0.9306 | 1.171 |
| Normal days (target <= Q3 + 1.5 IQR) | 1491 | 0.2133 | 1.376 | 1 | 1.002 | 0.9906 | 1.436 | 0.9205 | 0.9258 | 0.9263 |
| Extreme days (target > Q3 + 1.5 IQR) | 159 | 0.5692 | 0.9739 | 1 | 1 | 0.8547 | 0.5352 | 0.5129 | 0.8486 | 1.019 |
| COVID 2020 | 70 | 0.3291 | 0.917 | 1 | 1 | 0.8671 | 0.7432 | 0.7356 | 0.9955 | 2.558 |
| 2022 bear market | 129 | 0.149 | 1.354 | 1 | 0.9999 | 0.9886 | 0.7184 | 0.7765 | 0.9186 | 0.8514 |
| Apr 2025 tariffs | 42 | 0.4745 | 0.7313 | 1 | 1 | 0.6998 | 0.6468 | 0.4065 | 0.7219 | 0.4033 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.282 | 4 |
| HAR | A | 3.516 | 4 |
| EN | A | 3.516 | 4 |
| RF | A | 3.512 | 4 |
| EN | C | 3.369 | 4 |
| RF | C | 3.604 | 4 |
| EN | D | 3.554 | 4 |
| RF | D | 3.527 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06775 | 1 |
| negret_w | -0.05917 | 1 |
| vix9d_spread | 0.05525 | 1 |
| es_rsn_d | 0.05345 | 1 |
| vrp | 0.05047 | 1 |
| es_C_d | 0.04914 | 1 |
| es_rk_d | 0.04913 | 1 |
| overnight_d | 0.04268 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2655 |
| negret_w | 0.132 |
| es_rsn_d | 0.09982 |
| es_C_d | 0.08724 |
| vix3m_spread | 0.06535 |
| es_rk_d | 0.06051 |
| rv_d | 0.05079 |
| iv_term | 0.03164 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 19.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-08-19, n = 1580)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 1580 | 0.3327 | 2.923 | 0.5306 | 0.3687 | 1.385 | 1.204 | -4.522 | 6.581e-06 | 1 | -1.007 | 0.3139 | yes | 0.2128 | yes | 0.7686 | 0 | 1 | NaN |
| HAR | A | 1580 | 0.2402 | 2.427 | 0.5035 | 0.4758 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6654 | yes | 0.8344 | 0 | 0.7221 | 3.29e-06 |
| EN | A | 1580 | 0.2404 | 2.426 | 0.5033 | 0.4759 | 1.001 | 0.9997 | -0.4751 | 0.6348 | 0.6826 | 0.7792 | 0.436 | yes | 0.6654 | yes | 1 | 0 | 0.7225 | 3.495e-06 |
| RF | A | 1580 | 0.2514 | 2.649 | 0.5176 | 0.4279 | 1.046 | 1.091 | -1.162 | 0.2455 | 0.8773 | -0.5537 | 0.5799 | yes | 0.6032 | yes | 0.7686 | 0 | 0.7555 | 6.229e-06 |
| EN | C | 1580 | 0.4012 | 2.54 | 0.5206 | 0.4514 | 1.67 | 1.047 | -2.493 | 0.01277 | 0.9936 | -0.2592 | 0.7955 | yes | 0.2128 | yes | 0.8344 | 1.139 | 1.206 | 0.8535 |
| RF | C | 1580 | 0.217 | 2.657 | 0.5103 | 0.4262 | 0.9032 | 1.095 | 1.7 | 0.08936 | 0.04468 | -0.3812 | 0.7031 | yes | 1 | yes | 0.7722 | 0 | 0.6522 | 1.16e-05 |
| EN | D | 1580 | 0.4663 | 2.572 | 0.4657 | 0.4444 | 1.941 | 1.06 | -2.502 | 0.01245 | 0.9938 | -0.2743 | 0.7839 | yes | 0.2128 | yes | 0.8344 | 1.899 | 1.402 | 0.931 |
| RF | D | 1580 | 0.2589 | 3.725 | 0.5366 | 0.1953 | 1.077 | 1.535 | -0.5417 | 0.5881 | 0.7059 | -0.9718 | 0.3313 | yes | 0.6654 | yes | 0.7686 | 0 | 0.778 | 0.04275 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 1580 | 0.7221 | 4.522 | 6.581e-06 | 3.29e-06 | 0.8304 | 1.007 | 0.3139 | 0.1569 | 1 | 0.43 |
| EN_A vs PER_A | 1580 | 0.7225 | 4.509 | 6.991e-06 | 3.495e-06 | 0.8302 | 1.009 | 0.3133 | 0.1567 | 0.6798 | 1 |
| RF_A vs PER_A | 1580 | 0.7555 | 4.383 | 1.246e-05 | 6.229e-06 | 0.9063 | 0.4214 | 0.6735 | 0.3368 | 0.2346 | 0.43 |
| EN_A vs HAR_A | 1580 | 1.001 | -0.4751 | 0.6348 | 0.6826 | 0.9997 | 0.7792 | 0.436 | 0.218 | 0.6798 | 1 |
| RF_A vs HAR_A | 1580 | 1.046 | -1.162 | 0.2455 | 0.8773 | 1.091 | -0.5537 | 0.5799 | 0.7101 | 0.2346 | 0.43 |
| RF_A vs EN_A | 1580 | 1.046 | -1.145 | 0.2523 | 0.8739 | 1.092 | -0.5552 | 0.5789 | 0.7106 | 0.2346 | 0.43 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 1580 | -0.1609 | -66.92 | 0.03439 | 13.68 | 0.1953 | 3.014 | 0.001308 | 0.002616 |
| A->C | MSE | 1580 | -0.1136 | -4.683 | -0.007729 | -0.2918 | 0.1059 | 0.4362 | 0.3314 | 0.6628 |
| A->D | QLIKE | 1580 | -0.226 | -94 | -0.007492 | -2.98 | 0.2185 | 2.341 | 0.009685 | 0.01937 |
| A->D | MSE | 1580 | -0.146 | -6.019 | -1.077 | -40.65 | -0.9306 | -1.601 | 0.9453 | 0.1095 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1181 | 0.2254 | 1.479 | 1 | 1 | 1.068 | 1.969 | 0.8997 | 2.29 | 0.9385 |
| High RV (monthly RV > threshold) | 399 | 0.2842 | 1.164 | 1 | 1.001 | 0.9946 | 0.9688 | 0.9114 | 1.122 | 1.404 |
| Normal days (target <= Q3 + 1.5 IQR) | 1441 | 0.1694 | 1.496 | 1 | 0.9996 | 1.116 | 2.149 | 0.9947 | 2.532 | 0.9978 |
| Extreme days (target > Q3 + 1.5 IQR) | 139 | 0.9749 | 1.185 | 1 | 1.002 | 0.9209 | 0.8068 | 0.7383 | 0.8772 | 1.221 |
| COVID 2020 | 70 | 0.6646 | 1.039 | 1 | 1 | 0.9168 | 1.008 | 0.8562 | 1.02 | 2.27 |
| 2022 bear market | 121 | 0.1049 | 1.261 | 1 | 0.9838 | 1.101 | 0.5561 | 0.732 | 1.928 | 0.8898 |
| Apr 2025 tariffs | 42 | 1.028 | 1.105 | 1 | 1 | 0.9097 | 0.6556 | 0.7338 | 0.5978 | 0.6691 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.221 | 4 |
| HAR | A | 3.488 | 4 |
| EN | A | 3.488 | 4 |
| RF | A | 3.447 | 4 |
| EN | C | 3.041 | 4 |
| RF | C | 3.549 | 4 |
| EN | D | 2.805 | 4 |
| RF | D | 3.433 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.07805 | 1 |
| vrp | 0.05548 | 1 |
| negret_w | -0.05538 | 1 |
| vix9d_spread | 0.04886 | 1 |
| vix3m_spread | -0.04682 | 1 |
| es_rsn_d | 0.04303 | 1 |
| es_C_d | 0.04285 | 1 |
| overnight_d | 0.04241 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.112 |
| vix3m_spread | 0.09999 |
| negret_w | 0.07037 |
| es_rsn_d | 0.06148 |
| es_C_d | 0.05377 |
| log_vxn | 0.05236 |
| rv_d | 0.05177 |
| es_rk_d | 0.04064 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 89.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-07-27, n = 1318)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 1318 | 0.7007 | 4.938 | 0.8228 | -0.4611 | 1.592 | 1.562 | -1.727 | 0.08448 | 0.9578 | -1.309 | 0.1908 | yes | 0.2368 | yes | 0.3756 | 0 | 1 | NaN |
| HAR | A | 1318 | 0.4402 | 3.16 | 0.6847 | 0.0649 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7768 | yes | 0.8028 | 0 | 0.6282 | 0.04224 |
| EN | A | 1318 | 0.4474 | 3.16 | 0.6858 | 0.06492 | 1.016 | 1 | -1.093 | 0.2748 | 0.8626 | 0.01282 | 0.9898 | yes | 0.7458 | yes | 0.8154 | 0 | 0.6385 | 0.04746 |
| RF | A | 1318 | 0.4722 | 2.549 | 0.6358 | 0.2456 | 1.073 | 0.8067 | -1.307 | 0.1915 | 0.9043 | 1.137 | 0.2557 | yes | 0.5212 | yes | 1 | 0 | 0.6739 | 0.04653 |
| EN | C | 1318 | 0.4282 | 2.896 | 0.664 | 0.1432 | 0.9729 | 0.9163 | 0.3482 | 0.7278 | 0.3639 | 0.6835 | 0.4944 | yes | 1 | yes | 0.8154 | 0 | 0.6111 | 0.06381 |
| RF | C | 1318 | 0.445 | 2.826 | 0.6426 | 0.1638 | 1.011 | 0.8942 | -0.2325 | 0.8162 | 0.5919 | 0.851 | 0.3949 | yes | 0.7768 | yes | 0.8154 | 0 | 0.635 | 0.04796 |
| EN | D | 1318 | 2.226 | 3.014 | 0.6372 | 0.1082 | 5.058 | 0.9537 | -1.49 | 0.1365 | 0.9317 | 0.3619 | 0.7175 | yes | 0.2368 | yes | 0.8154 | 3.035 | 3.177 | 0.9 |
| RF | D | 1318 | 0.576 | 3.273 | 0.6477 | 0.0316 | 1.309 | 1.036 | -1.415 | 0.1573 | 0.9213 | -0.1902 | 0.8492 | yes | 0.3698 | yes | 0.8154 | 0 | 0.822 | 0.1097 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 1318 | 0.6282 | 1.727 | 0.08448 | 0.04224 | 0.64 | 1.309 | 0.1908 | 0.09538 | 1 | 0.2456 |
| EN_A vs PER_A | 1318 | 0.6385 | 1.671 | 0.09492 | 0.04746 | 0.64 | 1.309 | 0.1908 | 0.09538 | 0.325 | 0.2456 |
| RF_A vs PER_A | 1318 | 0.6739 | 1.681 | 0.09306 | 0.04653 | 0.5163 | 1.317 | 0.1881 | 0.09404 | 0.325 | 1 |
| EN_A vs HAR_A | 1318 | 1.016 | -1.093 | 0.2748 | 0.8626 | 1 | 0.01282 | 0.9898 | 0.4949 | 0.325 | 0.2456 |
| RF_A vs HAR_A | 1318 | 1.073 | -1.307 | 0.1915 | 0.9043 | 0.8067 | 1.137 | 0.2557 | 0.1279 | 0.325 | 1 |
| RF_A vs EN_A | 1318 | 1.055 | -0.9422 | 0.3462 | 0.8269 | 0.8067 | 1.137 | 0.2558 | 0.1279 | 0.325 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 1318 | 0.01918 | 4.287 | 0.02726 | 5.773 | 0.00808 | 0.2794 | 0.39 | 0.78 |
| A->C | MSE | 1318 | 0.2645 | 8.369 | -0.2766 | -10.85 | -0.5411 | -0.9455 | 0.8277 | 0.3446 |
| A->D | QLIKE | 1318 | -1.779 | -397.6 | -0.1038 | -21.97 | 1.675 | 1.39 | 0.0824 | 0.1648 |
| A->D | MSE | 1318 | 0.1463 | 4.629 | -0.7234 | -28.38 | -0.8697 | -1.011 | 0.844 | 0.3121 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 964 | 0.4703 | 1.654 | 1 | 1.023 | 1.104 | 0.9607 | 0.9766 | 5.215 | 1.159 |
| High RV (monthly RV > threshold) | 354 | 0.3581 | 1.369 | 1 | 0.9915 | 0.9599 | 1.017 | 1.134 | 4.495 | 1.844 |
| Normal days (target <= Q3 + 1.5 IQR) | 1225 | 0.192 | 1.619 | 1 | 1.044 | 1.132 | 1.129 | 1.016 | 9.837 | 1.122 |
| Extreme days (target > Q3 + 1.5 IQR) | 93 | 3.709 | 1.574 | 1 | 0.9978 | 1.033 | 0.8665 | 1.008 | 1.799 | 1.436 |
| COVID 2020 | 70 | 1.56 | 2.031 | 1 | 1 | 0.8368 | 0.9803 | 0.9834 | 1.344 | 2.046 |
| 2022 bear market | 87 | 0.1143 | 1.247 | 1 | 0.807 | 0.9304 | 0.7434 | 0.9117 | 1.581 | 0.885 |
| Apr 2025 tariffs | 42 | 0.5142 | 1.623 | 1 | 1 | 1.215 | 0.6346 | 0.7224 | 0.4895 | 0.6238 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.137 | 4 |
| HAR | A | 2.911 | 4 |
| EN | A | 2.901 | 4 |
| RF | A | 2.799 | 4 |
| EN | C | 2.977 | 4 |
| RF | C | 2.896 | 4 |
| EN | D | -3.046 | 4 |
| RF | D | 2.526 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 1318 | 65.69 | 0.8637 | 25.78 | 0.2403 | NaN | NaN | 1 |
| PER_A | 1318 | 7.873 | 0.1046 | -17.86 | -0.172 | 0.6722 | -0.135 | 0.7974 |
| HAR_A | 1318 | 30.57 | 0.5671 | 21.4 | 0.3146 | 0.6639 | 0.07926 | 0.7481 |
| EN_A | 1318 | 23.63 | 0.4408 | 15.59 | 0.23 | 0.6396 | 0.08343 | 0.7178 |
| RF_A | 1318 | 87.28 | 1.899 | 84.24 | 1.499 | 0.7079 | 0.3151 | 0.8012 |
| EN_C | 1318 | 32.55 | 0.4753 | -2.753 | -0.02659 | 0.6745 | 0.09907 | 0.7511 |
| RF_C | 1318 | 33.16 | 0.4379 | -8.993 | -0.08425 | 0.6821 | 0.1159 | 0.827 |
| EN_D | 1318 | 43.97 | 0.6029 | 12.2 | 0.1146 | 0.7595 | 0.09592 | 0.8998 |
| RF_D | 1318 | 34.27 | 0.4564 | -6.705 | -0.06305 | 0.673 | 0.09431 | 0.8164 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.0688 | 1 |
| iv_skew_1m | 0.0528 | 1 |
| vix9d_spread | 0.04246 | 1 |
| es_J_w | 0.04172 | 0.8889 |
| negret_w | -0.03931 | 1 |
| iv_term | -0.03845 | 1 |
| rv_d | 0.02711 | 1 |
| vrp | 0.0271 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.05283 |
| vix3m_spread | 0.04211 |
| log_vxn | 0.03483 |
| negret_w | 0.03367 |
| es_rsn_d | 0.0322 |
| iv_skew_1m | 0.03142 |
| parkinson_w | 0.03088 |
| rv_d | 0.03078 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 351.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_C | 0.8302 | 3.719e-07 | yes | yes | 0.6451 | yes | EN_C | NaN | NaN |
| SPY | 5 | RF_C | 0.9032 | 0.04468 | yes | yes | 0.6522 | yes | EN_C EN_D | NaN | NaN |
| SPY | 22 | EN_C | 0.9729 | 0.3639 | yes | no | 0.6111 | no | EN_C EN_D RF_D | -2.753 | 0.09907 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.287 | 1.257 | 2.686e-07 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7771 |
| SPY | 1 | all-model common days | EN | A | 1.001 | 1 | 0.08608 | yes | 0.778 |
| SPY | 1 | all-model common days | RF | A | 0.9605 | 1.046 | 0.1278 | yes | 0.7464 |
| SPY | 1 | all-model common days | EN | C | 1.236 | 0.9692 | 0.08749 | yes | 0.9606 |
| SPY | 1 | all-model common days | RF | C | 0.8302 | 0.8167 | 7.439e-07 | yes | 0.6451 |
| SPY | 1 | all-model common days | EN | D | 0.9087 | 1.074 | 0.001874 | yes | 0.7061 |
| SPY | 1 | all-model common days | RF | D | 0.9469 | 1.425 | 0.5198 | yes | 0.7358 |
| SPY | 5 | all-model common days | PER | A | 1.385 | 1.204 | 6.581e-06 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7221 |
| SPY | 5 | all-model common days | EN | A | 1.001 | 0.9997 | 0.6348 | yes | 0.7225 |
| SPY | 5 | all-model common days | RF | A | 1.046 | 1.091 | 0.2455 | yes | 0.7555 |
| SPY | 5 | all-model common days | EN | C | 1.67 | 1.047 | 0.01277 | yes | 1.206 |
| SPY | 5 | all-model common days | RF | C | 0.9032 | 1.095 | 0.08936 | yes | 0.6522 |
| SPY | 5 | all-model common days | EN | D | 1.941 | 1.06 | 0.01245 | yes | 1.402 |
| SPY | 5 | all-model common days | RF | D | 1.077 | 1.535 | 0.5881 | yes | 0.778 |
| SPY | 22 | all-model common days | PER | A | 1.592 | 1.562 | 0.08448 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6282 |
| SPY | 22 | all-model common days | EN | A | 1.016 | 1 | 0.2748 | yes | 0.6385 |
| SPY | 22 | all-model common days | RF | A | 1.073 | 0.8067 | 0.1915 | yes | 0.6739 |
| SPY | 22 | all-model common days | EN | C | 0.9729 | 0.9163 | 0.7278 | yes | 0.6111 |
| SPY | 22 | all-model common days | RF | C | 1.011 | 0.8942 | 0.8162 | yes | 0.635 |
| SPY | 22 | all-model common days | EN | D | 5.058 | 0.9537 | 0.1365 | yes | 3.177 |
| SPY | 22 | all-model common days | RF | D | 1.309 | 1.036 | 0.1573 | yes | 0.822 |

