# Results: dev period, scenario "rolling"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.07227 | 0.917 | 1.496 | 1.013 | 0.3114 | 0.1557 | -0.969 | 0.3329 | no | 0.0204 | yes | 0.5544 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2634 | 0.8384 | 0.2247 | 0.3798 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0204 | yes | 0.5544 | 0 | 1.091 | 0.8443 |
| EN | A | 755 | 0.2635 | 0.8384 | 0.2247 | 0.3798 | 1 | 1 | -6.669 | 4.995e-11 | 1 | 0.8606 | 0.3897 | no | 0.0194 | yes | 0.5544 | 0 | 1.091 | 0.8444 |
| RF | A | 755 | 0.207 | 0.8158 | 0.1998 | 0.3966 | 0.7856 | 0.973 | 3.709 | 0.0002232 | 0.0001116 | 0.8817 | 0.3782 | no | 0.0204 | yes | 0.5544 | 0 | 0.8567 | 0.001623 |
| EN | C | 755 | 0.4297 | 0.7258 | 0.2465 | 0.4631 | 1.631 | 0.8657 | -3.498 | 0.0004966 | 0.9998 | 0.9644 | 0.3352 | no | 0.0038 | yes | 0.6374 | 9.801 | 1.779 | 1 |
| RF | C | 755 | 0.1806 | 0.8047 | 0.192 | 0.4047 | 0.6853 | 0.9598 | 4.405 | 1.209e-05 | 6.046e-06 | 0.8771 | 0.3807 | yes | 1 | yes | 0.6374 | 0 | 0.7474 | 6.233e-07 |
| EN | D | 755 | 0.2482 | 0.7303 | 0.1896 | 0.4598 | 0.9422 | 0.871 | 0.5314 | 0.5953 | 0.2977 | 1.228 | 0.2198 | no | 0.0204 | yes | 0.6374 | 2.384 | 1.028 | 0.6143 |
| RF | D | 755 | 0.1811 | 0.6944 | 0.1872 | 0.4863 | 0.6875 | 0.8283 | 3.559 | 0.0003954 | 0.0001977 | 1.127 | 0.2601 | yes | 0.9336 | yes | 1 | 0 | 0.7497 | 4.099e-05 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.3081 | 1.042 | 1.291 | -0.7614 | 0.4465 | 0.7768 | -1.171 | 0.2417 | no | 0.0132 | yes | 0.3912 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.218 | 0.7918 | 0.2691 | 0.464 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0132 | yes | 0.6952 | 0 | 0.9593 | 0.2232 |
| EN | A | 2013 | 0.218 | 0.7916 | 0.2691 | 0.4642 | 1 | 0.9998 | -1.401 | 0.1614 | 0.9193 | 1.114 | 0.2653 | no | 0.0132 | yes | 0.6952 | 0 | 0.9594 | 0.2235 |
| RF | A | 2013 | 0.1902 | 0.8005 | 0.2515 | 0.4581 | 0.8725 | 1.011 | 3.893 | 0.0001022 | 5.108e-05 | -0.2151 | 0.8297 | no | 0.0132 | yes | 0.4984 | 0 | 0.837 | 0.0001437 |
| EN | C | 2013 | 0.572 | 0.7335 | 0.3193 | 0.5035 | 2.624 | 0.9264 | -5.439 | 6.002e-08 | 1 | 1.053 | 0.2924 | no | 0.0078 | yes | 1 | 9.687 | 2.518 | 1 |
| RF | C | 2013 | 0.1672 | 0.7791 | 0.2468 | 0.4726 | 0.767 | 0.9839 | 6.356 | 2.559e-10 | 1.279e-10 | 0.1762 | 0.8601 | yes | 1 | yes | 0.6952 | 0 | 0.7358 | 6.92e-11 |

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
| A->C | QLIKE | 2013 | -0.354 | -162.4 | 0.023 | 12.1 | 0.377 | 5.803 | 3.767e-09 | 7.534e-09 |
| A->C | MSE | 2013 | 0.05807 | 7.336 | 0.02146 | 2.68 | -0.03662 | -0.5408 | 0.7056 | 0.5887 |
| A->D | QLIKE | 755 | 0.01524 | 5.784 | 0.02585 | 12.49 | 0.01061 | 0.4275 | 0.3346 | 0.6691 |
| A->D | MSE | 755 | 0.1082 | 12.9 | 0.1214 | 14.88 | 0.01323 | 0.3506 | 0.363 | 0.726 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2723 | 0.9047 | 1 | 1 | 0.7816 | 1.667 | 0.6733 | 0.9554 | 0.671 |
| High RV (monthly RV > threshold) | 62 | 0.1647 | 1.143 | 1 | 1 | 0.8596 | 0.9655 | 0.9085 | 0.6987 | 0.9917 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2298 | 0.9042 | 1 | 1 | 0.7769 | 1.94 | 0.6967 | 1.054 | 0.732 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5681 | 0.9636 | 1 | 1 | 0.8173 | 0.4984 | 0.6438 | 0.5334 | 0.5241 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5501 | 0.5466 | 0.5003 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2278 | 1.04 | 1 | 1 | 0.8696 | 2.54 | 0.7568 |
| High RV (monthly RV > threshold) | 236 | 0.1442 | 1.071 | 1 | 0.9998 | 0.9067 | 3.633 | 0.8875 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1934 | 1.047 | 1 | 1 | 0.8409 | 2.902 | 0.767 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4763 | 1.021 | 1 | 0.9999 | 1.007 | 1.44 | 0.767 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 | 1 | 0.9907 | 4.755 | 0.8851 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5501 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.497 | 4 |
| EN | A | 3.497 | 4 |
| RF | A | 3.595 | 4 |
| EN | C | 3.051 | 4 |
| RF | C | 3.649 | 4 |
| EN | D | 3.458 | 4 |
| RF | D | 3.657 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06329 | 1 |
| vix9d_spread | 0.05928 | 1 |
| vrp | 0.04823 | 1 |
| es_rsn_d | 0.04627 | 1 |
| negret_d | -0.04192 | 1 |
| es_rk_d | 0.04074 | 1 |
| negret_w | -0.03653 | 1 |
| vix3m_spread | -0.03443 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.1242 |
| es_C_d | 0.1153 |
| iv_skew_1m | 0.07351 |
| vix3m_spread | 0.07119 |
| es_rsn_d | 0.06053 |
| rv_d | 0.05439 |
| iv_term | 0.05085 |
| log_vxn | 0.05072 |

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
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3944 | 1.019 | 1.306 | -0.15 | 0.8808 | 0.5596 | -1.032 | 0.3026 | yes | 0.615 | yes | 0.5322 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2779 | 0.3754 | 0.2377 | 0.5363 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5706 | yes | 0.5746 | 0 | 0.9818 | 0.4404 |
| EN | A | 755 | 0.2779 | 0.3754 | 0.2377 | 0.5363 | 1 | 1 | -5.068 | 5.065e-07 | 1 | 0.6328 | 0.5271 | yes | 0.569 | yes | 0.5746 | 0 | 0.9818 | 0.4405 |
| RF | A | 755 | 0.2673 | 0.5251 | 0.2424 | 0.3513 | 0.9616 | 1.399 | 0.5176 | 0.6049 | 0.3025 | -1.531 | 0.1263 | yes | 0.615 | yes | 0.1884 | 0 | 0.9442 | 0.2823 |
| EN | C | 755 | 0.4449 | 0.3122 | 0.2483 | 0.6144 | 1.601 | 0.8317 | -2.521 | 0.0119 | 0.9941 | 0.8475 | 0.397 | yes | 0.102 | yes | 0.5832 | 7.947 | 1.572 | 0.9939 |
| RF | C | 755 | 0.2686 | 0.3384 | 0.2236 | 0.582 | 0.9664 | 0.9014 | 0.6289 | 0.5296 | 0.2648 | 0.9268 | 0.3543 | yes | 0.615 | yes | 0.5832 | 0 | 0.9489 | 0.3276 |
| EN | D | 755 | 0.2455 | 0.2926 | 0.2003 | 0.6385 | 0.8832 | 0.7795 | 2.8 | 0.005248 | 0.002624 | 1.191 | 0.234 | yes | 0.6522 | yes | 1 | 0 | 0.8672 | 0.1405 |
| RF | D | 755 | 0.2401 | 0.2969 | 0.2013 | 0.6332 | 0.8639 | 0.791 | 2.831 | 0.004767 | 0.002384 | 1.094 | 0.2744 | yes | 1 | yes | 0.6074 | 0 | 0.8482 | 0.08412 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.403 | 1.062 | 1.326 | -0.8038 | 0.4216 | 0.7892 | -1.871 | 0.06145 | yes | 0.3502 | yes | 0.1416 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2093 | 0.4389 | 0.2691 | 0.5498 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3502 | yes | 0.7344 | 0 | 0.9417 | 0.2108 |
| EN | A | 2013 | 0.2096 | 0.4372 | 0.2694 | 0.5515 | 1.002 | 0.9962 | -1.373 | 0.1699 | 0.915 | 1.004 | 0.3154 | yes | 0.3502 | yes | 0.7756 | 0 | 0.9434 | 0.2184 |
| RF | A | 2013 | 0.1992 | 0.5801 | 0.2743 | 0.4049 | 0.9522 | 1.322 | 1.09 | 0.2759 | 0.1379 | -2.248 | 0.02468 | yes | 0.4526 | no | 0.068 | 0 | 0.8967 | 0.04293 |
| EN | C | 2013 | 0.6493 | 0.4268 | 0.3351 | 0.5622 | 3.103 | 0.9726 | -5.319 | 1.159e-07 | 1 | 0.3253 | 0.745 | no | 0.0046 | yes | 0.7756 | 9.836 | 2.922 | 1 |
| RF | C | 2013 | 0.192 | 0.4181 | 0.2577 | 0.5711 | 0.9175 | 0.9526 | 2.325 | 0.0202 | 0.0101 | 0.7302 | 0.4654 | yes | 1 | yes | 1 | 0 | 0.864 | 0.02808 |

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
| A->C | QLIKE | 2013 | -0.4397 | -209.7 | 0.007269 | 3.648 | 0.4469 | 5.367 | 4.465e-08 | 8.929e-08 |
| A->C | MSE | 2013 | 0.01036 | 2.37 | 0.162 | 27.93 | 0.1517 | 2.709 | 0.0034 | 0.006801 |
| A->D | QLIKE | 755 | 0.03246 | 11.68 | 0.02716 | 10.16 | -0.005303 | -0.3298 | 0.6292 | 0.7416 |
| A->D | MSE | 755 | 0.08277 | 22.05 | 0.2282 | 43.46 | 0.1454 | 1.454 | 0.07317 | 0.1463 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2913 | 1.012 | 1 | 1 | 0.9507 | 1.625 | 0.9662 | 0.8929 | 0.8661 |
| High RV (monthly RV > threshold) | 62 | 0.1284 | 1.185 | 1 | 1 | 1.238 | 0.9922 | 0.972 | 0.6383 | 0.8079 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2205 | 0.8714 | 1 | 1 | 0.8166 | 1.979 | 0.8992 | 0.8387 | 0.7828 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.7987 | 1.387 | 1 | 1 | 1.325 | 0.6532 | 1.135 | 0.9948 | 1.067 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.078 | 0.9265 | 1.048 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2228 | 1.051 | 1 | 1.002 | 0.933 | 2.929 | 0.9131 |
| High RV (monthly RV > threshold) | 236 | 0.107 | 1.235 | 1 | 0.9996 | 1.253 | 5.823 | 0.9864 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1677 | 0.985 | 1 | 1.004 | 0.8467 | 3.783 | 0.8846 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5861 | 1.261 | 1 | 0.9958 | 1.226 | 1.339 | 1.003 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 | 1.006 | 0.9832 | 6.398 | 0.9338 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.078 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.447 | 4 |
| EN | A | 3.447 | 4 |
| RF | A | 3.425 | 4 |
| EN | C | 2.982 | 4 |
| RF | C | 3.444 | 4 |
| EN | D | 3.492 | 4 |
| RF | D | 3.491 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.02637 | 1 |
| iv_term | -0.02431 | 1 |
| iv_skew_1m | 0.02394 | 1 |
| vix3m_spread | -0.02271 | 1 |
| vrp | 0.02191 | 1 |
| iv_atm_1m | 0.02123 | 1 |
| negret_d | -0.02065 | 1 |
| parkinson_d | 0.01994 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.08315 |
| rv_w | 0.06127 |
| log_vxn | 0.05474 |
| log_rvx | 0.0542 |
| iv_atm_1m | 0.05375 |
| iv_term | 0.04324 |
| es_rsn_d | 0.04247 |
| es_rsn_w | 0.04061 |

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
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.6438 | 0.8087 | 0.9494 | 0.6278 | 0.5303 | 0.2652 | 0.3459 | 0.7295 | yes | 1 | yes | 0.4166 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3464 | 0.228 | 0.323 | 0.6248 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6584 | yes | 0.4166 | 0 | 1.237 | 0.7348 |
| EN | A | 755 | 0.3464 | 0.228 | 0.323 | 0.6248 | 1 | 1 | -2.939 | 0.003394 | 0.9983 | 0.07309 | 0.9418 | yes | 0.6584 | yes | 0.4166 | 0 | 1.237 | 0.7349 |
| RF | A | 755 | 0.2993 | 0.2592 | 0.2784 | 0.5733 | 0.8638 | 1.137 | 1.333 | 0.1831 | 0.09154 | -0.9849 | 0.325 | yes | 0.8452 | yes | 0.4166 | 0 | 1.068 | 0.6058 |
| EN | C | 755 | 0.3145 | 0.1801 | 0.2864 | 0.7035 | 0.9079 | 0.7903 | 1.084 | 0.2789 | 0.1395 | 1.046 | 0.2961 | yes | 0.8452 | yes | 0.4166 | 1.06 | 1.123 | 0.6285 |
| RF | C | 755 | 0.4299 | 0.3447 | 0.4239 | 0.4328 | 1.241 | 1.512 | -1.364 | 0.1729 | 0.9136 | -1.128 | 0.2599 | yes | 0.282 | yes | 0.232 | 0 | 1.534 | 0.8666 |
| EN | D | 755 | 0.3363 | 0.1549 | 0.2507 | 0.7451 | 0.9706 | 0.6795 | 0.2012 | 0.8406 | 0.4203 | 1.413 | 0.1581 | yes | 0.6584 | yes | 0.9746 | 0 | 1.2 | 0.8113 |
| RF | D | 755 | 0.3352 | 0.1546 | 0.2642 | 0.7455 | 0.9677 | 0.6783 | 0.4113 | 0.681 | 0.3405 | 1.341 | 0.1804 | yes | 0.6524 | yes | 1 | 0 | 1.197 | 0.7419 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5765 | 1.059 | 1.054 | -0.2831 | 0.7771 | 0.6114 | -0.6331 | 0.5268 | yes | 0.8072 | yes | 0.8078 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2676 | 0.293 | 0.3526 | 0.5982 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8072 | yes | 0.8078 | 0 | 0.9446 | 0.3886 |
| EN | A | 2013 | 0.2703 | 0.2874 | 0.3572 | 0.6057 | 1.01 | 0.9811 | -1.063 | 0.2877 | 0.8561 | 0.6912 | 0.4895 | yes | 0.8072 | yes | 1 | 0 | 0.9541 | 0.4085 |
| RF | A | 2013 | 0.2519 | 0.4314 | 0.3389 | 0.4083 | 0.9411 | 1.473 | 0.745 | 0.4564 | 0.2282 | -1.786 | 0.07425 | yes | 1 | yes | 0.4018 | 0 | 0.889 | 0.1903 |
| EN | C | 2013 | 1.026 | 0.3197 | 0.395 | 0.5615 | 3.833 | 1.091 | -2.356 | 0.01854 | 0.9907 | -0.6416 | 0.5212 | no | 0.049 | yes | 0.8078 | 8.147 | 3.621 | 0.9931 |
| RF | C | 2013 | 0.3124 | 0.4256 | 0.4404 | 0.4162 | 1.167 | 1.453 | -1.426 | 0.154 | 0.923 | -2.172 | 0.02995 | yes | 0.5128 | yes | 0.4018 | 0 | 1.103 | 0.6572 |

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
| A->C | QLIKE | 2013 | -0.7555 | -279.5 | -0.06052 | -24.03 | 0.695 | 2.046 | 0.02043 | 0.04086 |
| A->C | MSE | 2013 | -0.03227 | -11.23 | 0.005792 | 1.343 | 0.03806 | 0.347 | 0.3643 | 0.7286 |
| A->D | QLIKE | 755 | 0.01019 | 2.941 | -0.03598 | -12.02 | -0.04616 | -0.7732 | 0.7802 | 0.4397 |
| A->D | MSE | 755 | 0.07305 | 32.05 | 0.1046 | 40.36 | 0.03157 | 0.8255 | 0.2047 | 0.4093 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3589 | 0.7748 | 1 | 1 | 0.8503 | 0.9072 | 1.28 | 1.002 | 0.9954 |
| High RV (monthly RV > threshold) | 62 | 0.2072 | 1.464 | 1 | 1 | 1.125 | 0.9219 | 0.4818 | 0.3565 | 0.4308 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.3121 | 0.3616 | 1 | 1 | 0.698 | 0.9186 | 1.359 | 0.7582 | 0.8594 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5881 | 2.477 | 1 | 1 | 1.482 | 0.8682 | 0.8018 | 1.763 | 1.372 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.6045 | 0.9697 | 0.8932 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2851 | 1.042 | 1 | 1.011 | 0.9179 | 3.26 | 1.189 |
| High RV (monthly RV > threshold) | 236 | 0.1362 | 1.316 | 1 | 0.9924 | 1.307 | 12.86 | 0.8214 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2305 | 0.6116 | 1 | 1.025 | 0.7451 | 2.808 | 1.309 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5715 | 2.536 | 1 | 0.9604 | 1.589 | 7.22 | 0.6991 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 | 1.028 | 1.112 | 9.007 | 1.339 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.6045 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.376 | 4 |
| EN | A | 3.376 | 4 |
| RF | A | 3.408 | 4 |
| EN | C | 3.381 | 4 |
| RF | C | 3.288 | 4 |
| EN | D | 3.315 | 4 |
| RF | D | 3.355 | 4 |

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
| RF_C | 755 | 32.66 | 1.213 | 34.4 | 1.283 | 0.4755 | 0.2093 | 0.4437 |
| EN_D | 755 | 28.27 | 1.236 | 26.64 | 1.23 | 0.5404 | 0.3631 | 0.6331 |
| RF_D | 755 | 23.69 | 1.108 | 21.48 | 1.048 | 0.506 | 0.378 | 0.5934 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01861 | 1 |
| iv_skew_1m | 0.01419 | 1 |
| vix3m_spread | -0.01299 | 1 |
| rv_m | 0.01288 | 1 |
| es_C_m | 0.01265 | 1 |
| es_J_m | 0.01173 | 1 |
| iv_term | -0.01166 | 1 |
| vix9d_spread | 0.01124 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_rsn_w | 0.04289 |
| news_sent | 0.03857 |
| es_sqrtrq_rv | 0.03521 |
| es_rsp_w | 0.0339 |
| es_J_m | 0.03311 |
| rv_d | 0.03081 |
| parkinson_w | 0.03014 |
| log_vxn | 0.02915 |

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
| PER | A | 755 | 0.2045 | 1.936 | 0.3236 | 0.09341 | 0.9427 | 1.238 | 0.7869 | 0.4316 | 0.2158 | -1.147 | 0.2518 | no | 0.0668 | yes | 0.4212 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2169 | 1.564 | 0.3356 | 0.2678 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0034 | yes | 0.4212 | 0 | 1.061 | 0.7842 |
| EN | A | 755 | 0.2215 | 1.564 | 0.3383 | 0.2674 | 1.021 | 1 | -6.113 | 1.572e-09 | 1 | -4.196 | 3.04e-05 | no | 0.002 | yes | 0.4212 | 0 | 1.083 | 0.8518 |
| RF | A | 755 | 0.1895 | 1.504 | 0.3225 | 0.2955 | 0.8737 | 0.9621 | 2.414 | 0.01603 | 0.008017 | 0.3202 | 0.7489 | no | 0.0986 | yes | 0.4212 | 0 | 0.9269 | 0.03554 |
| EN | C | 755 | 0.174 | 1.332 | 0.3291 | 0.3762 | 0.8019 | 0.8519 | 2.267 | 0.02368 | 0.01184 | 0.9799 | 0.3275 | no | 0.0668 | yes | 0.4212 | 0.1325 | 0.8507 | 0.1224 |
| RF | C | 755 | 0.1355 | 1.272 | 0.2842 | 0.4044 | 0.6247 | 0.8133 | 3.945 | 8.714e-05 | 4.357e-05 | 1.26 | 0.2082 | yes | 0.6432 | yes | 0.4212 | 0 | 0.6627 | 0.008996 |
| EN | D | 755 | 0.1634 | 1.301 | 0.3099 | 0.3909 | 0.7532 | 0.8318 | 3.016 | 0.002643 | 0.001322 | 1.101 | 0.2712 | no | 0.0986 | yes | 0.4212 | 0.1325 | 0.799 | 0.05312 |
| RF | D | 755 | 0.1333 | 1.097 | 0.2787 | 0.4864 | 0.6143 | 0.7014 | 3.607 | 0.0003302 | 0.0001651 | 1.176 | 0.2401 | yes | 1 | yes | 1 | 0 | 0.6517 | 0.01022 |

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
| A->C | QLIKE | 755 | 0.04752 | 21.46 | 0.05403 | 28.5 | 0.006504 | 0.3961 | 0.3461 | 0.6922 |
| A->C | MSE | 755 | 0.2323 | 14.85 | 0.2327 | 15.47 | 0.0003288 | 0.001607 | 0.4994 | 0.9987 |
| A->D | QLIKE | 755 | 0.0581 | 26.23 | 0.05627 | 29.69 | -0.001833 | -0.1119 | 0.5446 | 0.9109 |
| A->D | MSE | 755 | 0.2638 | 16.86 | 0.4077 | 27.1 | 0.1439 | 1.195 | 0.1162 | 0.2324 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2328 | 0.9324 | 1 | 1.023 | 0.8507 | 0.7953 | 0.6057 | 0.7476 | 0.5971 |
| High RV (monthly RV > threshold) | 100 | 0.1132 | 1.081 | 1 | 1 | 1.184 | 0.8911 | 0.88 | 0.8282 | 0.8468 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.1765 | 0.8501 | 1 | 1.03 | 0.7604 | 0.9116 | 0.7083 | 0.8435 | 0.7283 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.5401 | 1.184 | 1 | 0.9973 | 1.169 | 0.5158 | 0.4064 | 0.5175 | 0.3169 |
| Aug 2015 devaluation | 54 | 0.3909 | 0.9307 | 1 | 1 | 0.8789 | 0.5386 | 0.5735 | 0.6082 | 0.4198 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.521 | 4 |
| HAR | A | 3.562 | 4 |
| EN | A | 3.555 | 4 |
| RF | A | 3.585 | 4 |
| EN | C | 3.669 | 4 |
| RF | C | 3.737 | 4 |
| EN | D | 3.683 | 4 |
| RF | D | 3.749 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix9d_spread | 0.06278 | 1 |
| es_rsn_d | 0.06179 | 1 |
| parkinson_d | 0.05749 | 1 |
| es_rk_d | 0.0538 | 1 |
| es_C_d | 0.05374 | 1 |
| rv_d | 0.05249 | 1 |
| negret_d | -0.0461 | 1 |
| overnight_d | 0.04402 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2624 |
| es_rsn_d | 0.08187 |
| rv_d | 0.06808 |
| es_rk_d | 0.06808 |
| es_C_d | 0.03955 |
| parkinson_d | 0.03859 |
| log_vxn | 0.03578 |
| log_vix | 0.03327 |

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
| PER | A | 755 | 0.2615 | 1.148 | 0.3768 | -0.004448 | 0.8945 | 1.373 | 1.053 | 0.2926 | 0.1463 | -1.216 | 0.2245 | yes | 0.3834 | yes | 0.3462 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2923 | 0.8363 | 0.3962 | 0.2685 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0008 | yes | 0.3462 | 0 | 1.118 | 0.8537 |
| EN | A | 755 | 0.2977 | 0.8381 | 0.4 | 0.2669 | 1.018 | 1.002 | -5.903 | 5.408e-09 | 1 | -6.15 | 1.26e-09 | no | 0.0006 | yes | 0.3462 | 0 | 1.138 | 0.8876 |
| RF | A | 755 | 0.2594 | 0.7992 | 0.3575 | 0.3009 | 0.8875 | 0.9556 | 2.689 | 0.007327 | 0.003663 | 0.5337 | 0.5937 | yes | 0.1742 | yes | 0.3462 | 0 | 0.9921 | 0.4628 |
| EN | C | 755 | 0.2163 | 0.6757 | 0.3389 | 0.4089 | 0.7399 | 0.808 | 3.804 | 0.0001537 | 7.684e-05 | 1.361 | 0.174 | yes | 0.7478 | yes | 0.8654 | 0 | 0.8272 | 0.1068 |
| RF | C | 755 | 0.2203 | 0.6711 | 0.3179 | 0.413 | 0.7535 | 0.8025 | 3.753 | 0.000188 | 9.402e-05 | 1.378 | 0.1686 | yes | 0.7478 | yes | 1 | 0 | 0.8424 | 0.09557 |
| EN | D | 755 | 0.2073 | 0.6803 | 0.3273 | 0.405 | 0.7093 | 0.8134 | 4.633 | 4.247e-06 | 2.124e-06 | 1.517 | 0.1297 | yes | 1 | yes | 0.7782 | 0 | 0.793 | 0.05436 |
| RF | D | 755 | 0.2393 | 0.6988 | 0.3471 | 0.3887 | 0.8188 | 0.8356 | 3.48 | 0.0005311 | 0.0002656 | 1.25 | 0.2116 | yes | 0.3834 | yes | 0.5034 | 0 | 0.9153 | 0.2381 |

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
| A->C | QLIKE | 755 | 0.08139 | 27.34 | 0.03915 | 15.09 | -0.04224 | -2.416 | 0.992 | 0.01593 |
| A->C | MSE | 755 | 0.1623 | 19.37 | 0.1281 | 16.03 | -0.03425 | -0.5414 | 0.7058 | 0.5884 |
| A->D | QLIKE | 755 | 0.09033 | 30.35 | 0.02007 | 7.737 | -0.07026 | -4.559 | 1 | 5.995e-06 |
| A->D | MSE | 755 | 0.1578 | 18.83 | 0.1004 | 12.56 | -0.05744 | -0.9749 | 0.835 | 0.3299 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3199 | 0.8882 | 1 | 1.019 | 0.8923 | 0.7359 | 0.7561 | 0.7087 | 0.8255 |
| High RV (monthly RV > threshold) | 100 | 0.1117 | 1.014 | 1 | 1 | 0.7976 | 0.8152 | 0.706 | 0.7206 | 0.6934 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2185 | 0.683 | 1 | 1.028 | 0.7765 | 0.7535 | 0.6618 | 0.6993 | 0.7997 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.8375 | 1.302 | 1 | 1 | 1.101 | 0.7139 | 0.9304 | 0.7287 | 0.8556 |
| Aug 2015 devaluation | 54 | 0.9256 | 1.179 | 1 | 1 | 1.018 | 0.8108 | 1.065 | 0.8412 | 0.9977 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.386 | 4 |
| HAR | A | 3.409 | 4 |
| EN | A | 3.401 | 4 |
| RF | A | 3.443 | 4 |
| EN | C | 3.557 | 4 |
| RF | C | 3.52 | 4 |
| EN | D | 3.569 | 4 |
| RF | D | 3.501 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.04964 | 1 |
| iv_atm_1m | 0.04462 | 1 |
| iv_skew_1m | 0.04068 | 1 |
| negret_w | -0.04044 | 1 |
| vix9d_spread | 0.03966 | 1 |
| log_vxn | 0.03617 | 1 |
| log_vix | 0.03485 | 1 |
| es_rsn_d | 0.03443 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.06786 |
| iv_skew_1m | 0.05672 |
| iv_atm_1m | 0.05383 |
| log_rvx | 0.05183 |
| es_rsn_w | 0.051 |
| parkinson_w | 0.04601 |
| log_vxn | 0.0437 |
| log_vix | 0.038 |

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
| PER | A | 755 | 0.3064 | 0.6277 | 0.4368 | -0.005359 | 0.9416 | 1.336 | 0.2479 | 0.8043 | 0.4022 | -1.422 | 0.1554 | yes | 1 | yes | 0.2594 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3253 | 0.4697 | 0.4715 | 0.2477 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8718 | yes | 0.523 | 0 | 1.062 | 0.5978 |
| EN | A | 755 | 0.3856 | 0.5138 | 0.5246 | 0.1771 | 1.185 | 1.094 | -3.284 | 0.001072 | 0.9995 | -3.159 | 0.001645 | yes | 0.2904 | no | 0.0734 | 0 | 1.259 | 0.8107 |
| RF | A | 755 | 0.3147 | 0.4638 | 0.4484 | 0.2571 | 0.9673 | 0.9875 | 0.7133 | 0.4759 | 0.238 | 0.1625 | 0.871 | yes | 0.916 | yes | 0.6292 | 0 | 1.027 | 0.5467 |
| EN | C | 755 | 0.3624 | 0.4311 | 0.435 | 0.3096 | 1.114 | 0.9178 | -0.9846 | 0.3251 | 0.8374 | 1.097 | 0.2728 | yes | 0.2904 | yes | 0.8248 | 0 | 1.183 | 0.8126 |
| RF | C | 755 | 0.3344 | 0.419 | 0.4358 | 0.3289 | 1.028 | 0.892 | -0.4497 | 0.653 | 0.6735 | 1.576 | 0.1154 | yes | 0.5094 | yes | 1 | 0 | 1.092 | 0.658 |
| EN | D | 755 | 0.3749 | 0.4414 | 0.4341 | 0.2931 | 1.152 | 0.9397 | -1.013 | 0.3112 | 0.8444 | 0.8957 | 0.3707 | yes | 0.2904 | yes | 0.6292 | 0 | 1.224 | 0.8848 |
| RF | D | 755 | 0.3176 | 0.4262 | 0.4288 | 0.3173 | 0.9761 | 0.9075 | 0.3918 | 0.6953 | 0.3476 | 1.544 | 0.1229 | yes | 0.916 | yes | 0.8248 | 0 | 1.037 | 0.5697 |

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
| A->C | QLIKE | 755 | 0.02319 | 6.014 | -0.0197 | -6.259 | -0.04289 | -1.169 | 0.8786 | 0.2428 |
| A->C | MSE | 755 | 0.08273 | 16.1 | 0.04485 | 9.67 | -0.03788 | -1.059 | 0.8549 | 0.2901 |
| A->D | QLIKE | 755 | 0.01074 | 2.784 | -0.002844 | -0.9037 | -0.01358 | -0.3097 | 0.6216 | 0.7569 |
| A->D | MSE | 755 | 0.07242 | 14.1 | 0.0376 | 8.106 | -0.03482 | -1.018 | 0.8456 | 0.3089 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3473 | 0.8758 | 1 | 1.201 | 0.9887 | 1.155 | 1.058 | 1.198 | 0.9979 |
| High RV (monthly RV > threshold) | 100 | 0.1817 | 1.766 | 1 | 0.9852 | 0.6998 | 0.5975 | 0.6499 | 0.5856 | 0.7024 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2681 | 0.6301 | 1 | 1.255 | 0.9206 | 0.9996 | 0.9811 | 0.9864 | 0.9086 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7482 | 1.766 | 1 | 1 | 1.091 | 1.417 | 1.152 | 1.592 | 1.155 |
| Aug 2015 devaluation | 54 | 0.3513 | 1.937 | 1 | 1 | 0.6232 | 0.9343 | 0.8535 | 1.07 | 0.9501 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.304 | 4 |
| HAR | A | 3.385 | 4 |
| EN | A | 3.301 | 4 |
| RF | A | 3.384 | 4 |
| EN | C | 3.279 | 4 |
| RF | C | 3.353 | 4 |
| EN | D | 3.237 | 4 |
| RF | D | 3.378 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 21.07 | 0.9744 | 24.85 | 1.18 | 0.7192 | 0.0442 | 0.8384 |
| HAR_A | 755 | 18.27 | 1.249 | 24.44 | 1.702 | 0.5007 | 0.2678 | 0.5828 |
| EN_A | 755 | 6.831 | 0.4257 | 11.91 | 0.7393 | 0.4411 | 0.2471 | 0.5205 |
| RF_A | 755 | 36.1 | 3.064 | 39.84 | 3.532 | 0.5775 | 0.2318 | 0.6623 |
| EN_C | 755 | 19.28 | 0.8556 | 26.93 | 1.196 | 0.5377 | 0.343 | 0.6464 |
| RF_C | 755 | 12.81 | 0.5784 | 20.51 | 0.9327 | 0.5099 | 0.3711 | 0.5974 |
| EN_D | 755 | 20.06 | 0.8965 | 28.43 | 1.281 | 0.543 | 0.3068 | 0.6543 |
| RF_D | 755 | 21.95 | 1.135 | 30.05 | 1.601 | 0.5841 | 0.3248 | 0.6715 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.03793 | 1 |
| iv_skew_1m | 0.02774 | 1 |
| vix3m_spread | -0.02534 | 1 |
| es_C_m | 0.02504 | 1 |
| rv_m | 0.02503 | 1 |
| iv_term | -0.02362 | 1 |
| vix9d_spread | 0.02193 | 1 |
| es_J_m | 0.02097 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.03896 |
| iv_skew_1m | 0.03688 |
| log_vxn | 0.03463 |
| parkinson_w | 0.03333 |
| es_J_m | 0.03047 |
| iv_atm_1m | 0.02939 |
| log_vix | 0.02907 |
| es_rsp_w | 0.02895 |

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
| SPY | 1 | RF_C | 0.6853 | 6.046e-06 | yes | yes | 0.7474 | yes | HAR_A EN_A EN_C EN_D | NaN | NaN |
| SPY | 5 | RF_D | 0.8639 | 0.002384 | yes | yes | 0.8482 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | RF_A | 0.8638 | 0.09154 | yes | no | 1.068 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 24.85 | -0.08679 |
| ES | 1 | RF_D | 0.6143 | 0.0001651 | yes | yes | 0.6517 | yes | HAR_A EN_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_D | 0.7093 | 2.124e-06 | yes | yes | 0.793 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.9673 | 0.238 | yes | no | 1.027 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 39.84 | 0.2318 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.917 | 1.496 | 0.3114 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.091 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 4.995e-11 | no | 1.091 |
| SPY | 1 | all-model common days | RF | A | 0.7856 | 0.973 | 0.0002232 | no | 0.8567 |
| SPY | 1 | all-model common days | EN | C | 1.631 | 0.8657 | 0.0004966 | no | 1.779 |
| SPY | 1 | all-model common days | RF | C | 0.6853 | 0.9598 | 1.209e-05 | yes | 0.7474 |
| SPY | 1 | all-model common days | EN | D | 0.9422 | 0.871 | 0.5953 | no | 1.028 |
| SPY | 1 | all-model common days | RF | D | 0.6875 | 0.8283 | 0.0003954 | yes | 0.7497 |
| SPY | 1 | sets A-C common days | PER | A | 1.042 | 1.291 | 0.4465 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.9593 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 0.9998 | 0.1614 | no | 0.9594 |
| SPY | 1 | sets A-C common days | RF | A | 0.8725 | 1.011 | 0.0001022 | no | 0.837 |
| SPY | 1 | sets A-C common days | EN | C | 2.624 | 0.9264 | 6.002e-08 | no | 2.518 |
| SPY | 1 | sets A-C common days | RF | C | 0.767 | 0.9839 | 2.559e-10 | yes | 0.7358 |
| SPY | 5 | all-model common days | PER | A | 1.019 | 1.306 | 0.8808 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9818 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 5.065e-07 | yes | 0.9818 |
| SPY | 5 | all-model common days | RF | A | 0.9616 | 1.399 | 0.6049 | yes | 0.9442 |
| SPY | 5 | all-model common days | EN | C | 1.601 | 0.8317 | 0.0119 | yes | 1.572 |
| SPY | 5 | all-model common days | RF | C | 0.9664 | 0.9014 | 0.5296 | yes | 0.9489 |
| SPY | 5 | all-model common days | EN | D | 0.8832 | 0.7795 | 0.005248 | yes | 0.8672 |
| SPY | 5 | all-model common days | RF | D | 0.8639 | 0.791 | 0.004767 | yes | 0.8482 |
| SPY | 5 | sets A-C common days | PER | A | 1.062 | 1.326 | 0.4216 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9417 |
| SPY | 5 | sets A-C common days | EN | A | 1.002 | 0.9962 | 0.1699 | yes | 0.9434 |
| SPY | 5 | sets A-C common days | RF | A | 0.9522 | 1.322 | 0.2759 | yes | 0.8967 |
| SPY | 5 | sets A-C common days | EN | C | 3.103 | 0.9726 | 1.159e-07 | no | 2.922 |
| SPY | 5 | sets A-C common days | RF | C | 0.9175 | 0.9526 | 0.0202 | yes | 0.864 |
| SPY | 22 | all-model common days | PER | A | 0.8087 | 0.9494 | 0.5303 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.237 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.003394 | yes | 1.237 |
| SPY | 22 | all-model common days | RF | A | 0.8638 | 1.137 | 0.1831 | yes | 1.068 |
| SPY | 22 | all-model common days | EN | C | 0.9079 | 0.7903 | 0.2789 | yes | 1.123 |
| SPY | 22 | all-model common days | RF | C | 1.241 | 1.512 | 0.1729 | yes | 1.534 |
| SPY | 22 | all-model common days | EN | D | 0.9706 | 0.6795 | 0.8406 | yes | 1.2 |
| SPY | 22 | all-model common days | RF | D | 0.9677 | 0.6783 | 0.681 | yes | 1.197 |
| SPY | 22 | sets A-C common days | PER | A | 1.059 | 1.054 | 0.7771 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9446 |
| SPY | 22 | sets A-C common days | EN | A | 1.01 | 0.9811 | 0.2877 | yes | 0.9541 |
| SPY | 22 | sets A-C common days | RF | A | 0.9411 | 1.473 | 0.4564 | yes | 0.889 |
| SPY | 22 | sets A-C common days | EN | C | 3.833 | 1.091 | 0.01854 | no | 3.621 |
| SPY | 22 | sets A-C common days | RF | C | 1.167 | 1.453 | 0.154 | yes | 1.103 |
| ES | 1 | all-model common days | PER | A | 0.9427 | 1.238 | 0.4316 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.061 |
| ES | 1 | all-model common days | EN | A | 1.021 | 1 | 1.572e-09 | no | 1.083 |
| ES | 1 | all-model common days | RF | A | 0.8737 | 0.9621 | 0.01603 | no | 0.9269 |
| ES | 1 | all-model common days | EN | C | 0.8019 | 0.8519 | 0.02368 | no | 0.8507 |
| ES | 1 | all-model common days | RF | C | 0.6247 | 0.8133 | 8.714e-05 | yes | 0.6627 |
| ES | 1 | all-model common days | EN | D | 0.7532 | 0.8318 | 0.002643 | no | 0.799 |
| ES | 1 | all-model common days | RF | D | 0.6143 | 0.7014 | 0.0003302 | yes | 0.6517 |
| ES | 5 | all-model common days | PER | A | 0.8945 | 1.373 | 0.2926 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.118 |
| ES | 5 | all-model common days | EN | A | 1.018 | 1.002 | 5.408e-09 | no | 1.138 |
| ES | 5 | all-model common days | RF | A | 0.8875 | 0.9556 | 0.007327 | yes | 0.9921 |
| ES | 5 | all-model common days | EN | C | 0.7399 | 0.808 | 0.0001537 | yes | 0.8272 |
| ES | 5 | all-model common days | RF | C | 0.7535 | 0.8025 | 0.000188 | yes | 0.8424 |
| ES | 5 | all-model common days | EN | D | 0.7093 | 0.8134 | 4.247e-06 | yes | 0.793 |
| ES | 5 | all-model common days | RF | D | 0.8188 | 0.8356 | 0.0005311 | yes | 0.9153 |
| ES | 22 | all-model common days | PER | A | 0.9416 | 1.336 | 0.8043 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.062 |
| ES | 22 | all-model common days | EN | A | 1.185 | 1.094 | 0.001072 | yes | 1.259 |
| ES | 22 | all-model common days | RF | A | 0.9673 | 0.9875 | 0.4759 | yes | 1.027 |
| ES | 22 | all-model common days | EN | C | 1.114 | 0.9178 | 0.3251 | yes | 1.183 |
| ES | 22 | all-model common days | RF | C | 1.028 | 0.892 | 0.653 | yes | 1.092 |
| ES | 22 | all-model common days | EN | D | 1.152 | 0.9397 | 0.3112 | yes | 1.224 |
| ES | 22 | all-model common days | RF | D | 0.9761 | 0.9075 | 0.6953 | yes | 1.037 |

