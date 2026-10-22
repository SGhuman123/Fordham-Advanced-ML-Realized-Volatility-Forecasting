# Results: test period, scenario "rv15"

Generated 2026-10-21 23:42 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2118)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2118 | 0.4108 | 2.749 | 0.4855 | 0.4468 | 1.463 | 1.15 | -8.285 | 2.064e-16 | 1 | -0.741 | 0.4588 | no | 0 | yes | 0.8704 | 0 | 1 | NaN |
| HAR | A | 2118 | 0.2807 | 2.39 | 0.4728 | 0.5191 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3052 | yes | 0.8704 | 0 | 0.6834 | 1.032e-16 |
| EN | A | 2118 | 0.2808 | 2.39 | 0.4728 | 0.5191 | 1 | 1 | -1.253 | 0.2102 | 0.8949 | 1.37 | 0.1708 | yes | 0.3052 | yes | 0.8704 | 0 | 0.6836 | 1.106e-16 |
| RF | A | 2118 | 0.2777 | 2.608 | 0.4913 | 0.4752 | 0.9891 | 1.091 | 0.5518 | 0.5811 | 0.2906 | -0.5991 | 0.5491 | yes | 0.3052 | yes | 0.4098 | 0 | 0.676 | 2.004e-21 |
| EN | C | 2118 | 0.3868 | 2.389 | 0.4564 | 0.5194 | 1.378 | 0.9993 | -2.261 | 0.02389 | 0.9881 | 0.005386 | 0.9957 | yes | 0.1306 | yes | 0.8704 | 1.18 | 0.9417 | 0.3143 |
| RF | C | 2118 | 0.2365 | 1.87 | 0.4255 | 0.6237 | 0.8424 | 0.7824 | 5.774 | 8.86e-09 | 4.43e-09 | 1.497 | 0.1346 | yes | 1 | yes | 1 | 0 | 0.5757 | 8.414e-28 |
| EN | D | 2118 | 0.3138 | 2.43 | 0.4337 | 0.5111 | 1.118 | 1.017 | -1.399 | 0.1621 | 0.919 | -0.1387 | 0.8897 | yes | 0.3052 | yes | 0.8704 | 0.5666 | 0.764 | 0.0003226 |
| RF | D | 2118 | 0.2517 | 3.098 | 0.4527 | 0.3766 | 0.8967 | 1.296 | 2.405 | 0.01626 | 0.008131 | -0.6231 | 0.5333 | yes | 0.3052 | yes | 0.8704 | 0 | 0.6128 | 1.712e-17 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2120 | 0.6839 | 8.272 | 2.3e-16 | 1.15e-16 | 0.8694 | 0.7409 | 0.4588 | 0.2294 | 0.5644 | 0.7166 |
| EN_A vs PER_A | 2120 | 0.6841 | 8.263 | 2.464e-16 | 1.232e-16 | 0.8694 | 0.741 | 0.4588 | 0.2294 | 0.5532 | 1 |
| RF_A vs PER_A | 2120 | 0.6762 | 9.527 | 4.269e-21 | 2.135e-21 | 0.9486 | 0.1921 | 0.8477 | 0.4239 | 1 | 0.7166 |
| EN_A vs HAR_A | 2120 | 1 | -1.249 | 0.2119 | 0.8941 | 1 | 1.372 | 0.1702 | 0.08511 | 0.5532 | 1 |
| RF_A vs HAR_A | 2120 | 0.9887 | 0.5696 | 0.569 | 0.2845 | 1.091 | -0.5991 | 0.5492 | 0.7254 | 1 | 0.7166 |
| RF_A vs EN_A | 2120 | 0.9885 | 0.5801 | 0.5619 | 0.281 | 1.091 | -0.5992 | 0.5491 | 0.7255 | 1 | 0.7166 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2120 | -0.1059 | -37.73 | 0.04114 | 14.82 | 0.1471 | 3.173 | 0.0007664 | 0.001533 |
| A->C | MSE | 2120 | 0.001633 | 0.06837 | 0.7372 | 28.29 | 0.7356 | 1.219 | 0.1115 | 0.223 |
| A->D | QLIKE | 2118 | -0.03304 | -11.76 | 0.02593 | 9.338 | 0.05896 | 2.474 | 0.006723 | 0.01345 |
| A->D | MSE | 2118 | -0.03983 | -1.666 | -0.49 | -18.79 | -0.4502 | -0.8123 | 0.7917 | 0.4167 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1614 | 0.2899 | 1.512 | 1 | 1 | 0.9816 | 1.513 | 0.8611 | 1.172 | 0.8791 |
| High RV (monthly RV > threshold) | 504 | 0.2515 | 1.284 | 1 | 1 | 1.017 | 0.8775 | 0.7733 | 0.9188 | 0.9618 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2504 | 1.542 | 1 | 1 | 1.008 | 1.562 | 0.9017 | 1.196 | 0.903 |
| Extreme days (target > Q3 + 1.5 IQR) | 183 | 0.6012 | 1.116 | 1 | 0.9993 | 0.9074 | 0.569 | 0.5813 | 0.7758 | 0.8689 |
| Feb 2018 Volmageddon | 17 | 0.1721 | 1.469 | 1 | 1 | 1.018 | 0.7936 | 1.218 | 1.113 | 1.341 |
| COVID 2020 | 70 | 0.3538 | 0.9123 | 1 | 1 | 0.7835 | 0.761 | 0.7401 | 0.8505 | 1.69 |
| 2022 bear market | 203 | 0.1824 | 1.343 | 1 | 0.9999 | 1.003 | 0.6934 | 0.6542 | 1.08 | 0.7928 |
| Apr 2025 tariffs | 42 | 0.5366 | 0.937 | 1 | 1 | 1.23 | 0.6825 | 0.4738 | 0.7408 | 0.4645 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.057 | 4 |
| HAR | A | 3.462 | 4 |
| EN | A | 3.463 | 4 |
| RF | A | 3.447 | 4 |
| EN | C | 3.167 | 4 |
| RF | C | 3.55 | 4 |
| EN | D | 3.335 | 4 |
| RF | D | 3.509 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.0561 | 1 |
| vrp | 0.05512 | 1 |
| negret_w | -0.05193 | 1 |
| es_rsn_d | 0.05125 | 1 |
| vix9d_spread | 0.04962 | 1 |
| es_rk_d | 0.04639 | 1 |
| negret_d | -0.0463 | 1 |
| es_C_d | 0.04613 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.217 |
| vix9d_spread | 0.2138 |
| es_C_d | 0.08891 |
| es_rsn_d | 0.0647 |
| es_rk_d | 0.05069 |
| vix3m_spread | 0.04876 |
| iv_term | 0.0422 |
| parkinson_d | 0.0343 |

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
| PER | A | 2135 | 0.3278 | 2.701 | 0.4861 | 0.2629 | 1.399 | 1.288 | -4.933 | 8.716e-07 | 1 | -1.234 | 0.2172 | no | 0.0478 | yes | 0.5262 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.2344 | 2.097 | 0.4574 | 0.4277 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6004 | yes | 0.8376 | 0 | 0.715 | 4.358e-07 |
| EN | A | 2135 | 0.2343 | 2.095 | 0.4562 | 0.4282 | 0.9995 | 0.9991 | 0.5845 | 0.559 | 0.2795 | 1.945 | 0.05196 | yes | 0.6004 | yes | 0.8376 | 0 | 0.7146 | 4.259e-07 |
| RF | A | 2135 | 0.24 | 2.127 | 0.4799 | 0.4197 | 1.024 | 1.014 | -0.7443 | 0.4568 | 0.7716 | -0.1641 | 0.8697 | yes | 0.5788 | yes | 0.74 | 0 | 0.7322 | 7.978e-08 |
| EN | C | 2135 | 0.424 | 2.138 | 0.4608 | 0.4165 | 1.809 | 1.02 | -2.713 | 0.006727 | 0.9966 | -0.1211 | 0.9036 | yes | 0.1118 | yes | 0.8376 | 0.9836 | 1.293 | 0.9144 |
| RF | C | 2135 | 0.2091 | 1.805 | 0.448 | 0.5074 | 0.8921 | 0.8608 | 2.503 | 0.01238 | 0.006188 | 1.154 | 0.2488 | yes | 1 | yes | 1 | 0 | 0.6378 | 7.064e-08 |
| EN | D | 2135 | 0.7929 | 2.142 | 0.4221 | 0.4154 | 3.383 | 1.022 | -3.765 | 0.000171 | 0.9999 | -0.1201 | 0.9044 | no | 0.0478 | yes | 0.8376 | 3.044 | 2.419 | 0.9992 |
| RF | D | 2135 | 0.2465 | 2.954 | 0.482 | 0.194 | 1.052 | 1.408 | -0.4887 | 0.6251 | 0.6875 | -0.9106 | 0.3626 | yes | 0.6004 | yes | 0.6002 | 0 | 0.752 | 0.007327 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2135 | 0.715 | 4.933 | 8.716e-07 | 4.358e-07 | 0.7764 | 1.234 | 0.2172 | 0.1086 | 0.4746 | 0.7012 |
| EN_A vs PER_A | 2135 | 0.7146 | 4.938 | 8.518e-07 | 4.259e-07 | 0.7758 | 1.238 | 0.2159 | 0.1079 | 1 | 1 |
| RF_A vs PER_A | 2135 | 0.7322 | 5.259 | 1.596e-07 | 7.978e-08 | 0.7873 | 1.075 | 0.2827 | 0.1414 | 0.412 | 0.7012 |
| EN_A vs HAR_A | 2135 | 0.9995 | 0.5845 | 0.559 | 0.2795 | 0.9991 | 1.945 | 0.05196 | 0.02598 | 1 | 1 |
| RF_A vs HAR_A | 2135 | 1.024 | -0.7443 | 0.4568 | 0.7716 | 1.014 | -0.1641 | 0.8697 | 0.5652 | 0.412 | 0.7012 |
| RF_A vs EN_A | 2135 | 1.025 | -0.7607 | 0.4469 | 0.7765 | 1.015 | -0.1741 | 0.8618 | 0.5691 | 0.412 | 0.7012 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2135 | -0.1898 | -81 | 0.03092 | 12.88 | 0.2207 | 3.168 | 0.0007784 | 0.001557 |
| A->C | MSE | 2135 | -0.0428 | -2.042 | 0.3213 | 15.11 | 0.3641 | 0.6748 | 0.2499 | 0.4999 |
| A->D | QLIKE | 2135 | -0.5586 | -238.4 | -0.006496 | -2.707 | 0.5521 | 3.69 | 0.0001147 | 0.0002294 |
| A->D | MSE | 2135 | -0.04695 | -2.241 | -0.827 | -38.89 | -0.78 | -1.404 | 0.9198 | 0.1605 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1625 | 0.2309 | 1.484 | 1 | 0.9988 | 1.029 | 2.081 | 0.891 | 4.008 | 0.9322 |
| High RV (monthly RV > threshold) | 510 | 0.2455 | 1.143 | 1 | 1.001 | 1.009 | 0.9938 | 0.8952 | 1.508 | 1.41 |
| Normal days (target <= Q3 + 1.5 IQR) | 1961 | 0.1731 | 1.489 | 1 | 0.9966 | 1.071 | 2.32 | 0.9763 | 4.592 | 1.032 |
| Extreme days (target > Q3 + 1.5 IQR) | 174 | 0.9256 | 1.207 | 1 | 1.005 | 0.9257 | 0.7312 | 0.7146 | 0.8343 | 1.093 |
| Feb 2018 Volmageddon | 15 | 0.1773 | 1.688 | 1 | 1 | 1.622 | 0.5384 | 1.555 | 1.178 | 1.249 |
| COVID 2020 | 70 | 0.7576 | 1.136 | 1 | 1 | 0.9255 | 0.947 | 0.7357 | 0.8613 | 1.88 |
| 2022 bear market | 206 | 0.1418 | 1.276 | 1 | 0.9999 | 0.9988 | 0.6085 | 0.7547 | 1.922 | 0.8208 |
| Apr 2025 tariffs | 42 | 1.019 | 1.08 | 1 | 1 | 1.049 | 0.7383 | 0.7503 | 0.6463 | 0.7583 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.243 | 4 |
| HAR | A | 3.514 | 4 |
| EN | A | 3.515 | 4 |
| RF | A | 3.49 | 4 |
| EN | C | 2.965 | 4 |
| RF | C | 3.574 | 4 |
| EN | D | 1.794 | 4 |
| RF | D | 3.48 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.07283 | 1 |
| vrp | 0.06349 | 1 |
| negret_w | -0.05766 | 1 |
| vix9d_spread | 0.04611 | 1 |
| vix3m_spread | -0.04589 | 1 |
| negret_d | -0.04255 | 1 |
| es_C_d | 0.04202 | 1 |
| es_rsn_d | 0.04145 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.09735 |
| iv_term | 0.09313 |
| es_rsn_d | 0.07549 |
| vix3m_spread | 0.06158 |
| log_vxn | 0.05409 |
| rv_w | 0.05042 |
| es_rk_d | 0.0476 |
| es_C_d | 0.04582 |

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
| PER | A | 2109 | 0.5276 | 3.159 | 0.6147 | -0.475 | 1.528 | 1.529 | -1.849 | 0.06462 | 0.9677 | -1.345 | 0.1789 | yes | 0.2494 | yes | 0.3558 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3453 | 2.066 | 0.538 | 0.03546 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7858 | yes | 0.5814 | 0 | 0.6545 | 0.03231 |
| EN | A | 2109 | 0.3527 | 2.069 | 0.5452 | 0.03367 | 1.021 | 1.002 | -1.317 | 0.1878 | 0.9061 | -0.6748 | 0.4999 | yes | 0.5902 | yes | 0.5814 | 0 | 0.6685 | 0.03897 |
| RF | A | 2109 | 0.3842 | 1.624 | 0.5158 | 0.2419 | 1.113 | 0.786 | -1.802 | 0.0717 | 0.9642 | 1.124 | 0.2613 | yes | 0.5902 | yes | 1 | 0 | 0.7283 | 0.04258 |
| EN | C | 2109 | 0.338 | 1.82 | 0.5194 | 0.15 | 0.9787 | 0.8813 | 0.2876 | 0.7737 | 0.3868 | 0.9695 | 0.3324 | yes | 1 | yes | 0.7108 | 0 | 0.6406 | 0.05607 |
| RF | C | 2109 | 0.3921 | 1.927 | 0.5609 | 0.1004 | 1.135 | 0.9327 | -1.981 | 0.04773 | 0.9761 | 0.6284 | 0.5298 | yes | 0.268 | yes | 0.5814 | 0 | 0.7431 | 0.0503 |
| EN | D | 2109 | 0.4626 | 1.76 | 0.474 | 0.1781 | 1.34 | 0.8521 | -1.906 | 0.05675 | 0.9716 | 1.068 | 0.2857 | yes | 0.268 | yes | 0.7108 | 0.04742 | 0.8769 | 0.2265 |
| RF | D | 2109 | 0.4131 | 2.007 | 0.4925 | 0.06301 | 1.196 | 0.9714 | -1.232 | 0.2182 | 0.8909 | 0.1914 | 0.8482 | yes | 0.5902 | yes | 0.7108 | 0 | 0.7831 | 0.04472 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2109 | 0.6545 | 1.849 | 0.06462 | 0.03231 | 0.6539 | 1.345 | 0.1789 | 0.08944 | 1 | 0.296 |
| EN_A vs PER_A | 2109 | 0.6685 | 1.764 | 0.07794 | 0.03897 | 0.6551 | 1.34 | 0.1805 | 0.09023 | 0.216 | 0.2796 |
| RF_A vs PER_A | 2109 | 0.7283 | 1.722 | 0.08516 | 0.04258 | 0.514 | 1.34 | 0.1802 | 0.09012 | 0.1274 | 1 |
| EN_A vs HAR_A | 2109 | 1.021 | -1.317 | 0.1878 | 0.9061 | 1.002 | -0.6748 | 0.4999 | 0.7501 | 0.216 | 0.2796 |
| RF_A vs HAR_A | 2109 | 1.113 | -1.802 | 0.0717 | 0.9642 | 0.786 | 1.124 | 0.2613 | 0.1306 | 0.1274 | 1 |
| RF_A vs EN_A | 2109 | 1.089 | -1.361 | 0.1738 | 0.9131 | 0.7846 | 1.134 | 0.2571 | 0.1286 | 0.1274 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2109 | 0.01476 | 4.185 | -0.007822 | -2.036 | -0.02258 | -0.6315 | 0.7361 | 0.5278 |
| A->C | MSE | 2109 | 0.249 | 12.03 | -0.303 | -18.66 | -0.552 | -1.282 | 0.9 | 0.2 |
| A->D | QLIKE | 2109 | -0.1099 | -31.16 | -0.02891 | -7.524 | 0.081 | 1.124 | 0.1306 | 0.2611 |
| A->D | MSE | 2109 | 0.3093 | 14.95 | -0.383 | -23.59 | -0.6923 | -1.094 | 0.863 | 0.274 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1599 | 0.3573 | 1.58 | 1 | 1.022 | 1.155 | 0.9634 | 1.104 | 1.414 | 1.067 |
| High RV (monthly RV > threshold) | 510 | 0.3079 | 1.339 | 1 | 1.018 | 0.957 | 1.034 | 1.249 | 1.068 | 1.668 |
| Normal days (target <= Q3 + 1.5 IQR) | 1971 | 0.1803 | 1.499 | 1 | 1.036 | 1.154 | 1.097 | 1.111 | 1.431 | 0.9847 |
| Extreme days (target > Q3 + 1.5 IQR) | 138 | 2.702 | 1.556 | 1 | 1.008 | 1.073 | 0.866 | 1.158 | 1.252 | 1.398 |
| Feb 2018 Volmageddon | 14 | 0.08629 | 0.9438 | 1 | 1 | 2.635 | 2.296 | 2.988 | 2.055 | 2.284 |
| COVID 2020 | 70 | 1.753 | 1.953 | 1 | 1 | 0.7477 | 0.9048 | 1.071 | 1.085 | 1.833 |
| 2022 bear market | 206 | 0.1498 | 1.499 | 1 | 0.9896 | 1.173 | 0.7717 | 1.047 | 1.577 | 1.279 |
| Apr 2025 tariffs | 42 | 0.5524 | 1.627 | 1 | 1 | 1.155 | 0.6028 | 0.8524 | 0.4376 | 0.5893 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.629 | 4 |
| HAR | A | 3.18 | 4 |
| EN | A | 3.171 | 4 |
| RF | A | 3.059 | 4 |
| EN | C | 3.219 | 4 |
| RF | C | 3.06 | 4 |
| EN | D | 2.79 | 4 |
| RF | D | 2.965 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 87.9 | 1.781 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 48.71 | 0.9432 | 33.75 | 0.4719 | 0.7368 | -0.1132 | 0.8317 |
| HAR_A | 2109 | 59.97 | 1.629 | 52.55 | 1.106 | 0.6567 | 0.04356 | 0.7269 |
| EN_A | 2109 | 55.69 | 1.522 | 43.94 | 0.9303 | 0.6254 | 0.04688 | 0.6908 |
| RF_A | 2109 | 107.1 | 3.327 | 105.4 | 2.896 | 0.7055 | 0.3103 | 0.7871 |
| EN_C | 2109 | 54.57 | 1.242 | 30.8 | 0.4696 | 0.6705 | 0.09918 | 0.7805 |
| RF_C | 2109 | 15.72 | 0.3411 | 0.9519 | 0.01435 | 0.6567 | 0.06181 | 0.7696 |
| EN_D | 2109 | 72.8 | 1.475 | 52.03 | 0.7686 | 0.7255 | 0.1169 | 0.8658 |
| RF_D | 2109 | 63.15 | 1.293 | 43.55 | 0.6473 | 0.6875 | 0.09512 | 0.8184 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.06051 | 1 |
| iv_skew_1m | 0.04513 | 1 |
| negret_w | -0.03754 | 1 |
| vix9d_spread | 0.03607 | 1 |
| es_J_w | 0.03535 | 0.8889 |
| iv_term | -0.03369 | 1 |
| vrp | 0.03048 | 0.8889 |
| es_rsp_d | 0.02753 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.06878 |
| negret_w | 0.04346 |
| es_rsn_d | 0.04241 |
| iv_skew_1m | 0.0385 |
| log_vxn | 0.03848 |
| log_vix | 0.0375 |
| parkinson_w | 0.036 |
| iv_atm_1m | 0.03267 |

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
| SPY | 1 | RF_C | 0.8424 | 4.43e-09 | yes | yes | 0.5757 | yes | EN_C | NaN | NaN |
| SPY | 5 | RF_C | 0.8921 | 0.006188 | yes | yes | 0.6378 | yes | EN_C EN_D | NaN | NaN |
| SPY | 22 | EN_C | 0.9787 | 0.3868 | yes | no | 0.6406 | no | EN_C RF_C EN_D | 30.8 | 0.09918 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.463 | 1.15 | 2.064e-16 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6834 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 0.2102 | yes | 0.6836 |
| SPY | 1 | all-model common days | RF | A | 0.9891 | 1.091 | 0.5811 | yes | 0.676 |
| SPY | 1 | all-model common days | EN | C | 1.378 | 0.9993 | 0.02389 | yes | 0.9417 |
| SPY | 1 | all-model common days | RF | C | 0.8424 | 0.7824 | 8.86e-09 | yes | 0.5757 |
| SPY | 1 | all-model common days | EN | D | 1.118 | 1.017 | 0.1621 | yes | 0.764 |
| SPY | 1 | all-model common days | RF | D | 0.8967 | 1.296 | 0.01626 | yes | 0.6128 |
| SPY | 5 | all-model common days | PER | A | 1.399 | 1.288 | 8.716e-07 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.715 |
| SPY | 5 | all-model common days | EN | A | 0.9995 | 0.9991 | 0.559 | yes | 0.7146 |
| SPY | 5 | all-model common days | RF | A | 1.024 | 1.014 | 0.4568 | yes | 0.7322 |
| SPY | 5 | all-model common days | EN | C | 1.809 | 1.02 | 0.006727 | yes | 1.293 |
| SPY | 5 | all-model common days | RF | C | 0.8921 | 0.8608 | 0.01238 | yes | 0.6378 |
| SPY | 5 | all-model common days | EN | D | 3.383 | 1.022 | 0.000171 | no | 2.419 |
| SPY | 5 | all-model common days | RF | D | 1.052 | 1.408 | 0.6251 | yes | 0.752 |
| SPY | 22 | all-model common days | PER | A | 1.528 | 1.529 | 0.06462 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6545 |
| SPY | 22 | all-model common days | EN | A | 1.021 | 1.002 | 0.1878 | yes | 0.6685 |
| SPY | 22 | all-model common days | RF | A | 1.113 | 0.786 | 0.0717 | yes | 0.7283 |
| SPY | 22 | all-model common days | EN | C | 0.9787 | 0.8813 | 0.7737 | yes | 0.6406 |
| SPY | 22 | all-model common days | RF | C | 1.135 | 0.9327 | 0.04773 | yes | 0.7431 |
| SPY | 22 | all-model common days | EN | D | 1.34 | 0.8521 | 0.05675 | yes | 0.8769 |
| SPY | 22 | all-model common days | RF | D | 1.196 | 0.9714 | 0.2182 | yes | 0.7831 |

