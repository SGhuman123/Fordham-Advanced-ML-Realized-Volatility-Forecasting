# Results: test period, scenario "holdrop"

Generated 2026-10-21 23:43 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.2328 | 6.102 | 0.7017 | 0.5815 | 1.212 | 1.124 | -6.074 | 1.469e-09 | 1 | -0.8874 | 0.375 | yes | 0.1004 | yes | 0.7016 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.192 | 5.429 | 0.6712 | 0.6277 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7638 | yes | 0.7016 | 0 | 0.8248 | 7.344e-10 |
| EN | A | 2197 | 0.1923 | 5.414 | 0.671 | 0.6287 | 1.001 | 0.9972 | -0.2511 | 0.8017 | 0.5991 | 1.031 | 0.3026 | yes | 0.7638 | yes | 1 | 0 | 0.8257 | 2.652e-09 |
| RF | A | 2197 | 0.2197 | 11.15 | 0.8164 | 0.2355 | 1.144 | 2.053 | -1.498 | 0.1342 | 0.9329 | -1.272 | 0.2035 | yes | 0.302 | yes | 0.3002 | 0 | 0.9436 | 0.2518 |
| EN | C | 2197 | 0.2948 | 7.929 | 0.725 | 0.4562 | 1.535 | 1.461 | -3.401 | 0.0006838 | 0.9997 | -1.062 | 0.2882 | yes | 0.1004 | yes | 0.6584 | 1.73 | 1.266 | 0.9765 |
| RF | C | 2197 | 0.1942 | 9.45 | 0.732 | 0.3518 | 1.011 | 1.741 | -0.1691 | 0.8657 | 0.5671 | -1.014 | 0.3107 | yes | 0.7638 | yes | 0.6584 | 0 | 0.8342 | 0.004973 |
| EN | D | 2197 | 0.2031 | 6.58 | 0.6798 | 0.5487 | 1.058 | 1.212 | -0.993 | 0.3208 | 0.8396 | -0.8565 | 0.3918 | yes | 0.5654 | yes | 0.7016 | 0.6827 | 0.8722 | 0.01217 |
| RF | D | 2197 | 0.1849 | 9.411 | 0.723 | 0.3545 | 0.9629 | 1.734 | 0.641 | 0.5216 | 0.2608 | -1.053 | 0.2926 | yes | 1 | yes | 0.5754 | 0 | 0.7942 | 0.0001389 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2197 | 0.8248 | 6.074 | 1.469e-09 | 7.344e-10 | 0.8896 | 0.8874 | 0.375 | 0.1875 | 1 | 0.4108 |
| EN_A vs PER_A | 2197 | 0.8257 | 5.861 | 5.303e-09 | 2.652e-09 | 0.8872 | 0.903 | 0.3666 | 0.1833 | 0.8258 | 1 |
| RF_A vs PER_A | 2197 | 0.9436 | 0.6689 | 0.5037 | 0.2518 | 1.827 | -1.073 | 0.2836 | 0.8582 | 0.1938 | 0.4108 |
| EN_A vs HAR_A | 2197 | 1.001 | -0.2511 | 0.8017 | 0.5991 | 0.9972 | 1.031 | 0.3026 | 0.1513 | 0.8258 | 1 |
| RF_A vs HAR_A | 2197 | 1.144 | -1.498 | 0.1342 | 0.9329 | 2.053 | -1.272 | 0.2035 | 0.8983 | 0.1938 | 0.4108 |
| RF_A vs EN_A | 2197 | 1.143 | -1.481 | 0.1387 | 0.9306 | 2.059 | -1.276 | 0.2023 | 0.8989 | 0.1938 | 0.4108 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2197 | -0.1026 | -53.36 | 0.02548 | 11.6 | 0.1281 | 4.241 | 1.159e-05 | 2.318e-05 |
| A->C | MSE | 2197 | -2.515 | -46.46 | 1.696 | 15.22 | 4.212 | 1.449 | 0.07369 | 0.1474 |
| A->D | QLIKE | 2197 | -0.01084 | -5.637 | 0.03479 | 15.83 | 0.04562 | 3.222 | 0.000645 | 0.00129 |
| A->D | MSE | 2197 | -1.166 | -21.54 | 1.736 | 15.57 | 2.902 | 1.411 | 0.07918 | 0.1584 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1457 | 0.1939 | 1.231 | 1 | 1.008 | 0.9938 | 1.78 | 0.9765 | 1.149 | 0.9275 |
| High RV (monthly RV > threshold) | 740 | 0.1883 | 1.175 | 1 | 0.9872 | 1.449 | 1.039 | 1.082 | 0.8722 | 1.035 |
| Normal days (target <= Q3 + 1.5 IQR) | 2008 | 0.1599 | 1.299 | 1 | 1.001 | 1.057 | 1.75 | 1.031 | 1.143 | 0.9766 |
| Extreme days (target > Q3 + 1.5 IQR) | 189 | 0.5333 | 0.9368 | 1 | 0.9999 | 1.421 | 0.8513 | 0.9491 | 0.7849 | 0.9192 |
| Feb 2018 Volmageddon | 43 | 0.3875 | 0.9715 | 1 | 1 | 0.9964 | 0.6477 | 0.9656 | 0.7048 | 0.9481 |
| COVID 2020 | 70 | 0.2227 | 0.8006 | 1 | 1 | 4.431 | 2.068 | 2.846 | 1.454 | 2.525 |
| 2022 bear market | 209 | 0.1634 | 1.178 | 1 | 1 | 1.05 | 1.392 | 0.7034 | 0.7327 | 0.7086 |
| Apr 2025 tariffs | 42 | 0.4477 | 0.9607 | 1 | 0.9207 | 1.355 | 0.7259 | 0.5989 | 0.6617 | 0.704 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.48 | 4 |
| HAR | A | 3.608 | 4 |
| EN | A | 3.609 | 4 |
| RF | A | 3.528 | 4 |
| EN | C | 3.332 | 4 |
| RF | C | 3.608 | 4 |
| EN | D | 3.575 | 4 |
| RF | D | 3.623 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1133 | 1 |
| es_rsn_d | 0.1101 | 1 |
| vix9d_spread | 0.1067 | 1 |
| es_C_d | 0.1029 | 1 |
| es_rk_d | 0.09946 | 1 |
| negret_w | -0.09869 | 1 |
| rv_d | 0.0968 | 1 |
| overnight_d | 0.09176 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2255 |
| es_C_d | 0.1031 |
| negret_w | 0.09482 |
| iv_term | 0.09322 |
| es_rsn_d | 0.08571 |
| rv_d | 0.07792 |
| es_rk_d | 0.05542 |
| vix3m_spread | 0.0376 |

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
| PER | A | 2193 | 0.2836 | 6.39 | 0.78 | 0.4568 | 1.312 | 1.13 | -4.277 | 1.975e-05 | 1 | -0.5206 | 0.6027 | yes | 0.2756 | yes | 0.6914 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.2162 | 5.653 | 0.7263 | 0.5194 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 0.6914 | 0 | 0.7624 | 9.877e-06 |
| EN | A | 2193 | 0.2164 | 5.639 | 0.7245 | 0.5206 | 1.001 | 0.9976 | -0.2504 | 0.8023 | 0.5989 | 0.4633 | 0.6432 | yes | 0.8358 | yes | 1 | 0 | 0.763 | 1.31e-05 |
| RF | A | 2193 | 0.2736 | 10.21 | 0.8439 | 0.1323 | 1.265 | 1.805 | -1.639 | 0.1013 | 0.9494 | -1.283 | 0.1998 | yes | 0.4106 | yes | 0.3246 | 0 | 0.9647 | 0.4008 |
| EN | C | 2193 | 0.5104 | 7.476 | 0.7512 | 0.3644 | 2.361 | 1.323 | -3.748 | 0.000183 | 0.9999 | -0.9436 | 0.3455 | no | 0.071 | yes | 0.6914 | 3.329 | 1.8 | 0.9978 |
| RF | C | 2193 | 0.2989 | 10.16 | 0.8443 | 0.1366 | 1.382 | 1.797 | -1.609 | 0.1078 | 0.9461 | -1.184 | 0.2366 | yes | 0.4106 | yes | 0.542 | 0 | 1.054 | 0.6072 |
| EN | D | 2193 | 0.2368 | 7.334 | 0.7341 | 0.3765 | 1.095 | 1.297 | -0.9158 | 0.3599 | 0.8201 | -0.9514 | 0.3415 | yes | 0.6396 | yes | 0.6662 | 0.1824 | 0.8349 | 0.05137 |
| RF | D | 2193 | 0.224 | 8.389 | 0.796 | 0.2868 | 1.036 | 1.484 | -0.4908 | 0.6236 | 0.6882 | -1.024 | 0.3057 | yes | 0.6396 | yes | 0.611 | 0 | 0.7899 | 0.006872 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2193 | 0.7624 | 4.277 | 1.975e-05 | 9.877e-06 | 0.8847 | 0.5206 | 0.6027 | 0.3013 | 1 | 0.565 |
| EN_A vs PER_A | 2193 | 0.763 | 4.213 | 2.621e-05 | 1.31e-05 | 0.8826 | 0.524 | 0.6003 | 0.3002 | 0.8358 | 1 |
| RF_A vs PER_A | 2193 | 0.9647 | 0.2514 | 0.8015 | 0.4008 | 1.597 | -0.955 | 0.3397 | 0.8301 | 0.1096 | 0.4066 |
| EN_A vs HAR_A | 2193 | 1.001 | -0.2504 | 0.8023 | 0.5989 | 0.9976 | 0.4633 | 0.6432 | 0.3216 | 0.8358 | 1 |
| RF_A vs HAR_A | 2193 | 1.265 | -1.639 | 0.1013 | 0.9494 | 1.805 | -1.283 | 0.1998 | 0.9001 | 0.1096 | 0.4066 |
| RF_A vs EN_A | 2193 | 1.264 | -1.634 | 0.1024 | 0.9488 | 1.81 | -1.293 | 0.1962 | 0.9019 | 0.1096 | 0.4066 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2193 | -0.294 | -135.9 | -0.02532 | -9.254 | 0.2687 | 3.431 | 0.0003063 | 0.0006125 |
| A->C | MSE | 2193 | -1.837 | -32.57 | 0.05009 | 0.4908 | 1.887 | 1.126 | 0.1302 | 0.2604 |
| A->D | QLIKE | 2193 | -0.02038 | -9.417 | 0.04956 | 18.12 | 0.06994 | 1.961 | 0.02499 | 0.04997 |
| A->D | MSE | 2193 | -1.695 | -30.05 | 1.817 | 17.8 | 3.512 | 1.326 | 0.09242 | 0.1848 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1453 | 0.2234 | 1.404 | 1 | 1.006 | 1.038 | 2.827 | 1.094 | 1.173 | 0.9918 |
| High RV (monthly RV > threshold) | 740 | 0.202 | 1.111 | 1 | 0.9891 | 1.759 | 1.348 | 2.01 | 0.9261 | 1.132 |
| Normal days (target <= Q3 + 1.5 IQR) | 1997 | 0.1484 | 1.43 | 1 | 1.002 | 1.124 | 3.333 | 1.173 | 1.296 | 1.111 |
| Extreme days (target > Q3 + 1.5 IQR) | 196 | 0.9067 | 1.114 | 1 | 0.9987 | 1.501 | 0.7387 | 1.732 | 0.7606 | 0.9109 |
| Feb 2018 Volmageddon | 43 | 1.022 | 1.308 | 1 | 1 | 1.075 | 0.6437 | 1.201 | 0.6859 | 1.122 |
| COVID 2020 | 70 | 0.7102 | 1.015 | 1 | 1.003 | 2.972 | 1.131 | 4.025 | 1.085 | 1.358 |
| 2022 bear market | 209 | 0.1554 | 1.019 | 1 | 1 | 1.061 | 2.273 | 0.6269 | 0.6893 | 0.6691 |
| Apr 2025 tariffs | 42 | 0.6075 | 1.214 | 1 | 0.9626 | 1.282 | 0.7126 | 1.151 | 0.7554 | 0.8897 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.34 | 4 |
| HAR | A | 3.532 | 4 |
| EN | A | 3.532 | 4 |
| RF | A | 3.367 | 4 |
| EN | C | 2.684 | 4 |
| RF | C | 3.314 | 4 |
| EN | D | 3.471 | 4 |
| RF | D | 3.523 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.0913 | 1 |
| iv_term | -0.08851 | 1 |
| vix9d_spread | 0.08737 | 1 |
| negret_w | -0.08254 | 1 |
| es_J_w | 0.08248 | 0.7778 |
| iv_atm_1m | 0.07495 | 1 |
| overnight_d | 0.06936 | 0.7778 |
| es_rk_d | 0.06928 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1552 |
| vix3m_spread | 0.06318 |
| es_C_d | 0.04896 |
| iv_atm_1m | 0.04568 |
| es_rk_d | 0.04542 |
| log_vix | 0.04288 |
| es_rsn_d | 0.04258 |
| negret_w | 0.03783 |

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
| PER | A | 2176 | 0.6076 | 10.5 | 1.076 | -0.376 | 1.559 | 1.663 | -2.027 | 0.04281 | 0.9786 | -1.231 | 0.2186 | yes | 0.3174 | yes | 0.5974 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.3898 | 6.314 | 0.8714 | 0.1724 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.9668 | yes | 1 | 0 | 0.6416 | 0.0214 |
| EN | A | 2176 | 0.3896 | 6.366 | 0.8349 | 0.1656 | 0.9993 | 1.008 | 0.0227 | 0.9819 | 0.4909 | -0.116 | 0.9076 | yes | 1 | yes | 0.8604 | 0 | 0.6411 | 0.02401 |
| RF | A | 2176 | 0.4727 | 7.283 | 0.8874 | 0.04544 | 1.213 | 1.153 | -1.651 | 0.09889 | 0.9506 | -1.032 | 0.3022 | yes | 0.5784 | yes | 0.5974 | 0 | 0.778 | 0.03961 |
| EN | C | 2176 | 0.499 | 6.919 | 0.8824 | 0.09317 | 1.28 | 1.096 | -2.015 | 0.044 | 0.978 | -0.6928 | 0.4885 | yes | 0.5784 | yes | 0.5974 | 0.04596 | 0.8212 | 0.1246 |
| RF | C | 2176 | 0.5173 | 7.686 | 1.092 | -0.007459 | 1.327 | 1.217 | -2.14 | 0.03243 | 0.9838 | -1.303 | 0.1927 | yes | 0.5784 | yes | 0.5974 | 0 | 0.8513 | 0.2066 |
| EN | D | 2176 | 0.4901 | 6.931 | 0.8915 | 0.0915 | 1.257 | 1.098 | -2.278 | 0.02285 | 0.9886 | -0.9665 | 0.3339 | yes | 0.5784 | yes | 0.5974 | 0.1379 | 0.8066 | 0.1003 |
| RF | D | 2176 | 0.4949 | 7.318 | 0.9723 | 0.04081 | 1.27 | 1.159 | -1.922 | 0.05476 | 0.9726 | -1.005 | 0.3149 | yes | 0.5784 | yes | 0.5974 | 0 | 0.8145 | 0.09497 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2176 | 0.6416 | 2.027 | 0.04281 | 0.0214 | 0.6014 | 1.231 | 0.2186 | 0.1093 | 0.9668 | 1 |
| EN_A vs PER_A | 2176 | 0.6411 | 1.978 | 0.04803 | 0.02401 | 0.6064 | 1.152 | 0.2493 | 0.1246 | 1 | 0.8604 |
| RF_A vs PER_A | 2176 | 0.778 | 1.756 | 0.07923 | 0.03961 | 0.6937 | 0.9928 | 0.3209 | 0.1605 | 0.0914 | 0.3902 |
| EN_A vs HAR_A | 2176 | 0.9993 | 0.0227 | 0.9819 | 0.4909 | 1.008 | -0.116 | 0.9076 | 0.5462 | 1 | 0.8604 |
| RF_A vs HAR_A | 2176 | 1.213 | -1.651 | 0.09889 | 0.9506 | 1.153 | -1.032 | 0.3022 | 0.8489 | 0.0914 | 0.3902 |
| RF_A vs EN_A | 2176 | 1.213 | -1.766 | 0.07756 | 0.9612 | 1.144 | -1.357 | 0.1748 | 0.9126 | 0.0914 | 0.3902 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2176 | -0.1094 | -28.09 | -0.04457 | -9.429 | 0.06485 | 0.8012 | 0.2115 | 0.4231 |
| A->C | MSE | 2176 | -0.5527 | -8.682 | -0.4036 | -5.542 | 0.149 | 0.2583 | 0.3981 | 0.7962 |
| A->D | QLIKE | 2176 | -0.1005 | -25.8 | -0.02222 | -4.7 | 0.0783 | 1.403 | 0.08041 | 0.1608 |
| A->D | MSE | 2176 | -0.5654 | -8.882 | -0.03537 | -0.4857 | 0.5301 | 0.9048 | 0.1828 | 0.3657 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1436 | 0.4458 | 1.665 | 1 | 0.9564 | 1.111 | 1.132 | 1.235 | 1.216 | 1.202 |
| High RV (monthly RV > threshold) | 740 | 0.2812 | 1.232 | 1 | 1.131 | 1.524 | 1.737 | 1.609 | 1.385 | 1.476 |
| Normal days (target <= Q3 + 1.5 IQR) | 2051 | 0.1936 | 1.783 | 1 | 1.004 | 1.25 | 1.555 | 1.463 | 1.57 | 1.369 |
| Extreme days (target > Q3 + 1.5 IQR) | 125 | 3.61 | 1.361 | 1 | 0.9955 | 1.179 | 1.038 | 1.207 | 0.9815 | 1.182 |
| Feb 2018 Volmageddon | 43 | 0.3822 | 3.025 | 1 | 1 | 1.488 | 0.9209 | 0.8334 | 0.9007 | 0.8805 |
| COVID 2020 | 70 | 2.303 | 1.532 | 1 | 1.192 | 1.518 | 1.537 | 1.732 | 1.252 | 1.61 |
| 2022 bear market | 209 | 0.2284 | 1.105 | 1 | 0.9991 | 0.9498 | 1.732 | 0.8683 | 1.588 | 0.8225 |
| Apr 2025 tariffs | 42 | 0.239 | 2.912 | 1 | 1.007 | 1.742 | 0.8161 | 1.003 | 0.9837 | 0.9109 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.384 | 4 |
| HAR | A | 3.035 | 4 |
| EN | A | 3.041 | 4 |
| RF | A | 2.788 | 4 |
| EN | C | 2.722 | 4 |
| RF | C | 2.798 | 4 |
| EN | D | 2.764 | 4 |
| RF | D | 2.789 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 91.75 | 1.811 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 33.29 | 0.6374 | 25.66 | 0.3972 | 0.744 | -0.128 | 0.8525 |
| HAR_A | 2176 | 61.63 | 1.286 | 45.4 | 0.738 | 0.7146 | 0.05212 | 0.8359 |
| EN_A | 2176 | 74.51 | 1.47 | 54.2 | 0.8295 | 0.722 | 0.1035 | 0.8359 |
| RF_A | 2176 | 64.43 | 1.271 | 42.54 | 0.6511 | 0.7353 | 0.08474 | 0.8833 |
| EN_C | 2176 | 73.96 | 1.464 | 52.13 | 0.8009 | 0.7426 | 0.09369 | 0.8989 |
| RF_C | 2176 | 46.95 | 0.9236 | 24.76 | 0.3776 | 0.636 | 0.07987 | 0.7748 |
| EN_D | 2176 | 64.56 | 1.269 | 44.96 | 0.6875 | 0.7188 | 0.08005 | 0.8603 |
| RF_D | 2176 | 46.14 | 0.9166 | 25.63 | 0.3937 | 0.6659 | 0.08304 | 0.8194 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1609 | 1 |
| es_J_w | 0.1337 | 0.8889 |
| es_rsp_d | 0.1137 | 0.8889 |
| iv_skew_1m | 0.1055 | 1 |
| vix9d_spread | 0.06777 | 1 |
| iv_term | -0.0627 | 0.8889 |
| negret_w | -0.05258 | 0.8889 |
| dgs10 | -0.04905 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1089 |
| log_vxn | 0.0333 |
| negret_m | 0.03328 |
| rv_d | 0.03137 |
| parkinson_w | 0.02975 |
| es_C_d | 0.02966 |
| negret_w | 0.02955 |
| vix3m_spread | 0.02909 |

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
| ES | 1 | RF_D | 0.9629 | 0.2608 | yes | no | 0.7942 | yes | RF_A EN_C | NaN | NaN |
| ES | 5 | EN_A | 1.001 | 0.5989 | yes | no | 0.763 | yes | RF_A EN_C RF_C EN_D | NaN | NaN |
| ES | 22 | EN_A | 0.9993 | 0.4909 | yes | no | 0.6411 | yes | EN_C RF_C EN_D RF_D | 54.2 | 0.1035 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 1.212 | 1.124 | 1.469e-09 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.8248 |
| ES | 1 | all-model common days | EN | A | 1.001 | 0.9972 | 0.8017 | yes | 0.8257 |
| ES | 1 | all-model common days | RF | A | 1.144 | 2.053 | 0.1342 | yes | 0.9436 |
| ES | 1 | all-model common days | EN | C | 1.535 | 1.461 | 0.0006838 | yes | 1.266 |
| ES | 1 | all-model common days | RF | C | 1.011 | 1.741 | 0.8657 | yes | 0.8342 |
| ES | 1 | all-model common days | EN | D | 1.058 | 1.212 | 0.3208 | yes | 0.8722 |
| ES | 1 | all-model common days | RF | D | 0.9629 | 1.734 | 0.5216 | yes | 0.7942 |
| ES | 5 | all-model common days | PER | A | 1.312 | 1.13 | 1.975e-05 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7624 |
| ES | 5 | all-model common days | EN | A | 1.001 | 0.9976 | 0.8023 | yes | 0.763 |
| ES | 5 | all-model common days | RF | A | 1.265 | 1.805 | 0.1013 | yes | 0.9647 |
| ES | 5 | all-model common days | EN | C | 2.361 | 1.323 | 0.000183 | no | 1.8 |
| ES | 5 | all-model common days | RF | C | 1.382 | 1.797 | 0.1078 | yes | 1.054 |
| ES | 5 | all-model common days | EN | D | 1.095 | 1.297 | 0.3599 | yes | 0.8349 |
| ES | 5 | all-model common days | RF | D | 1.036 | 1.484 | 0.6236 | yes | 0.7899 |
| ES | 22 | all-model common days | PER | A | 1.559 | 1.663 | 0.04281 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6416 |
| ES | 22 | all-model common days | EN | A | 0.9993 | 1.008 | 0.9819 | yes | 0.6411 |
| ES | 22 | all-model common days | RF | A | 1.213 | 1.153 | 0.09889 | yes | 0.778 |
| ES | 22 | all-model common days | EN | C | 1.28 | 1.096 | 0.044 | yes | 0.8212 |
| ES | 22 | all-model common days | RF | C | 1.327 | 1.217 | 0.03243 | yes | 0.8513 |
| ES | 22 | all-model common days | EN | D | 1.257 | 1.098 | 0.02285 | yes | 0.8066 |
| ES | 22 | all-model common days | RF | D | 1.27 | 1.159 | 0.05476 | yes | 0.8145 |

