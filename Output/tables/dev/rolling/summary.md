# Results: dev period, scenario "rolling"

Generated 2026-10-16 15:45 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.07227 | 0.917 | 1.496 | 1.013 | 0.3114 | 0.1557 | -0.969 | 0.3329 | no | 0.0138 | yes | 0.5554 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2634 | 0.8384 | 0.2247 | 0.3798 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0138 | yes | 0.5554 | 0 | 1.091 | 0.8443 |
| EN | A | 755 | 0.2635 | 0.8384 | 0.2247 | 0.3798 | 1 | 1 | -6.669 | 4.995e-11 | 1 | 0.8606 | 0.3897 | no | 0.0126 | yes | 0.5554 | 0 | 1.091 | 0.8444 |
| RF | A | 755 | 0.207 | 0.8158 | 0.1998 | 0.3966 | 0.7856 | 0.973 | 3.709 | 0.0002232 | 0.0001116 | 0.8817 | 0.3782 | yes | 0.103 | yes | 0.5554 | 0 | 0.8567 | 0.001623 |
| EN | C | 755 | 0.4297 | 0.7258 | 0.2465 | 0.4631 | 1.631 | 0.8657 | -3.498 | 0.0004966 | 0.9998 | 0.9644 | 0.3352 | no | 0.0024 | yes | 0.6528 | 9.801 | 1.779 | 1 |
| RF | C | 755 | 0.1779 | 0.7905 | 0.1897 | 0.4153 | 0.6752 | 0.9428 | 4.509 | 7.567e-06 | 3.784e-06 | 1.156 | 0.2481 | yes | 1 | yes | 0.6528 | 0 | 0.7363 | 8.309e-08 |
| EN | D | 755 | 0.2256 | 0.7225 | 0.189 | 0.4656 | 0.8563 | 0.8617 | 1.313 | 0.1895 | 0.09474 | 1.24 | 0.2155 | yes | 0.103 | yes | 0.6528 | 1.325 | 0.9338 | 0.2287 |
| RF | D | 755 | 0.1811 | 0.7022 | 0.1908 | 0.4806 | 0.6873 | 0.8375 | 3.573 | 0.0003751 | 0.0001875 | 1.052 | 0.2933 | yes | 0.5278 | yes | 1 | 0 | 0.7495 | 2.411e-05 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.3081 | 1.042 | 1.291 | -0.7614 | 0.4465 | 0.7768 | -1.171 | 0.2417 | no | 0.0118 | yes | 0.3922 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.218 | 0.7918 | 0.2691 | 0.464 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0118 | yes | 0.6694 | 0 | 0.9593 | 0.2232 |
| EN | A | 2013 | 0.218 | 0.7916 | 0.2691 | 0.4642 | 1 | 0.9998 | -1.401 | 0.1614 | 0.9193 | 1.114 | 0.2653 | no | 0.0118 | yes | 0.6694 | 0 | 0.9594 | 0.2235 |
| RF | A | 2013 | 0.1902 | 0.8005 | 0.2515 | 0.4581 | 0.8725 | 1.011 | 3.893 | 0.0001022 | 5.108e-05 | -0.2151 | 0.8297 | no | 0.0118 | yes | 0.473 | 0 | 0.837 | 0.0001437 |
| EN | C | 2013 | 0.572 | 0.7335 | 0.3193 | 0.5035 | 2.624 | 0.9264 | -5.439 | 6.002e-08 | 1 | 1.053 | 0.2924 | no | 0.0078 | yes | 1 | 9.687 | 2.518 | 1 |
| RF | C | 2013 | 0.1662 | 0.7736 | 0.2459 | 0.4763 | 0.7625 | 0.9771 | 6.429 | 1.605e-10 | 8.023e-11 | 0.2504 | 0.8023 | yes | 1 | yes | 0.6694 | 0 | 0.7315 | 3.837e-11 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9593 | 0.7614 | 0.4465 | 0.2232 | 0.7746 | 1.171 | 0.2417 | 0.1208 | 0.132 | 0.7868 |
| EN_A vs PER_A | 2013 | 0.9594 | 0.7606 | 0.447 | 0.2235 | 0.7745 | 1.172 | 0.2414 | 0.1207 | 0.132 | 1 |
| RF_A vs PER_A | 2013 | 0.837 | 3.633 | 0.0002874 | 0.0001437 | 0.7832 | 1.187 | 0.2355 | 0.1178 | 1 | 0.7868 |
| EN_A vs HAR_A | 2013 | 1 | -1.401 | 0.1614 | 0.9193 | 0.9998 | 1.114 | 0.2653 | 0.1327 | 0.132 | 1 |
| RF_A vs HAR_A | 2013 | 0.8725 | 3.893 | 0.0001022 | 5.108e-05 | 1.011 | -0.2151 | 0.8297 | 0.5851 | 1 | 0.7868 |
| RF_A vs EN_A | 2013 | 0.8725 | 3.894 | 0.0001019 | 5.096e-05 | 1.011 | -0.2194 | 0.8264 | 0.5868 | 1 | 0.7868 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.354 | -162.4 | 0.02398 | 12.61 | 0.378 | 5.821 | 3.405e-09 | 6.809e-09 |
| A->C | MSE | 2013 | 0.05807 | 7.336 | 0.02688 | 3.358 | -0.03119 | -0.4824 | 0.6852 | 0.6296 |
| A->D | QLIKE | 755 | 0.03787 | 14.37 | 0.0259 | 12.52 | -0.01197 | -0.5006 | 0.6916 | 0.6168 |
| A->D | MSE | 755 | 0.1159 | 13.83 | 0.1136 | 13.93 | -0.002309 | -0.06187 | 0.5247 | 0.9507 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2723 | 0.9047 | 1 | 1 | 0.7816 | 1.667 | 0.664 | 0.8658 | 0.672 |
| High RV (monthly RV > threshold) | 62 | 0.1647 | 1.143 | 1 | 1 | 0.8596 | 0.9655 | 0.8811 | 0.681 | 0.9697 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2298 | 0.9042 | 1 | 1 | 0.7769 | 1.94 | 0.6823 | 0.9581 | 0.7265 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5681 | 0.9636 | 1 | 1 | 0.8173 | 0.4984 | 0.6491 | 0.4827 | 0.5435 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5497 | 0.4816 | 0.4989 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2278 | 1.04 | 1 | 1 | 0.8696 | 2.54 | 0.7527 |
| High RV (monthly RV > threshold) | 236 | 0.1442 | 1.071 | 1 | 0.9998 | 0.9067 | 3.633 | 0.8793 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1934 | 1.047 | 1 | 1 | 0.8409 | 2.902 | 0.761 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4763 | 1.021 | 1 | 0.9999 | 1.007 | 1.44 | 0.7687 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 | 1 | 0.9907 | 4.755 | 0.8854 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5497 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.497 | 4 |
| EN | A | 3.497 | 4 |
| RF | A | 3.595 | 4 |
| EN | C | 3.051 | 4 |
| RF | C | 3.652 | 4 |
| EN | D | 3.519 | 4 |
| RF | D | 3.657 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.07264 | 1 |
| vix9d_spread | 0.06741 | 1 |
| es_rsn_d | 0.06095 | 1 |
| vrp | 0.05638 | 1 |
| es_rk_d | 0.04989 | 1 |
| negret_d | -0.04635 | 1 |
| es_C_d | 0.04472 | 1 |
| negret_w | -0.04346 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_C_d | 0.08624 |
| iv_skew_1m | 0.06731 |
| negret_w | 0.06479 |
| vix9d_spread | 0.0646 |
| es_rsn_d | 0.05928 |
| rv_d | 0.05503 |
| es_rk_d | 0.05049 |
| iv_term | 0.04762 |

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

