# Results: dev period, scenario "rk"

Generated 2026-10-16 15:52 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.1924 | 1.001 | 0.2899 | 0.3201 | 0.9721 | 1.234 | 0.3352 | 0.7376 | 0.3688 | -1.247 | 0.2129 | yes | 0.1198 | yes | 0.3278 | 0 | 1 | NaN |
| HAR | A | 755 | 0.198 | 0.8108 | 0.3028 | 0.4491 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.004 | yes | 0.4488 | 0 | 1.029 | 0.6312 |
| EN | A | 755 | 0.1988 | 0.8109 | 0.3033 | 0.449 | 1.004 | 1 | -5.806 | 9.416e-09 | 1 | -5.823 | 8.547e-09 | no | 0.0034 | yes | 0.4488 | 0 | 1.033 | 0.6494 |
| RF | A | 755 | 0.1734 | 0.9027 | 0.2966 | 0.3866 | 0.876 | 1.113 | 2.902 | 0.003816 | 0.001908 | -2.066 | 0.03913 | yes | 0.1984 | yes | 0.1174 | 0 | 0.9012 | 0.05844 |
| EN | C | 755 | 0.1649 | 0.761 | 0.3024 | 0.4829 | 0.8327 | 0.9386 | 2 | 0.04588 | 0.02294 | 0.683 | 0.4948 | yes | 0.1638 | yes | 0.3278 | 0.9272 | 0.8566 | 0.1297 |
| RF | C | 755 | 0.1398 | 0.6645 | 0.2679 | 0.5485 | 0.7064 | 0.8196 | 4.203 | 2.951e-05 | 1.476e-05 | 0.9625 | 0.3361 | yes | 0.8066 | yes | 0.5544 | 0 | 0.7267 | 0.01087 |
| EN | D | 755 | 0.1522 | 0.7211 | 0.284 | 0.51 | 0.769 | 0.8894 | 2.935 | 0.00344 | 0.00172 | 1.153 | 0.2492 | yes | 0.1984 | yes | 0.4932 | 0.2649 | 0.791 | 0.04821 |
| RF | D | 755 | 0.1384 | 0.6493 | 0.2737 | 0.5588 | 0.699 | 0.8009 | 3.447 | 0.0005977 | 0.0002989 | 1.12 | 0.2631 | yes | 1 | yes | 1 | 0 | 0.7191 | 0.02406 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.029 | -0.3352 | 0.7376 | 0.6312 | 0.8103 | 1.247 | 0.2129 | 0.1065 | 0.3012 | 1 |
| EN_A vs PER_A | 755 | 1.033 | -0.3839 | 0.7011 | 0.6494 | 0.8104 | 1.246 | 0.2132 | 0.1066 | 0.2674 | 0.3836 |
| RF_A vs PER_A | 755 | 0.9012 | 1.57 | 0.1169 | 0.05844 | 0.9022 | 0.7018 | 0.483 | 0.2415 | 1 | 0.3836 |
| EN_A vs HAR_A | 755 | 1.004 | -5.806 | 9.416e-09 | 1 | 1 | -5.823 | 8.547e-09 | 1 | 0.2674 | 0.3836 |
| RF_A vs HAR_A | 755 | 0.876 | 2.902 | 0.003816 | 0.001908 | 1.113 | -2.066 | 0.03913 | 0.9804 | 1 | 0.3836 |
| RF_A vs EN_A | 755 | 0.8724 | 2.972 | 0.00305 | 0.001525 | 1.113 | -2.064 | 0.0394 | 0.9803 | 1 | 0.3836 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.03394 | 17.07 | 0.03358 | 19.36 | -0.0003592 | -0.02859 | 0.5114 | 0.9772 |
| A->C | MSE | 755 | 0.04986 | 6.149 | 0.2382 | 26.39 | 0.1883 | 1.871 | 0.03088 | 0.06175 |
| A->D | QLIKE | 755 | 0.04657 | 23.42 | 0.03505 | 20.21 | -0.01152 | -0.8141 | 0.7921 | 0.4158 |
| A->D | MSE | 755 | 0.08978 | 11.07 | 0.2534 | 28.07 | 0.1636 | 1.778 | 0.03788 | 0.07576 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2139 | 0.9634 | 1 | 1.004 | 0.8595 | 0.8243 | 0.6928 | 0.7623 | 0.6837 |
| High RV (monthly RV > threshold) | 100 | 0.09382 | 1.102 | 1 | 1 | 1.123 | 0.9587 | 0.9093 | 0.8681 | 0.9271 |
| Normal days (target <= Q3 + 1.5 IQR) | 674 | 0.1659 | 0.8858 | 1 | 1.006 | 0.7579 | 0.9239 | 0.7375 | 0.8473 | 0.7945 |
| Extreme days (target > Q3 + 1.5 IQR) | 81 | 0.465 | 1.228 | 1 | 0.9997 | 1.227 | 0.5621 | 0.614 | 0.5363 | 0.4156 |
| Aug 2015 devaluation | 54 | 0.2852 | 0.8874 | 1 | 1 | 1.138 | 0.5366 | 0.4702 | 0.5979 | 0.5001 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.553 | 4 |
| HAR | A | 3.607 | 4 |
| EN | A | 3.606 | 4 |
| RF | A | 3.626 | 4 |
| EN | C | 3.676 | 4 |
| RF | C | 3.725 | 4 |
| EN | D | 3.699 | 4 |
| RF | D | 3.74 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.06488 | 1 |
| parkinson_d | 0.06147 | 1 |
| vix9d_spread | 0.06016 | 1 |
| rv_d | 0.05692 | 1 |
| es_rk_d | 0.05692 | 1 |
| es_C_d | 0.05564 | 1 |
| negret_d | -0.04643 | 1 |
| overnight_d | 0.04434 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_rsn_d | 0.1099 |
| vix9d_spread | 0.09532 |
| es_C_d | 0.0767 |
| rv_d | 0.07189 |
| log_rvx | 0.06288 |
| vrp | 0.0573 |
| log_vxn | 0.05212 |
| es_rk_d | 0.04222 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_D | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_D | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_D | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_D | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_D | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_D | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_D | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.235 | 0.7607 | 0.3436 | 0.1671 | 0.8906 | 1.393 | 1.009 | 0.3133 | 0.1567 | -1.362 | 0.1735 | yes | 0.3818 | yes | 0.3342 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2639 | 0.5461 | 0.3599 | 0.4021 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0016 | yes | 0.3342 | 0 | 1.123 | 0.8433 |
| EN | A | 755 | 0.2639 | 0.5461 | 0.3599 | 0.4021 | 1 | 1 | -4.343 | 1.601e-05 | 1 | 0.7162 | 0.4741 | no | 0.0016 | yes | 0.3342 | 0 | 1.123 | 0.8434 |
| RF | A | 755 | 0.2029 | 0.5369 | 0.3137 | 0.4122 | 0.7689 | 0.9832 | 4.518 | 7.253e-06 | 3.626e-06 | 0.2241 | 0.8228 | yes | 0.8916 | yes | 0.3342 | 0 | 0.8634 | 0.05183 |
| EN | C | 755 | 0.1984 | 0.4629 | 0.319 | 0.4932 | 0.7517 | 0.8477 | 3.762 | 0.0001815 | 9.073e-05 | 1.495 | 0.1353 | yes | 0.8916 | yes | 1 | 0 | 0.8441 | 0.1332 |
| RF | C | 755 | 0.2036 | 0.4691 | 0.3162 | 0.4864 | 0.7715 | 0.8591 | 3.558 | 0.0003971 | 0.0001986 | 1.367 | 0.172 | yes | 0.8352 | yes | 0.9768 | 0 | 0.8663 | 0.141 |
| EN | D | 755 | 0.1896 | 0.465 | 0.3076 | 0.4909 | 0.7183 | 0.8515 | 4.656 | 3.811e-06 | 1.906e-06 | 1.933 | 0.05361 | yes | 1 | yes | 0.9768 | 0 | 0.8066 | 0.06987 |
| RF | D | 755 | 0.199 | 0.4701 | 0.3102 | 0.4854 | 0.7539 | 0.8608 | 4.685 | 3.326e-06 | 1.663e-06 | 1.383 | 0.167 | yes | 0.8916 | yes | 0.9768 | 0 | 0.8465 | 0.09721 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.123 | -1.009 | 0.3133 | 0.8433 | 0.7178 | 1.362 | 0.1735 | 0.08677 | 0.084 | 0.7892 |
| EN_A vs PER_A | 755 | 1.123 | -1.009 | 0.3133 | 0.8434 | 0.7178 | 1.362 | 0.1735 | 0.08677 | 0.084 | 0.7892 |
| RF_A vs PER_A | 755 | 0.8634 | 1.629 | 0.1037 | 0.05183 | 0.7057 | 1.351 | 0.177 | 0.08848 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1 | -4.343 | 1.601e-05 | 1 | 1 | 0.7162 | 0.4741 | 0.237 | 0.084 | 0.7892 |
| RF_A vs HAR_A | 755 | 0.7689 | 4.518 | 7.253e-06 | 3.626e-06 | 0.9832 | 0.2241 | 0.8228 | 0.4114 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.7689 | 4.518 | 7.25e-06 | 3.625e-06 | 0.9832 | 0.224 | 0.8228 | 0.4114 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.06553 | 24.83 | -0.0006814 | -0.3358 | -0.06621 | -4.042 | 1 | 5.849e-05 |
| A->C | MSE | 755 | 0.08318 | 15.23 | 0.06777 | 12.62 | -0.0154 | -0.4678 | 0.68 | 0.6401 |
| A->D | QLIKE | 755 | 0.07433 | 28.17 | 0.003959 | 1.951 | -0.07037 | -4.629 | 1 | 4.321e-06 |
| A->D | MSE | 755 | 0.08111 | 14.85 | 0.06683 | 12.45 | -0.01429 | -0.572 | 0.7163 | 0.5675 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2885 | 0.8838 | 1 | 1 | 0.7664 | 0.7472 | 0.7741 | 0.7177 | 0.7557 |
| High RV (monthly RV > threshold) | 100 | 0.103 | 1.015 | 1 | 1 | 0.8144 | 0.8348 | 0.7242 | 0.7301 | 0.7213 |
| Normal days (target <= Q3 + 1.5 IQR) | 666 | 0.2089 | 0.6952 | 1 | 1 | 0.6473 | 0.7723 | 0.7342 | 0.7205 | 0.7151 |
| Extreme days (target > Q3 + 1.5 IQR) | 89 | 0.6755 | 1.343 | 1 | 1 | 1.05 | 0.704 | 0.8576 | 0.7134 | 0.8437 |
| Aug 2015 devaluation | 54 | 0.6982 | 1.245 | 1 | 1 | 1.019 | 0.8029 | 1.049 | 0.8296 | 0.9969 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.458 | 4 |
| HAR | A | 3.481 | 4 |
| EN | A | 3.481 | 4 |
| RF | A | 3.566 | 4 |
| EN | C | 3.606 | 4 |
| RF | C | 3.58 | 4 |
| EN | D | 3.619 | 4 |
| RF | D | 3.59 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.05048 | 1 |
| iv_atm_1m | 0.04542 | 1 |
| negret_w | -0.04313 | 1 |
| iv_skew_1m | 0.04166 | 1 |
| vix9d_spread | 0.03738 | 1 |
| log_vix | 0.03672 | 1 |
| log_vxn | 0.03617 | 1 |
| es_rsn_d | 0.03482 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.07456 |
| iv_skew_1m | 0.06137 |
| log_vxn | 0.05995 |
| log_rvx | 0.05913 |
| iv_atm_1m | 0.05747 |
| log_vix | 0.04693 |
| es_rsn_w | 0.04553 |
| es_rk_d | 0.0426 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_D | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_D | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_D | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_D | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_D | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_D | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_D | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2736 | 0.4981 | 0.4025 | 0.1088 | 0.9104 | 1.358 | 0.3913 | 0.6957 | 0.3479 | -1.438 | 0.1509 | yes | 1 | yes | 0.3148 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3005 | 0.3668 | 0.439 | 0.3437 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7032 | yes | 0.6056 | 0 | 1.098 | 0.6521 |
| EN | A | 755 | 0.3417 | 0.3939 | 0.4741 | 0.2953 | 1.137 | 1.074 | -3.257 | 0.001176 | 0.9994 | -3.295 | 0.001031 | yes | 0.2352 | yes | 0.3148 | 0 | 1.249 | 0.8083 |
| RF | A | 755 | 0.2923 | 0.3862 | 0.4228 | 0.3091 | 0.9725 | 1.053 | 0.5988 | 0.5495 | 0.2747 | -0.6391 | 0.523 | yes | 0.7454 | yes | 0.6056 | 0 | 1.068 | 0.6176 |
| EN | C | 755 | 0.3211 | 0.3402 | 0.3992 | 0.3913 | 1.068 | 0.9274 | -0.6541 | 0.5132 | 0.7434 | 1.124 | 0.2613 | yes | 0.336 | yes | 1 | 0 | 1.173 | 0.7961 |
| RF | C | 755 | 0.3109 | 0.3405 | 0.4146 | 0.3908 | 1.034 | 0.9282 | -0.7349 | 0.4626 | 0.7687 | 1.291 | 0.1972 | yes | 0.4632 | yes | 0.9858 | 0 | 1.136 | 0.7134 |
| EN | D | 755 | 0.3461 | 0.3619 | 0.4129 | 0.3524 | 1.152 | 0.9867 | -1.133 | 0.2576 | 0.8712 | 0.1919 | 0.8479 | yes | 0.2352 | yes | 0.6056 | 0 | 1.265 | 0.9042 |
| RF | D | 755 | 0.4072 | 0.615 | 0.5735 | -0.1004 | 1.355 | 1.677 | -2.607 | 0.009313 | 0.9953 | -2.007 | 0.04507 | no | 0.0628 | yes | 0.1468 | 0 | 1.488 | 0.956 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.098 | -0.3913 | 0.6957 | 0.6521 | 0.7365 | 1.438 | 0.1509 | 0.07543 | 0.7032 | 1 |
| EN_A vs PER_A | 755 | 1.249 | -0.8723 | 0.3833 | 0.8083 | 0.7908 | 1.098 | 0.2728 | 0.1364 | 0.1328 | 0.3968 |
| RF_A vs PER_A | 755 | 1.068 | -0.2994 | 0.7648 | 0.6176 | 0.7753 | 1.189 | 0.235 | 0.1175 | 0.7454 | 0.5184 |
| EN_A vs HAR_A | 755 | 1.137 | -3.257 | 0.001176 | 0.9994 | 1.074 | -3.295 | 0.001031 | 0.9995 | 0.1328 | 0.3968 |
| RF_A vs HAR_A | 755 | 0.9725 | 0.5988 | 0.5495 | 0.2747 | 1.053 | -0.6391 | 0.523 | 0.7385 | 0.7454 | 0.5184 |
| RF_A vs EN_A | 755 | 0.8554 | 2.268 | 0.02361 | 0.0118 | 0.9804 | 0.2361 | 0.8134 | 0.4067 | 0.7454 | 0.5184 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.0206 | 6.031 | -0.01864 | -6.378 | -0.03924 | -1.097 | 0.8635 | 0.2731 |
| A->C | MSE | 755 | 0.05367 | 13.62 | 0.04567 | 11.83 | -0.007995 | -0.2516 | 0.5993 | 0.8014 |
| A->D | QLIKE | 755 | -0.004477 | -1.31 | -0.1149 | -39.33 | -0.1105 | -1.694 | 0.9546 | 0.09076 |
| A->D | MSE | 755 | 0.03194 | 8.108 | -0.2288 | -59.26 | -0.2608 | -1.966 | 0.9752 | 0.04963 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.321 | 0.8413 | 1 | 1.148 | 0.9913 | 1.106 | 1.064 | 1.196 | 1.395 |
| High RV (monthly RV > threshold) | 100 | 0.1661 | 1.785 | 1 | 1 | 0.7339 | 0.5871 | 0.66 | 0.5854 | 0.8517 |
| Normal days (target <= Q3 + 1.5 IQR) | 669 | 0.2588 | 0.6238 | 1 | 1.179 | 0.9146 | 0.9593 | 1.013 | 1.012 | 1.41 |
| Extreme days (target > Q3 + 1.5 IQR) | 86 | 0.6249 | 1.834 | 1 | 1 | 1.159 | 1.42 | 1.102 | 1.603 | 1.178 |
| Aug 2015 devaluation | 54 | 0.2932 | 2.027 | 1 | 1 | 0.7593 | 0.9808 | 0.8135 | 1.127 | 0.8756 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.391 | 4 |
| HAR | A | 3.443 | 4 |
| EN | A | 3.385 | 4 |
| RF | A | 3.438 | 4 |
| EN | C | 3.374 | 4 |
| RF | C | 3.419 | 4 |
| EN | D | 3.319 | 4 |
| RF | D | 3.283 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 74.44 | 4.2 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 27.99 | 1.55 | 27.71 | 1.397 | 0.7245 | 0.1021 | 0.8411 |
| HAR_A | 755 | 27.91 | 1.988 | 32.98 | 2.375 | 0.5298 | 0.343 | 0.6093 |
| EN_A | 755 | 15.68 | 1.002 | 19.41 | 1.227 | 0.4596 | 0.3233 | 0.5391 |
| RF_A | 755 | 40.87 | 3.185 | 43.9 | 3.33 | 0.6119 | 0.2403 | 0.6914 |
| EN_C | 755 | 32.95 | 1.59 | 37.87 | 1.704 | 0.5841 | 0.3694 | 0.7033 |
| RF_C | 755 | 15.76 | 0.7765 | 19.83 | 0.9105 | 0.5099 | 0.3764 | 0.6 |
| EN_D | 755 | 26.61 | 1.253 | 31.43 | 1.379 | 0.5536 | 0.3144 | 0.6702 |
| RF_D | 755 | 3.339 | 0.168 | 3.669 | 0.1693 | 0.445 | 0.2427 | 0.506 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_atm_1m | 0.08881 | 1 |
| iv_skew_1m | 0.04631 | 1 |
| parkinson_w | 0.0358 | 1 |
| news_sent | -0.03527 | 0.6667 |
| es_C_m | 0.02165 | 0.6667 |
| iv_term | -0.02162 | 0.6667 |
| rv_m | 0.02142 | 0.6667 |
| vix9d_spread | 0.02107 | 0.6667 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1355 |
| iv_skew_1m | 0.07772 |
| log_vix | 0.04099 |
| log_vxn | 0.03954 |
| stlfsi4 | 0.03798 |
| nfci | 0.03132 |
| es_J_m | 0.03092 |
| parkinson_w | 0.03073 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_D | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_D | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_D | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_D | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_D | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_D | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_D | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | RF_D | 0.699 | 0.0002989 | yes | yes | 0.7191 | yes | HAR_A EN_A RF_A EN_C | NaN | NaN |
| ES | 5 | EN_D | 0.7183 | 1.906e-06 | yes | yes | 0.8066 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.9725 | 0.2747 | yes | no | 1.068 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 43.9 | 0.2403 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 0.9721 | 1.234 | 0.7376 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.029 |
| ES | 1 | all-model common days | EN | A | 1.004 | 1 | 9.416e-09 | no | 1.033 |
| ES | 1 | all-model common days | RF | A | 0.876 | 1.113 | 0.003816 | yes | 0.9012 |
| ES | 1 | all-model common days | EN | C | 0.8327 | 0.9386 | 0.04588 | yes | 0.8566 |
| ES | 1 | all-model common days | RF | C | 0.7064 | 0.8196 | 2.951e-05 | yes | 0.7267 |
| ES | 1 | all-model common days | EN | D | 0.769 | 0.8894 | 0.00344 | yes | 0.791 |
| ES | 1 | all-model common days | RF | D | 0.699 | 0.8009 | 0.0005977 | yes | 0.7191 |
| ES | 5 | all-model common days | PER | A | 0.8906 | 1.393 | 0.3133 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.123 |
| ES | 5 | all-model common days | EN | A | 1 | 1 | 1.601e-05 | no | 1.123 |
| ES | 5 | all-model common days | RF | A | 0.7689 | 0.9832 | 7.253e-06 | yes | 0.8634 |
| ES | 5 | all-model common days | EN | C | 0.7517 | 0.8477 | 0.0001815 | yes | 0.8441 |
| ES | 5 | all-model common days | RF | C | 0.7715 | 0.8591 | 0.0003971 | yes | 0.8663 |
| ES | 5 | all-model common days | EN | D | 0.7183 | 0.8515 | 3.811e-06 | yes | 0.8066 |
| ES | 5 | all-model common days | RF | D | 0.7539 | 0.8608 | 3.326e-06 | yes | 0.8465 |
| ES | 22 | all-model common days | PER | A | 0.9104 | 1.358 | 0.6957 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.098 |
| ES | 22 | all-model common days | EN | A | 1.137 | 1.074 | 0.001176 | yes | 1.249 |
| ES | 22 | all-model common days | RF | A | 0.9725 | 1.053 | 0.5495 | yes | 1.068 |
| ES | 22 | all-model common days | EN | C | 1.068 | 0.9274 | 0.5132 | yes | 1.173 |
| ES | 22 | all-model common days | RF | C | 1.034 | 0.9282 | 0.4626 | yes | 1.136 |
| ES | 22 | all-model common days | EN | D | 1.152 | 0.9867 | 0.2576 | yes | 1.265 |
| ES | 22 | all-model common days | RF | D | 1.355 | 1.677 | 0.009313 | no | 1.488 |