## SPY target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3944 | 1.019 | 1.306 | -0.15 | 0.8808 | 0.5596 | -1.032 | 0.3026 | yes | 0.5362 | yes | 0.5354 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2779 | 0.3754 | 0.2377 | 0.5363 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.527 | yes | 0.5804 | 0 | 0.9818 | 0.4404 |
| EN | A | 755 | 0.2779 | 0.3754 | 0.2377 | 0.5363 | 1 | 1 | -5.068 | 5.065e-07 | 1 | 0.6328 | 0.5271 | yes | 0.527 | yes | 0.5804 | 0 | 0.9818 | 0.4405 |
| RF | A | 755 | 0.2673 | 0.5251 | 0.2424 | 0.3513 | 0.9616 | 1.399 | 0.5176 | 0.6049 | 0.3025 | -1.531 | 0.1263 | yes | 0.5362 | yes | 0.189 | 0 | 0.9442 | 0.2823 |
| EN | C | 755 | 0.4449 | 0.3122 | 0.2483 | 0.6144 | 1.601 | 0.8317 | -2.521 | 0.0119 | 0.9941 | 0.8475 | 0.397 | yes | 0.1012 | yes | 0.6082 | 7.947 | 1.572 | 0.9939 |
| RF | C | 755 | 0.2694 | 0.3385 | 0.2235 | 0.5818 | 0.9694 | 0.9018 | 0.564 | 0.5729 | 0.2865 | 0.9187 | 0.3586 | yes | 0.5362 | yes | 0.6082 | 0 | 0.9518 | 0.3364 |
| EN | D | 755 | 0.2324 | 0.2936 | 0.1971 | 0.6374 | 0.8361 | 0.782 | 3.802 | 0.0001551 | 7.756e-05 | 1.194 | 0.2328 | yes | 1 | yes | 1 | 0 | 0.8209 | 0.06783 |
| RF | D | 755 | 0.2438 | 0.2999 | 0.2029 | 0.6295 | 0.8771 | 0.7989 | 2.404 | 0.01645 | 0.008223 | 1.074 | 0.2831 | yes | 0.5362 | yes | 0.6082 | 0 | 0.8612 | 0.09843 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.403 | 1.062 | 1.326 | -0.8038 | 0.4216 | 0.7892 | -1.871 | 0.06145 | yes | 0.3764 | yes | 0.1416 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2093 | 0.4389 | 0.2691 | 0.5498 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3764 | yes | 0.7462 | 0 | 0.9417 | 0.2108 |
| EN | A | 2013 | 0.2096 | 0.4372 | 0.2694 | 0.5515 | 1.002 | 0.9962 | -1.373 | 0.1699 | 0.915 | 1.004 | 0.3154 | yes | 0.3764 | yes | 0.786 | 0 | 0.9434 | 0.2184 |
| RF | A | 2013 | 0.1992 | 0.5801 | 0.2743 | 0.4049 | 0.9522 | 1.322 | 1.09 | 0.2759 | 0.1379 | -2.248 | 0.02468 | yes | 0.619 | no | 0.0682 | 0 | 0.8967 | 0.04293 |
| EN | C | 2013 | 0.6493 | 0.4268 | 0.3351 | 0.5622 | 3.103 | 0.9726 | -5.319 | 1.159e-07 | 1 | 0.3253 | 0.745 | no | 0.0046 | yes | 0.7898 | 9.836 | 2.922 | 1 |
| RF | C | 2013 | 0.1945 | 0.4191 | 0.2593 | 0.5701 | 0.9296 | 0.9549 | 1.962 | 0.04991 | 0.02496 | 0.6941 | 0.4877 | yes | 1 | yes | 1 | 0 | 0.8754 | 0.03998 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9417 | 0.8038 | 0.4216 | 0.2108 | 0.7541 | 1.871 | 0.06145 | 0.03073 | 0.389 | 0.5406 |
| EN_A vs PER_A | 2013 | 0.9434 | 0.7779 | 0.4367 | 0.2184 | 0.7512 | 1.875 | 0.06094 | 0.03047 | 0.389 | 1 |
| RF_A vs PER_A | 2013 | 0.8967 | 1.719 | 0.08586 | 0.04293 | 0.9967 | 0.05724 | 0.9544 | 0.4772 | 1 | 0.0386 |
| EN_A vs HAR_A | 2013 | 1.002 | -1.373 | 0.1699 | 0.915 | 0.9962 | 1.004 | 0.3154 | 0.1577 | 0.389 | 1 |
| RF_A vs HAR_A | 2013 | 0.9522 | 1.09 | 0.2759 | 0.1379 | 1.322 | -2.248 | 0.02468 | 0.9877 | 1 | 0.0386 |
| RF_A vs EN_A | 2013 | 0.9504 | 1.122 | 0.2619 | 0.131 | 1.327 | -2.241 | 0.02516 | 0.9874 | 1 | 0.0386 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.4397 | -209.7 | 0.004731 | 2.374 | 0.4444 | 5.333 | 5.378e-08 | 1.076e-07 |
| A->C | MSE | 2013 | 0.01036 | 2.37 | 0.161 | 27.76 | 0.1507 | 2.697 | 0.003526 | 0.007052 |
| A->D | QLIKE | 755 | 0.04557 | 16.4 | 0.02349 | 8.787 | -0.02208 | -1.634 | 0.9486 | 0.1028 |
| A->D | MSE | 755 | 0.08181 | 21.79 | 0.2252 | 42.89 | 0.1434 | 1.441 | 0.07497 | 0.1499 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2913 | 1.012 | 1 | 1 | 0.9507 | 1.625 | 0.9701 | 0.8423 | 0.8791 |
| High RV (monthly RV > threshold) | 62 | 0.1284 | 1.185 | 1 | 1 | 1.238 | 0.9922 | 0.9509 | 0.6784 | 0.8283 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2205 | 0.8714 | 1 | 1 | 0.8166 | 1.979 | 0.9031 | 0.7815 | 0.7894 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.7987 | 1.387 | 1 | 1 | 1.325 | 0.6532 | 1.135 | 0.9726 | 1.097 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.079 | 0.9031 | 1.072 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2228 | 1.051 | 1 | 1.002 | 0.933 | 2.929 | 0.9264 |
| High RV (monthly RV > threshold) | 236 | 0.107 | 1.235 | 1 | 0.9996 | 1.253 | 5.823 | 0.9798 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1677 | 0.985 | 1 | 1.004 | 0.8467 | 3.783 | 0.8998 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5861 | 1.261 | 1 | 0.9958 | 1.226 | 1.339 | 1.007 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 | 1.006 | 0.9832 | 6.398 | 0.9463 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.079 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.447 | 4 |
| EN | A | 3.447 | 4 |
| RF | A | 3.425 | 4 |
| EN | C | 2.982 | 4 |
| RF | C | 3.442 | 4 |
| EN | D | 3.516 | 4 |
| RF | D | 3.482 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.03265 | 1 |
| iv_term | -0.03246 | 1 |
| iv_skew_1m | 0.03084 | 1 |
| vrp | 0.02596 | 1 |
| iv_atm_1m | 0.02486 | 1 |
| parkinson_d | 0.02339 | 1 |
| vix9d_spread | 0.02224 | 1 |
| negret_d | -0.02217 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.08276 |
| rv_w | 0.05601 |
| iv_atm_1m | 0.05285 |
| parkinson_w | 0.04931 |
| log_rvx | 0.0492 |
| log_vxn | 0.04598 |
| iv_term | 0.04524 |
| es_rsn_w | 0.04126 |

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

## SPY target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.6438 | 0.8087 | 0.9494 | 0.6278 | 0.5303 | 0.2652 | 0.3459 | 0.7295 | yes | 1 | yes | 0.5712 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3464 | 0.228 | 0.323 | 0.6248 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6428 | yes | 0.5712 | 0 | 1.237 | 0.7348 |
| EN | A | 755 | 0.3464 | 0.228 | 0.323 | 0.6248 | 1 | 1 | -2.939 | 0.003394 | 0.9983 | 0.07309 | 0.9418 | yes | 0.6428 | yes | 0.559 | 0 | 1.237 | 0.7349 |
| RF | A | 755 | 0.2993 | 0.2592 | 0.2784 | 0.5733 | 0.8638 | 1.137 | 1.333 | 0.1831 | 0.09154 | -0.9849 | 0.325 | yes | 0.8452 | yes | 0.5214 | 0 | 1.068 | 0.6058 |
| EN | C | 755 | 0.3145 | 0.1801 | 0.2864 | 0.7035 | 0.9079 | 0.7903 | 1.084 | 0.2789 | 0.1395 | 1.046 | 0.2961 | yes | 0.8452 | yes | 0.5712 | 1.06 | 1.123 | 0.6285 |
| RF | C | 755 | 0.3764 | 0.2049 | 0.3498 | 0.6628 | 1.087 | 0.8988 | -1.039 | 0.2992 | 0.8504 | 0.4733 | 0.6361 | yes | 0.6268 | yes | 0.5712 | 0 | 1.344 | 0.7832 |
| EN | D | 755 | 0.351 | 0.1571 | 0.2514 | 0.7415 | 1.013 | 0.689 | -0.07302 | 0.9418 | 0.5291 | 1.396 | 0.163 | yes | 0.6428 | yes | 0.955 | 0 | 1.253 | 0.9009 |
| RF | D | 755 | 0.3416 | 0.1565 | 0.2685 | 0.7424 | 0.9861 | 0.6867 | 0.1546 | 0.8772 | 0.4386 | 1.325 | 0.1854 | yes | 0.6268 | yes | 1 | 0 | 1.219 | 0.7753 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5765 | 1.059 | 1.054 | -0.2831 | 0.7771 | 0.6114 | -0.6331 | 0.5268 | yes | 0.8072 | yes | 0.8078 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2676 | 0.293 | 0.3526 | 0.5982 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8072 | yes | 0.8078 | 0 | 0.9446 | 0.3886 |
| EN | A | 2013 | 0.2703 | 0.2874 | 0.3572 | 0.6057 | 1.01 | 0.9811 | -1.063 | 0.2877 | 0.8561 | 0.6912 | 0.4895 | yes | 0.8072 | yes | 1 | 0 | 0.9541 | 0.4085 |
| RF | A | 2013 | 0.2519 | 0.4314 | 0.3389 | 0.4083 | 0.9411 | 1.473 | 0.745 | 0.4564 | 0.2282 | -1.786 | 0.07425 | yes | 1 | yes | 0.3676 | 0 | 0.889 | 0.1903 |
| EN | C | 2013 | 1.026 | 0.3197 | 0.395 | 0.5615 | 3.833 | 1.091 | -2.356 | 0.01854 | 0.9907 | -0.6416 | 0.5212 | no | 0.0432 | yes | 0.8078 | 8.147 | 3.621 | 0.9931 |
| RF | C | 2013 | 0.2932 | 0.3729 | 0.4119 | 0.4886 | 1.095 | 1.273 | -1.046 | 0.2958 | 0.8521 | -1.535 | 0.1249 | yes | 0.724 | yes | 0.4146 | 0 | 1.035 | 0.5575 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9446 | 0.2831 | 0.7771 | 0.3886 | 0.949 | 0.6331 | 0.5268 | 0.2634 | 0.8072 | 0.6162 |
| EN_A vs PER_A | 2013 | 0.9541 | 0.2313 | 0.8171 | 0.4085 | 0.931 | 0.7251 | 0.4685 | 0.2343 | 0.8072 | 1 |
| RF_A vs PER_A | 2013 | 0.889 | 0.8768 | 0.3807 | 0.1903 | 1.397 | -1.811 | 0.07025 | 0.9649 | 1 | 0.1 |
| EN_A vs HAR_A | 2013 | 1.01 | -1.063 | 0.2877 | 0.8561 | 0.9811 | 0.6912 | 0.4895 | 0.2448 | 0.8072 | 1 |
| RF_A vs HAR_A | 2013 | 0.9411 | 0.745 | 0.4564 | 0.2282 | 1.473 | -1.786 | 0.07425 | 0.9629 | 1 | 0.1 |
| RF_A vs EN_A | 2013 | 0.9318 | 0.837 | 0.4027 | 0.2013 | 1.501 | -1.763 | 0.07799 | 0.961 | 1 | 0.1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.7555 | -279.5 | -0.04129 | -16.39 | 0.7142 | 2.111 | 0.01743 | 0.03487 |
| A->C | MSE | 2013 | -0.03227 | -11.23 | 0.05854 | 13.57 | 0.0908 | 0.8757 | 0.1907 | 0.3813 |
| A->D | QLIKE | 755 | -0.004549 | -1.313 | -0.04236 | -14.15 | -0.03781 | -0.5651 | 0.7139 | 0.5722 |
| A->D | MSE | 755 | 0.0709 | 31.1 | 0.1027 | 39.62 | 0.0318 | 0.8261 | 0.2045 | 0.409 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3589 | 0.7748 | 1 | 1 | 0.8503 | 0.9072 | 1.105 | 1.047 | 1.012 |
| High RV (monthly RV > threshold) | 62 | 0.2072 | 1.464 | 1 | 1 | 1.125 | 0.9219 | 0.7245 | 0.3573 | 0.4846 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.3121 | 0.3616 | 1 | 1 | 0.698 | 0.9186 | 1.172 | 0.7598 | 0.8636 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5881 | 2.477 | 1 | 1 | 1.482 | 0.8682 | 0.767 | 1.959 | 1.443 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.7114 | 1.112 | 0.9241 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2851 | 1.042 | 1 | 1.011 | 0.9179 | 3.26 | 1.107 |
| High RV (monthly RV > threshold) | 236 | 0.1362 | 1.316 | 1 | 0.9924 | 1.307 | 12.86 | 0.9184 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2305 | 0.6116 | 1 | 1.025 | 0.7451 | 2.808 | 1.221 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5715 | 2.536 | 1 | 0.9604 | 1.589 | 7.22 | 0.6792 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 | 1.028 | 1.112 | 9.007 | 1.337 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.7114 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.376 | 4 |
| EN | A | 3.376 | 4 |
| RF | A | 3.408 | 4 |
| EN | C | 3.381 | 4 |
| RF | C | 3.35 | 4 |
| EN | D | 3.272 | 4 |
| RF | D | 3.338 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 10.62 | 0.6969 | 4.447 | 0.2971 | 0.3669 | 0.0782 | 0.3669 |
| EN_A | 755 | 10.62 | 0.6969 | 4.447 | 0.2971 | 0.3669 | 0.0782 | 0.3669 |
| RF_A | 755 | 27.61 | 1.381 | 24.85 | 1.433 | 0.6053 | -0.08679 | 0.7033 |
| EN_C | 755 | 45.13 | 2.166 | 31.49 | 1.517 | 0.5603 | 0.2094 | 0.555 |
| RF_C | 755 | 16.11 | 0.6192 | 13.29 | 0.5231 | 0.3815 | 0.3116 | 0.3285 |
| EN_D | 755 | 27.18 | 1.19 | 25.33 | 1.171 | 0.5351 | 0.3487 | 0.6252 |
| RF_D | 755 | 23.97 | 1.145 | 21.48 | 1.054 | 0.502 | 0.372 | 0.5788 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.02141 | 1 |
| iv_skew_1m | 0.01565 | 1 |
| rv_m | 0.01415 | 1 |
| iv_term | -0.01396 | 1 |
| es_C_m | 0.01388 | 1 |
| vix9d_spread | 0.01349 | 1 |
| t10y3m | 0.01256 | 1 |
| dgs10 | 0.01244 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_rk_d | 0.03946 |
| es_rsn_d | 0.03467 |
| rv_d | 0.03457 |
| iv_atm_1m | 0.03362 |
| es_rsn_w | 0.03317 |
| iv_skew_1m | 0.03076 |
| es_J_m | 0.03047 |
| log_vxn | 0.02997 |

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

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2045 | 1.936 | 0.3236 | 0.09341 | 0.9427 | 1.238 | 0.7869 | 0.4316 | 0.2158 | -1.147 | 0.2518 | yes | 0.1134 | yes | 0.4416 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2169 | 1.564 | 0.3356 | 0.2678 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.004 | yes | 0.4416 | 0 | 1.061 | 0.7842 |
| EN | A | 755 | 0.2215 | 1.564 | 0.3383 | 0.2674 | 1.021 | 1 | -6.113 | 1.572e-09 | 1 | -4.196 | 3.04e-05 | no | 0.0026 | yes | 0.4416 | 0 | 1.083 | 0.8518 |
| RF | A | 755 | 0.1895 | 1.504 | 0.3225 | 0.2955 | 0.8737 | 0.9621 | 2.414 | 0.01603 | 0.008017 | 0.3202 | 0.7489 | yes | 0.1312 | yes | 0.4416 | 0 | 0.9269 | 0.03554 |
| EN | C | 755 | 0.1869 | 1.386 | 0.3337 | 0.3509 | 0.8615 | 0.8865 | 1.565 | 0.118 | 0.059 | 0.9348 | 0.3502 | yes | 0.1134 | yes | 0.4416 | 1.192 | 0.9139 | 0.2463 |
| RF | C | 755 | 0.1362 | 1.158 | 0.2846 | 0.4579 | 0.6276 | 0.7403 | 3.759 | 0.0001839 | 9.195e-05 | 1.128 | 0.2595 | yes | 1 | yes | 1 | 0 | 0.6658 | 0.009407 |
| EN | D | 755 | 0.1646 | 1.288 | 0.2973 | 0.3968 | 0.7588 | 0.8238 | 2.616 | 0.009067 | 0.004533 | 1.191 | 0.2339 | yes | 0.1312 | yes | 0.4416 | 2.119 | 0.8049 | 0.06963 |
| RF | D | 755 | 0.1374 | 1.2 | 0.286 | 0.438 | 0.6331 | 0.7676 | 3.624 | 0.0003091 | 0.0001545 | 1.212 | 0.2258 | yes | 0.7626 | yes | 0.5532 | 0 | 0.6717 | 0.01279 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.061 | -0.7869 | 0.4316 | 0.7842 | 0.8077 | 1.147 | 0.2518 | 0.1259 | 0.2206 | 0.7446 |
| EN_A vs PER_A | 755 | 1.083 | -1.045 | 0.2964 | 0.8518 | 0.8081 | 1.144 | 0.2528 | 0.1264 | 0.1156 | 0.7386 |
| RF_A vs PER_A | 755 | 0.9269 | 1.808 | 0.07107 | 0.03554 | 0.7771 | 0.8677 | 0.3858 | 0.1929 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.021 | -6.113 | 1.572e-09 | 1 | 1 | -4.196 | 3.04e-05 | 1 | 0.1156 | 0.7386 |
| RF_A vs HAR_A | 755 | 0.8737 | 2.414 | 0.01603 | 0.008017 | 0.9621 | 0.3202 | 0.7489 | 0.3744 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.8557 | 2.703 | 0.007031 | 0.003516 | 0.9617 | 0.3244 | 0.7457 | 0.3729 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.03461 | 15.63 | 0.05338 | 28.16 | 0.01877 | 1.086 | 0.1389 | 0.2778 |
| A->C | MSE | 755 | 0.1782 | 11.39 | 0.3469 | 23.06 | 0.1686 | 1.76 | 0.0394 | 0.0788 |
| A->D | QLIKE | 755 | 0.05689 | 25.68 | 0.05219 | 27.53 | -0.0047 | -0.2747 | 0.6082 | 0.7836 |
| A->D | MSE | 755 | 0.2762 | 17.66 | 0.3043 | 20.22 | 0.02802 | 0.1907 | 0.4244 | 0.8488 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2328 | 0.9324 | 1 | 1.023 | 0.8507 | 0.853 | 0.6116 | 0.7567 | 0.6154 |
| High RV (monthly RV > threshold) | 100 | 0.1132 | 1.081 | 1 | 1 | 1.184 | 0.9758 | 0.8436 | 0.7863 | 0.8727 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.1765 | 0.8501 | 1 | 1.03 | 0.7604 | 0.9712 | 0.7097 | 0.8652 | 0.7335 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.5401 | 1.184 | 1 | 0.9973 | 1.169 | 0.575 | 0.4133 | 0.4809 | 0.3711 |
| Aug 2015 devaluation | 54 | 0.3909 | 0.9307 | 1 | 1 | 0.8789 | 0.6485 | 0.4425 | 0.639 | 0.5129 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.521 | 4 |
| HAR | A | 3.562 | 4 |
| EN | A | 3.555 | 4 |
| RF | A | 3.585 | 4 |
| EN | C | 3.627 | 4 |
| RF | C | 3.736 | 4 |
| EN | D | 3.661 | 4 |
| RF | D | 3.738 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix9d_spread | 0.09064 | 1 |
| es_rsn_d | 0.07934 | 1 |
| parkinson_d | 0.0759 | 1 |
| es_rk_d | 0.06667 | 1 |
| es_C_d | 0.0655 | 1 |
| rv_d | 0.0632 | 1 |
| negret_d | -0.06022 | 1 |
| iv_term | -0.05359 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2294 |
| es_rsn_d | 0.09526 |
| es_rk_d | 0.07895 |
| rv_d | 0.07407 |
| es_C_d | 0.06303 |
| log_rvx | 0.05655 |
| log_vix | 0.04467 |
| log_vxn | 0.04123 |

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
| PER | A | 755 | 0.2615 | 1.148 | 0.3768 | -0.004448 | 0.8945 | 1.373 | 1.053 | 0.2926 | 0.1463 | -1.216 | 0.2245 | yes | 0.3542 | yes | 0.3458 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2923 | 0.8363 | 0.3962 | 0.2685 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.001 | yes | 0.3458 | 0 | 1.118 | 0.8537 |
| EN | A | 755 | 0.2977 | 0.8381 | 0.4 | 0.2669 | 1.018 | 1.002 | -5.903 | 5.408e-09 | 1 | -6.15 | 1.26e-09 | no | 0.0006 | yes | 0.3458 | 0 | 1.138 | 0.8876 |
| RF | A | 755 | 0.2594 | 0.7992 | 0.3575 | 0.3009 | 0.8875 | 0.9556 | 2.689 | 0.007327 | 0.003663 | 0.5337 | 0.5937 | yes | 0.1562 | yes | 0.3458 | 0 | 0.9921 | 0.4628 |
| EN | C | 755 | 0.2148 | 0.6813 | 0.3396 | 0.404 | 0.7348 | 0.8147 | 3.854 | 0.0001259 | 6.293e-05 | 1.353 | 0.1764 | yes | 0.5596 | yes | 1 | 0 | 0.8214 | 0.09158 |
| RF | C | 755 | 0.2283 | 0.686 | 0.3277 | 0.4 | 0.7809 | 0.8202 | 3.66 | 0.0002698 | 0.0001349 | 1.292 | 0.1968 | yes | 0.5596 | yes | 0.9842 | 0 | 0.873 | 0.1451 |
| EN | D | 755 | 0.2107 | 0.6851 | 0.3303 | 0.4007 | 0.7208 | 0.8192 | 4.648 | 3.956e-06 | 1.978e-06 | 1.51 | 0.1315 | yes | 1 | yes | 0.9842 | 0 | 0.8058 | 0.0624 |
| RF | D | 755 | 0.2233 | 0.6914 | 0.3366 | 0.3952 | 0.764 | 0.8267 | 4.36 | 1.483e-05 | 7.413e-06 | 1.262 | 0.2074 | yes | 0.5596 | yes | 0.9178 | 0 | 0.8541 | 0.09974 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.118 | -1.053 | 0.2926 | 0.8537 | 0.7283 | 1.216 | 0.2245 | 0.1122 | 0.193 | 0.5536 |
| EN_A vs PER_A | 755 | 1.138 | -1.215 | 0.2248 | 0.8876 | 0.7298 | 1.209 | 0.2272 | 0.1136 | 0.119 | 0.5168 |
| RF_A vs PER_A | 755 | 0.9921 | 0.09337 | 0.9256 | 0.4628 | 0.696 | 1.201 | 0.2302 | 0.1151 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.018 | -5.903 | 5.408e-09 | 1 | 1.002 | -6.15 | 1.26e-09 | 1 | 0.119 | 0.5168 |
| RF_A vs HAR_A | 755 | 0.8875 | 2.689 | 0.007327 | 0.003663 | 0.9556 | 0.5337 | 0.5937 | 0.2969 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.8715 | 3.054 | 0.002334 | 0.001167 | 0.9536 | 0.5591 | 0.5763 | 0.2881 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.08288 | 27.84 | 0.03114 | 12 | -0.05174 | -3.036 | 0.9988 | 0.002481 |
| A->C | MSE | 755 | 0.1567 | 18.7 | 0.1133 | 14.17 | -0.04347 | -0.6913 | 0.7552 | 0.4896 |
| A->D | QLIKE | 755 | 0.08698 | 29.22 | 0.03609 | 13.91 | -0.05089 | -3.676 | 0.9999 | 0.0002537 |
| A->D | MSE | 755 | 0.153 | 18.25 | 0.1078 | 13.49 | -0.04515 | -0.8492 | 0.802 | 0.396 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3199 | 0.8882 | 1 | 1.019 | 0.8923 | 0.7292 | 0.783 | 0.7199 | 0.768 |
| High RV (monthly RV > threshold) | 100 | 0.1117 | 1.014 | 1 | 1 | 0.7976 | 0.8402 | 0.7414 | 0.7369 | 0.6891 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2185 | 0.683 | 1 | 1.028 | 0.7765 | 0.7375 | 0.7025 | 0.709 | 0.71 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.8375 | 1.302 | 1 | 1 | 1.101 | 0.7295 | 0.9322 | 0.7435 | 0.8681 |
| Aug 2015 devaluation | 54 | 0.9256 | 1.179 | 1 | 1 | 1.018 | 0.8319 | 1.048 | 0.8589 | 0.9991 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.386 | 4 |
| HAR | A | 3.409 | 4 |
| EN | A | 3.401 | 4 |
| RF | A | 3.443 | 4 |
| EN | C | 3.556 | 4 |
| RF | C | 3.509 | 4 |
| EN | D | 3.562 | 4 |
| RF | D | 3.524 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.05476 | 1 |
| iv_atm_1m | 0.04484 | 1 |
| vix9d_spread | 0.04299 | 1 |
| negret_w | -0.04249 | 1 |
| iv_skew_1m | 0.04223 | 1 |
| log_vxn | 0.03627 | 1 |
| es_rsn_d | 0.03587 | 1 |
| log_vix | 0.03509 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.09204 |
| news_sent | 0.06054 |
| iv_atm_1m | 0.05681 |
| es_rsn_w | 0.05344 |
| log_vxn | 0.0496 |
| iv_skew_1m | 0.04744 |
| parkinson_w | 0.04506 |
| rv_d | 0.04105 |

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
| PER | A | 755 | 0.3064 | 0.6277 | 0.4368 | -0.005359 | 0.9416 | 1.336 | 0.2479 | 0.8043 | 0.4022 | -1.422 | 0.1554 | yes | 1 | yes | 0.295 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3253 | 0.4697 | 0.4715 | 0.2477 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7924 | yes | 0.6688 | 0 | 1.062 | 0.5978 |
| EN | A | 755 | 0.3856 | 0.5138 | 0.5246 | 0.1771 | 1.185 | 1.094 | -3.284 | 0.001072 | 0.9995 | -3.159 | 0.001645 | yes | 0.337 | yes | 0.1158 | 0 | 1.259 | 0.8107 |
| RF | A | 755 | 0.3147 | 0.4638 | 0.4484 | 0.2571 | 0.9673 | 0.9875 | 0.7133 | 0.4759 | 0.238 | 0.1625 | 0.871 | yes | 0.9078 | yes | 0.7232 | 0 | 1.027 | 0.5467 |
| EN | C | 755 | 0.3527 | 0.4248 | 0.4291 | 0.3196 | 1.084 | 0.9044 | -0.7566 | 0.4495 | 0.7752 | 1.293 | 0.1964 | yes | 0.4588 | yes | 1 | 0 | 1.151 | 0.7749 |
| RF | C | 755 | 0.3422 | 0.4326 | 0.4495 | 0.3072 | 1.052 | 0.9209 | -0.981 | 0.3269 | 0.8365 | 0.9283 | 0.3536 | yes | 0.4588 | yes | 0.9364 | 0 | 1.117 | 0.6921 |
| EN | D | 755 | 0.3817 | 0.4477 | 0.4441 | 0.2828 | 1.173 | 0.9533 | -1.204 | 0.229 | 0.8855 | 0.6878 | 0.4918 | yes | 0.337 | yes | 0.7232 | 0 | 1.246 | 0.8963 |
| RF | D | 755 | 0.3461 | 0.4309 | 0.4428 | 0.3098 | 1.064 | 0.9174 | -1.037 | 0.2999 | 0.85 | 1.155 | 0.2484 | yes | 0.4588 | yes | 0.9364 | 0 | 1.13 | 0.7155 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.062 | -0.2479 | 0.8043 | 0.5978 | 0.7483 | 1.422 | 0.1554 | 0.0777 | 0.7924 | 0.861 |
| EN_A vs PER_A | 755 | 1.259 | -0.8812 | 0.3785 | 0.8107 | 0.8185 | 0.9668 | 0.334 | 0.167 | 0.0856 | 0.2536 |
| RF_A vs PER_A | 755 | 1.027 | -0.1174 | 0.9066 | 0.5467 | 0.739 | 1.287 | 0.1986 | 0.09931 | 0.9078 | 1 |
| EN_A vs HAR_A | 755 | 1.185 | -3.284 | 0.001072 | 0.9995 | 1.094 | -3.159 | 0.001645 | 0.9992 | 0.0856 | 0.2536 |
| RF_A vs HAR_A | 755 | 0.9673 | 0.7133 | 0.4759 | 0.238 | 0.9875 | 0.1625 | 0.871 | 0.4355 | 0.9078 | 1 |
| RF_A vs EN_A | 755 | 0.8161 | 2.493 | 0.01287 | 0.006434 | 0.9028 | 1.259 | 0.2085 | 0.1043 | 0.9078 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.03297 | 8.55 | -0.0275 | -8.739 | -0.06047 | -1.444 | 0.9254 | 0.1493 |
| A->C | MSE | 755 | 0.08898 | 17.32 | 0.03128 | 6.743 | -0.05771 | -1.688 | 0.9541 | 0.09181 |
| A->D | QLIKE | 755 | 0.003969 | 1.029 | -0.03144 | -9.99 | -0.03541 | -0.8114 | 0.7913 | 0.4174 |
| A->D | MSE | 755 | 0.06604 | 12.85 | 0.03292 | 7.097 | -0.03313 | -1.079 | 0.8595 | 0.281 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3473 | 0.8758 | 1 | 1.201 | 0.9887 | 1.122 | 1.081 | 1.219 | 1.094 |
| High RV (monthly RV > threshold) | 100 | 0.1817 | 1.766 | 1 | 0.9852 | 0.6998 | 0.6122 | 0.6909 | 0.5998 | 0.6823 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2681 | 0.6301 | 1 | 1.255 | 0.9206 | 0.9674 | 1.041 | 1.028 | 1.018 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7482 | 1.766 | 1 | 1 | 1.091 | 1.393 | 1.082 | 1.558 | 1.184 |
| Aug 2015 devaluation | 54 | 0.3513 | 1.937 | 1 | 1 | 0.6232 | 0.9626 | 0.8203 | 1.099 | 0.8919 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.304 | 4 |
| HAR | A | 3.385 | 4 |
| EN | A | 3.301 | 4 |
| RF | A | 3.384 | 4 |
| EN | C | 3.296 | 4 |
| RF | C | 3.349 | 4 |
| EN | D | 3.232 | 4 |
| RF | D | 3.331 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 21.07 | 0.9744 | 24.85 | 1.18 | 0.7192 | 0.0442 | 0.8384 |
| HAR_A | 755 | 18.27 | 1.249 | 24.44 | 1.702 | 0.5007 | 0.2678 | 0.5828 |
| EN_A | 755 | 6.831 | 0.4257 | 11.91 | 0.7393 | 0.4411 | 0.2471 | 0.5205 |
| RF_A | 755 | 36.1 | 3.064 | 39.84 | 3.532 | 0.5775 | 0.2318 | 0.6623 |
| EN_C | 755 | 19.45 | 0.8795 | 27.67 | 1.259 | 0.5391 | 0.358 | 0.645 |
| RF_C | 755 | 5.029 | 0.2271 | 12.64 | 0.5785 | 0.4728 | 0.3562 | 0.5338 |
| EN_D | 755 | 13.89 | 0.6173 | 21.65 | 0.9627 | 0.5152 | 0.3068 | 0.6212 |
| RF_D | 755 | 13.64 | 0.649 | 22.4 | 1.081 | 0.5272 | 0.3322 | 0.6225 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_atm_1m | 0.08076 | 1 |
| iv_skew_1m | 0.04819 | 1 |
| parkinson_w | 0.038 | 1 |
| news_sent | -0.03276 | 0.6667 |
| iv_term | -0.02109 | 0.6667 |
| es_C_m | 0.02032 | 0.6667 |
| rv_m | 0.02026 | 0.6667 |
| vix9d_spread | 0.02004 | 0.6667 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| log_vix | 0.04751 |
| rv_d | 0.04348 |
| es_rk_d | 0.04302 |
| iv_skew_1m | 0.04251 |
| overnight_w | 0.0372 |
| log_vxn | 0.03664 |
| es_C_w | 0.0365 |
| news_sent | 0.03319 |

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
| SPY | 1 | RF_C | 0.6752 | 3.784e-06 | yes | yes | 0.7363 | yes | HAR_A EN_A EN_C EN_D | NaN | NaN |
| SPY | 5 | EN_D | 0.8361 | 7.756e-05 | yes | yes | 0.8209 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | RF_A | 0.8638 | 0.09154 | yes | no | 1.068 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 24.85 | -0.08679 |
| ES | 1 | RF_C | 0.6276 | 9.195e-05 | yes | yes | 0.6658 | yes | HAR_A EN_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_D | 0.7208 | 1.978e-06 | yes | yes | 0.8058 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.9673 | 0.238 | yes | no | 1.027 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 39.84 | 0.2318 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.917 | 1.496 | 0.3114 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.091 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 4.995e-11 | no | 1.091 |
| SPY | 1 | all-model common days | RF | A | 0.7856 | 0.973 | 0.0002232 | yes | 0.8567 |
| SPY | 1 | all-model common days | EN | C | 1.631 | 0.8657 | 0.0004966 | no | 1.779 |
| SPY | 1 | all-model common days | RF | C | 0.6752 | 0.9428 | 7.567e-06 | yes | 0.7363 |
| SPY | 1 | all-model common days | EN | D | 0.8563 | 0.8617 | 0.1895 | yes | 0.9338 |
| SPY | 1 | all-model common days | RF | D | 0.6873 | 0.8375 | 0.0003751 | yes | 0.7495 |
| SPY | 1 | sets A-C common days | PER | A | 1.042 | 1.291 | 0.4465 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.9593 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 0.9998 | 0.1614 | no | 0.9594 |
| SPY | 1 | sets A-C common days | RF | A | 0.8725 | 1.011 | 0.0001022 | no | 0.837 |
| SPY | 1 | sets A-C common days | EN | C | 2.624 | 0.9264 | 6.002e-08 | no | 2.518 |
| SPY | 1 | sets A-C common days | RF | C | 0.7625 | 0.9771 | 1.605e-10 | yes | 0.7315 |
| SPY | 5 | all-model common days | PER | A | 1.019 | 1.306 | 0.8808 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9818 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 5.065e-07 | yes | 0.9818 |
| SPY | 5 | all-model common days | RF | A | 0.9616 | 1.399 | 0.6049 | yes | 0.9442 |
| SPY | 5 | all-model common days | EN | C | 1.601 | 0.8317 | 0.0119 | yes | 1.572 |
| SPY | 5 | all-model common days | RF | C | 0.9694 | 0.9018 | 0.5729 | yes | 0.9518 |
| SPY | 5 | all-model common days | EN | D | 0.8361 | 0.782 | 0.0001551 | yes | 0.8209 |
| SPY | 5 | all-model common days | RF | D | 0.8771 | 0.7989 | 0.01645 | yes | 0.8612 |
| SPY | 5 | sets A-C common days | PER | A | 1.062 | 1.326 | 0.4216 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9417 |
| SPY | 5 | sets A-C common days | EN | A | 1.002 | 0.9962 | 0.1699 | yes | 0.9434 |
| SPY | 5 | sets A-C common days | RF | A | 0.9522 | 1.322 | 0.2759 | yes | 0.8967 |
| SPY | 5 | sets A-C common days | EN | C | 3.103 | 0.9726 | 1.159e-07 | no | 2.922 |
| SPY | 5 | sets A-C common days | RF | C | 0.9296 | 0.9549 | 0.04991 | yes | 0.8754 |
| SPY | 22 | all-model common days | PER | A | 0.8087 | 0.9494 | 0.5303 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.237 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.003394 | yes | 1.237 |
| SPY | 22 | all-model common days | RF | A | 0.8638 | 1.137 | 0.1831 | yes | 1.068 |
| SPY | 22 | all-model common days | EN | C | 0.9079 | 0.7903 | 0.2789 | yes | 1.123 |
| SPY | 22 | all-model common days | RF | C | 1.087 | 0.8988 | 0.2992 | yes | 1.344 |
| SPY | 22 | all-model common days | EN | D | 1.013 | 0.689 | 0.9418 | yes | 1.253 |
| SPY | 22 | all-model common days | RF | D | 0.9861 | 0.6867 | 0.8772 | yes | 1.219 |
| SPY | 22 | sets A-C common days | PER | A | 1.059 | 1.054 | 0.7771 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9446 |
| SPY | 22 | sets A-C common days | EN | A | 1.01 | 0.9811 | 0.2877 | yes | 0.9541 |
| SPY | 22 | sets A-C common days | RF | A | 0.9411 | 1.473 | 0.4564 | yes | 0.889 |
| SPY | 22 | sets A-C common days | EN | C | 3.833 | 1.091 | 0.01854 | no | 3.621 |
| SPY | 22 | sets A-C common days | RF | C | 1.095 | 1.273 | 0.2958 | yes | 1.035 |
| ES | 1 | all-model common days | PER | A | 0.9427 | 1.238 | 0.4316 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.061 |
| ES | 1 | all-model common days | EN | A | 1.021 | 1 | 1.572e-09 | no | 1.083 |
| ES | 1 | all-model common days | RF | A | 0.8737 | 0.9621 | 0.01603 | yes | 0.9269 |
| ES | 1 | all-model common days | EN | C | 0.8615 | 0.8865 | 0.118 | yes | 0.9139 |
| ES | 1 | all-model common days | RF | C | 0.6276 | 0.7403 | 0.0001839 | yes | 0.6658 |
| ES | 1 | all-model common days | EN | D | 0.7588 | 0.8238 | 0.009067 | yes | 0.8049 |
| ES | 1 | all-model common days | RF | D | 0.6331 | 0.7676 | 0.0003091 | yes | 0.6717 |
| ES | 5 | all-model common days | PER | A | 0.8945 | 1.373 | 0.2926 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.118 |
| ES | 5 | all-model common days | EN | A | 1.018 | 1.002 | 5.408e-09 | no | 1.138 |
| ES | 5 | all-model common days | RF | A | 0.8875 | 0.9556 | 0.007327 | yes | 0.9921 |
| ES | 5 | all-model common days | EN | C | 0.7348 | 0.8147 | 0.0001259 | yes | 0.8214 |
| ES | 5 | all-model common days | RF | C | 0.7809 | 0.8202 | 0.0002698 | yes | 0.873 |
| ES | 5 | all-model common days | EN | D | 0.7208 | 0.8192 | 3.956e-06 | yes | 0.8058 |
| ES | 5 | all-model common days | RF | D | 0.764 | 0.8267 | 1.483e-05 | yes | 0.8541 |
| ES | 22 | all-model common days | PER | A | 0.9416 | 1.336 | 0.8043 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.062 |
| ES | 22 | all-model common days | EN | A | 1.185 | 1.094 | 0.001072 | yes | 1.259 |
| ES | 22 | all-model common days | RF | A | 0.9673 | 0.9875 | 0.4759 | yes | 1.027 |
| ES | 22 | all-model common days | EN | C | 1.084 | 0.9044 | 0.4495 | yes | 1.151 |
| ES | 22 | all-model common days | RF | C | 1.052 | 0.9209 | 0.3269 | yes | 1.117 |
| ES | 22 | all-model common days | EN | D | 1.173 | 0.9533 | 0.229 | yes | 1.246 |
| ES | 22 | all-model common days | RF | D | 1.064 | 0.9174 | 0.2999 | yes | 1.13 |

