# Results: dev period, scenario "rv15"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.347 | 0.4539 | 0.2124 | 0.4212 | 1.156 | 1.316 | -1.958 | 0.05065 | 0.9747 | -1.162 | 0.2457 | no | 0.0078 | yes | 0.1816 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3002 | 0.3448 | 0.2189 | 0.5603 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0078 | yes | 0.2236 | 0 | 0.8651 | 0.02533 |
| EN | A | 755 | 0.3002 | 0.3448 | 0.2189 | 0.5603 | 1 | 1 | -5.69 | 1.818e-08 | 1 | 0.8384 | 0.4021 | no | 0.0078 | yes | 0.2078 | 0 | 0.8651 | 0.02534 |
| RF | A | 755 | 0.2852 | 0.432 | 0.2253 | 0.4491 | 0.9501 | 1.253 | 2.327 | 0.02025 | 0.01012 | -1.275 | 0.2028 | no | 0.0078 | yes | 0.1816 | 0 | 0.8219 | 0.001997 |
| EN | C | 755 | 0.6148 | 0.2974 | 0.2322 | 0.6207 | 2.048 | 0.8625 | -3.949 | 8.583e-05 | 1 | 0.9183 | 0.3588 | no | 0.0078 | yes | 0.5756 | 10.6 | 1.772 | 0.9997 |
| RF | C | 755 | 0.2245 | 0.3864 | 0.195 | 0.5073 | 0.7478 | 1.12 | 5.223 | 2.285e-07 | 1.142e-07 | -0.6311 | 0.5282 | no | 0.0798 | yes | 0.5756 | 0 | 0.6469 | 1.885e-08 |
| EN | D | 755 | 0.2328 | 0.2898 | 0.1875 | 0.6304 | 0.7757 | 0.8405 | 4.143 | 3.818e-05 | 1.909e-05 | 1.521 | 0.1287 | no | 0.0798 | yes | 0.5756 | 0 | 0.671 | 1.171e-06 |
| RF | D | 755 | 0.2102 | 0.2766 | 0.1789 | 0.6473 | 0.7003 | 0.8021 | 5.007 | 6.874e-07 | 3.437e-07 | 1.243 | 0.2144 | yes | 1 | yes | 1 | 0 | 0.6058 | 4.507e-09 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.3329 | 1.302 | 0.2902 | 0.1787 | 1.251 | 1.327 | -4.271 | 2.039e-05 | 1 | -1.385 | 0.1663 | no | 0.0078 | yes | 0.23 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.266 | 0.9816 | 0.2912 | 0.3809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0078 | yes | 0.4936 | 0 | 0.7991 | 1.019e-05 |
| EN | A | 2013 | 0.266 | 0.9815 | 0.2912 | 0.3809 | 1 | 1 | -7.152 | 1.189e-12 | 1 | 1.48 | 0.139 | no | 0.0078 | yes | 0.4936 | 0 | 0.7991 | 1.021e-05 |
| RF | A | 2013 | 0.2544 | 0.9965 | 0.2783 | 0.3715 | 0.9564 | 1.015 | 1.669 | 0.09523 | 0.04761 | -0.3044 | 0.7608 | no | 0.0078 | yes | 0.23 | 0 | 0.7643 | 1.466e-08 |
| EN | C | 2013 | 0.876 | 0.8905 | 0.3444 | 0.4384 | 3.293 | 0.9072 | -5.469 | 5.095e-08 | 1 | 1.248 | 0.2122 | no | 0.0078 | yes | 0.9004 | 10.43 | 2.632 | 1 |
| RF | C | 2013 | 0.2115 | 0.8796 | 0.2666 | 0.4452 | 0.7952 | 0.8961 | 6.645 | 3.903e-11 | 1.951e-11 | 0.7985 | 0.4247 | yes | 1 | yes | 1 | 0 | 0.6354 | 2.977e-14 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.7991 | 4.271 | 2.039e-05 | 1.019e-05 | 0.7538 | 1.385 | 0.1663 | 0.08317 | 0.0908 | 0.74 |
| EN_A vs PER_A | 2013 | 0.7991 | 4.27 | 2.041e-05 | 1.021e-05 | 0.7538 | 1.385 | 0.1663 | 0.08317 | 0.0906 | 1 |
| RF_A vs PER_A | 2013 | 0.7643 | 5.567 | 2.931e-08 | 1.466e-08 | 0.7653 | 1.408 | 0.1591 | 0.07957 | 1 | 0.74 |
| EN_A vs HAR_A | 2013 | 1 | -7.152 | 1.189e-12 | 1 | 1 | 1.48 | 0.139 | 0.06952 | 0.0906 | 1 |
| RF_A vs HAR_A | 2013 | 0.9564 | 1.669 | 0.09523 | 0.04761 | 1.015 | -0.3044 | 0.7608 | 0.6196 | 1 | 0.74 |
| RF_A vs EN_A | 2013 | 0.9564 | 1.67 | 0.09512 | 0.04756 | 1.015 | -0.3047 | 0.7606 | 0.6197 | 1 | 0.74 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.61 | -229.3 | 0.04288 | 16.85 | 0.6529 | 5.891 | 2.247e-09 | 4.493e-09 |
| A->C | MSE | 2013 | 0.09106 | 9.277 | 0.1169 | 11.73 | 0.02586 | 0.4112 | 0.3405 | 0.681 |
| A->D | QLIKE | 755 | 0.06734 | 22.43 | 0.07498 | 26.29 | 0.007639 | 0.8595 | 0.1952 | 0.3903 |
| A->D | MSE | 755 | 0.05501 | 15.95 | 0.1554 | 35.98 | 0.1004 | 1.174 | 0.1204 | 0.2407 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 689 | 0.3121 | 1.16 | 1 | 1 | 0.9455 | 2.104 | 0.7347 | 0.7745 | 0.6835 |
| High RV (monthly RV > threshold) | 66 | 0.1761 | 1.085 | 1 | 1 | 1.035 | 1.008 | 0.989 | 0.798 | 1.011 |
| Normal days (target <= Q3 + 1.5 IQR) | 676 | 0.2739 | 1.107 | 1 | 1 | 0.8918 | 2.377 | 0.7352 | 0.8271 | 0.7078 |
| Extreme days (target > Q3 + 1.5 IQR) | 79 | 0.5248 | 1.376 | 1 | 1 | 1.211 | 0.5781 | 0.8039 | 0.5459 | 0.6668 |
| Aug 2015 devaluation | 54 | 0.49 | 1.027 | 1 | 1 | 1.05 | 0.5347 | 0.6184 | 0.5199 | 0.5635 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1775 | 0.2755 | 1.27 | 1 | 1 | 0.9595 | 3.153 | 0.789 |
| High RV (monthly RV > threshold) | 238 | 0.1949 | 1.055 | 1 | 1 | 0.9236 | 4.771 | 0.8604 |
| Normal days (target <= Q3 + 1.5 IQR) | 1836 | 0.2342 | 1.196 | 1 | 1 | 0.893 | 3.643 | 0.805 |
| Extreme days (target > Q3 + 1.5 IQR) | 177 | 0.5953 | 1.478 | 1 | 1 | 1.215 | 1.866 | 0.7551 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2287 | 1.284 | 1 | 1 | 1.004 | 5.947 | 0.879 |
| Aug 2015 devaluation | 54 | 0.49 | 1.027 | 1 | 1 | 1.05 | 0.5347 | 0.6184 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.209 | 4 |
| HAR | A | 3.45 | 4 |
| EN | A | 3.45 | 4 |
| RF | A | 3.453 | 4 |
| EN | C | 2.527 | 4 |
| RF | C | 3.573 | 4 |
| EN | D | 3.574 | 4 |
| RF | D | 3.599 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.0464 | 1 |
| vrp | 0.03874 | 1 |
| negret_d | -0.03851 | 1 |
| vix9d_spread | 0.03781 | 1 |
| es_rsn_d | 0.03681 | 1 |
| es_rk_d | 0.0309 | 1 |
| negret_w | -0.02901 | 1 |
| es_C_d | 0.02787 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.2085 |
| vix3m_spread | 0.1151 |
| es_C_d | 0.104 |
| es_rsn_d | 0.07072 |
| es_rk_d | 0.06716 |
| iv_term | 0.05398 |
| log_vxn | 0.03536 |
| iv_skew_1m | 0.03333 |

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
| PER | A | 755 | 0.2812 | 0.2533 | 0.1971 | 0.5506 | 1.085 | 1.333 | -0.5526 | 0.5807 | 0.7097 | -1.113 | 0.2661 | yes | 0.587 | yes | 0.514 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2592 | 0.19 | 0.2179 | 0.6628 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.587 | yes | 0.6638 | 0 | 0.9217 | 0.2903 |
| EN | A | 755 | 0.2592 | 0.19 | 0.2179 | 0.6628 | 1 | 1 | -5.239 | 2.1e-07 | 1 | -0.2623 | 0.7932 | yes | 0.587 | yes | 0.6638 | 0 | 0.9218 | 0.2904 |
| RF | A | 755 | 0.2646 | 0.4181 | 0.2448 | 0.2582 | 1.021 | 2.2 | -0.3185 | 0.7502 | 0.6249 | -1.248 | 0.2125 | yes | 0.5708 | yes | 0.288 | 0 | 0.9407 | 0.3191 |
| EN | C | 755 | 0.3897 | 0.1756 | 0.2264 | 0.6884 | 1.503 | 0.9243 | -1.81 | 0.07067 | 0.9647 | 0.5422 | 0.5879 | yes | 0.246 | yes | 0.6638 | 1.854 | 1.386 | 0.9673 |
| RF | C | 755 | 0.231 | 0.2272 | 0.2055 | 0.597 | 0.891 | 1.195 | 2.121 | 0.03424 | 0.01712 | -0.9273 | 0.3541 | yes | 0.587 | yes | 0.6638 | 0 | 0.8213 | 0.08916 |
| EN | D | 755 | 0.2452 | 0.1633 | 0.1969 | 0.7102 | 0.9458 | 0.8595 | 1.49 | 0.1367 | 0.06833 | 1.262 | 0.2072 | yes | 0.587 | yes | 1 | 0 | 0.8718 | 0.1855 |
| RF | D | 755 | 0.226 | 0.1694 | 0.1935 | 0.6994 | 0.8719 | 0.8914 | 2.381 | 0.0175 | 0.008752 | 0.8933 | 0.372 | yes | 1 | yes | 0.6638 | 0 | 0.8037 | 0.05791 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2377 | 0.6909 | 0.266 | 0.2837 | 1.076 | 1.354 | -0.892 | 0.3725 | 0.8137 | -1.711 | 0.08725 | yes | 0.3408 | yes | 0.3268 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.221 | 0.5103 | 0.2784 | 0.471 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3408 | yes | 0.6006 | 0 | 0.9297 | 0.1863 |
| EN | A | 2013 | 0.221 | 0.5099 | 0.2785 | 0.4714 | 1 | 0.9992 | -0.8619 | 0.3888 | 0.8056 | 1.041 | 0.2978 | yes | 0.3408 | yes | 0.635 | 0 | 0.9299 | 0.1869 |
| RF | A | 2013 | 0.2172 | 0.6586 | 0.2879 | 0.3173 | 0.9831 | 1.291 | 0.3622 | 0.7173 | 0.3586 | -1.633 | 0.1026 | yes | 0.3408 | yes | 0.3268 | 0 | 0.914 | 0.1171 |
| EN | C | 2013 | 0.8713 | 0.4798 | 0.3403 | 0.5026 | 3.943 | 0.9403 | -4.934 | 8.734e-07 | 1 | 0.6418 | 0.5211 | no | 0.0064 | yes | 0.6388 | 7.899 | 3.666 | 1 |
| RF | C | 2013 | 0.1964 | 0.4658 | 0.2804 | 0.5171 | 0.8888 | 0.9128 | 2.3 | 0.02157 | 0.01078 | 0.7783 | 0.4365 | yes | 1 | yes | 1 | 0 | 0.8263 | 0.02189 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9297 | 0.892 | 0.3725 | 0.1863 | 0.7386 | 1.711 | 0.08725 | 0.04362 | 0.759 | 0.5308 |
| EN_A vs PER_A | 2013 | 0.9299 | 0.8896 | 0.3738 | 0.1869 | 0.738 | 1.712 | 0.08703 | 0.04351 | 0.7564 | 1 |
| RF_A vs PER_A | 2013 | 0.914 | 1.19 | 0.2343 | 0.1171 | 0.9532 | 0.2802 | 0.7794 | 0.3897 | 1 | 0.3052 |
| EN_A vs HAR_A | 2013 | 1 | -0.8619 | 0.3888 | 0.8056 | 0.9992 | 1.041 | 0.2978 | 0.1489 | 0.7564 | 1 |
| RF_A vs HAR_A | 2013 | 0.9831 | 0.3622 | 0.7173 | 0.3586 | 1.291 | -1.633 | 0.1026 | 0.9487 | 1 | 0.3052 |
| RF_A vs EN_A | 2013 | 0.983 | 0.3653 | 0.7149 | 0.3575 | 1.292 | -1.633 | 0.1025 | 0.9487 | 1 | 0.3052 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.6503 | -294.3 | 0.02086 | 9.601 | 0.6712 | 5.015 | 2.884e-07 | 5.767e-07 |
| A->C | MSE | 2013 | 0.03009 | 5.9 | 0.1928 | 29.27 | 0.1627 | 2.033 | 0.02108 | 0.04217 |
| A->D | QLIKE | 755 | 0.01405 | 5.418 | 0.03853 | 14.57 | 0.02449 | 2.145 | 0.01613 | 0.03226 |
| A->D | MSE | 755 | 0.0267 | 14.05 | 0.2487 | 59.48 | 0.222 | 1.213 | 0.1127 | 0.2255 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 689 | 0.273 | 1.08 | 1 | 1 | 0.997 | 1.518 | 0.8725 | 0.9509 | 0.8648 |
| High RV (monthly RV > threshold) | 66 | 0.1155 | 1.209 | 1 | 1 | 1.603 | 1.132 | 1.349 | 0.8214 | 1.047 |
| Normal days (target <= Q3 + 1.5 IQR) | 679 | 0.2276 | 0.9505 | 1 | 1 | 0.9154 | 1.748 | 0.7971 | 0.9217 | 0.7942 |
| Extreme days (target > Q3 + 1.5 IQR) | 76 | 0.5421 | 1.589 | 1 | 1 | 1.415 | 0.5871 | 1.243 | 1.036 | 1.163 |
| Aug 2015 devaluation | 54 | 0.6854 | 1.346 | 1 | 1 | 1.355 | 0.711 | 1.216 | 0.9179 | 1.175 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1775 | 0.2347 | 1.06 | 1 | 1 | 0.9613 | 3.655 | 0.8764 |
| High RV (monthly RV > threshold) | 238 | 0.1185 | 1.307 | 1 | 0.9999 | 1.305 | 8.197 | 1.072 |
| Normal days (target <= Q3 + 1.5 IQR) | 1825 | 0.1807 | 1.007 | 1 | 1.001 | 0.8974 | 4.636 | 0.9049 |
| Extreme days (target > Q3 + 1.5 IQR) | 188 | 0.6123 | 1.273 | 1 | 0.9992 | 1.229 | 1.96 | 0.8425 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1901 | 1.016 | 1 | 1 | 0.9878 | 8.176 | 0.9524 |
| Aug 2015 devaluation | 54 | 0.6854 | 1.346 | 1 | 1 | 1.355 | 0.711 | 1.216 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.353 | 4 |
| HAR | A | 3.513 | 4 |
| EN | A | 3.513 | 4 |
| RF | A | 3.477 | 4 |
| EN | C | 3.12 | 4 |
| RF | C | 3.542 | 4 |
| EN | D | 3.532 | 4 |
| RF | D | 3.547 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.02619 | 1 |
| iv_term | -0.02179 | 1 |
| vrp | 0.0212 | 1 |
| iv_atm_1m | 0.02023 | 1 |
| iv_skew_1m | 0.02017 | 1 |
| vix3m_spread | -0.01951 | 1 |
| negret_d | -0.01856 | 1 |
| parkinson_d | 0.0185 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_w | 0.08687 |
| es_rsn_d | 0.0702 |
| iv_skew_1m | 0.06576 |
| news_sent | 0.06205 |
| iv_term | 0.05639 |
| log_vxn | 0.04874 |
| iv_atm_1m | 0.04645 |
| negret_w | 0.04575 |

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
| PER | A | 755 | 0.236 | 0.1436 | 0.2048 | 0.6859 | 0.7721 | 1.033 | 0.8641 | 0.3878 | 0.1939 | -0.2144 | 0.8303 | yes | 1 | yes | 0.5068 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3056 | 0.139 | 0.2844 | 0.6959 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5922 | yes | 0.3448 | 0 | 1.295 | 0.8061 |
| EN | A | 755 | 0.3056 | 0.139 | 0.2844 | 0.6959 | 1 | 1 | -3.382 | 0.0007572 | 0.9996 | -1.684 | 0.09266 | yes | 0.5922 | yes | 0.3448 | 0 | 1.295 | 0.8061 |
| RF | A | 755 | 0.2768 | 0.2165 | 0.265 | 0.5263 | 0.9058 | 1.558 | 1.045 | 0.2962 | 0.1481 | -1.28 | 0.2009 | yes | 0.5922 | yes | 0.3448 | 0 | 1.173 | 0.7713 |
| EN | C | 755 | 0.2658 | 0.1299 | 0.2568 | 0.7159 | 0.8696 | 0.9344 | 1.713 | 0.08705 | 0.04353 | 0.7339 | 0.4632 | yes | 0.6798 | yes | 0.5068 | 0 | 1.126 | 0.6557 |
| RF | C | 755 | 0.3919 | 0.2264 | 0.3571 | 0.5047 | 1.282 | 1.629 | -1.657 | 0.09786 | 0.9511 | -1.597 | 0.1107 | yes | 0.141 | yes | 0.2816 | 0 | 1.661 | 0.9408 |
| EN | D | 755 | 0.3006 | 0.1081 | 0.2217 | 0.7634 | 0.9835 | 0.7781 | 0.112 | 0.9109 | 0.4554 | 1.765 | 0.07793 | yes | 0.5922 | yes | 1 | 0 | 1.274 | 0.9047 |
| RF | D | 755 | 0.3137 | 0.1124 | 0.2451 | 0.7541 | 1.026 | 0.8086 | -0.3224 | 0.7473 | 0.6264 | 1.591 | 0.112 | yes | 0.184 | yes | 0.5898 | 0 | 1.329 | 0.8711 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.298 | 0.3276 | 0.2789 | 0.5178 | 1.096 | 1.086 | -0.4545 | 0.6495 | 0.6752 | -0.9544 | 0.34 | yes | 0.9296 | yes | 0.7322 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2719 | 0.3018 | 0.3508 | 0.5558 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.9806 | yes | 0.7432 | 0 | 0.9125 | 0.3248 |
| EN | A | 2013 | 0.2786 | 0.2982 | 0.3643 | 0.561 | 1.025 | 0.9882 | -1.292 | 0.1964 | 0.9018 | 0.3541 | 0.7233 | yes | 0.9296 | yes | 1 | 0 | 0.9349 | 0.3741 |
| RF | A | 2013 | 0.2714 | 0.5568 | 0.3606 | 0.1803 | 0.9982 | 1.845 | 0.01947 | 0.9845 | 0.4922 | -2.053 | 0.04023 | yes | 1 | yes | 0.1916 | 0 | 0.9109 | 0.2267 |
| EN | C | 2013 | 1.476 | 0.3417 | 0.4034 | 0.497 | 5.43 | 1.132 | -2.329 | 0.01998 | 0.99 | -0.8688 | 0.3851 | no | 0.0418 | yes | 0.7322 | 8.246 | 4.955 | 0.9918 |
| RF | C | 2013 | 0.2956 | 0.3622 | 0.3834 | 0.4668 | 1.087 | 1.2 | -0.7918 | 0.4286 | 0.7857 | -1.253 | 0.2102 | yes | 0.9296 | yes | 0.6918 | 0 | 0.9921 | 0.4866 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9125 | 0.4545 | 0.6495 | 0.3248 | 0.9212 | 0.9544 | 0.34 | 0.17 | 0.9806 | 0.7432 |
| EN_A vs PER_A | 2013 | 0.9349 | 0.321 | 0.7482 | 0.3741 | 0.9103 | 0.8586 | 0.3907 | 0.1953 | 0.7806 | 1 |
| RF_A vs PER_A | 2013 | 0.9109 | 0.7498 | 0.4535 | 0.2267 | 1.7 | -2.069 | 0.03866 | 0.9807 | 1 | 0.0524 |
| EN_A vs HAR_A | 2013 | 1.025 | -1.292 | 0.1964 | 0.9018 | 0.9882 | 0.3541 | 0.7233 | 0.3616 | 0.7806 | 1 |
| RF_A vs HAR_A | 2013 | 0.9982 | 0.01947 | 0.9845 | 0.4922 | 1.845 | -2.053 | 0.04023 | 0.9799 | 1 | 0.0524 |
| RF_A vs EN_A | 2013 | 0.9743 | 0.2525 | 0.8007 | 0.4004 | 1.867 | -1.984 | 0.04741 | 0.9763 | 1 | 0.0524 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -1.198 | -429.9 | -0.02419 | -8.914 | 1.174 | 2.176 | 0.01484 | 0.02968 |
| A->C | MSE | 2013 | -0.04347 | -14.58 | 0.1946 | 34.94 | 0.2381 | 1.599 | 0.05502 | 0.11 |
| A->D | QLIKE | 755 | 0.005043 | 1.65 | -0.03681 | -13.3 | -0.04186 | -0.8171 | 0.7929 | 0.4141 |
| A->D | MSE | 755 | 0.03084 | 22.19 | 0.1041 | 48.1 | 0.07328 | 1.118 | 0.1319 | 0.2638 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 689 | 0.3162 | 0.7353 | 1 | 1 | 0.8861 | 0.8607 | 1.324 | 1.017 | 1.056 |
| High RV (monthly RV > threshold) | 66 | 0.1954 | 1.393 | 1 | 1 | 1.239 | 1.019 | 0.5733 | 0.41 | 0.5179 |
| Normal days (target <= Q3 + 1.5 IQR) | 667 | 0.2907 | 0.4213 | 1 | 1 | 0.7697 | 0.8641 | 1.31 | 0.7716 | 0.9276 |
| Extreme days (target > Q3 + 1.5 IQR) | 88 | 0.4184 | 2.62 | 1 | 1 | 1.623 | 0.8983 | 1.139 | 2.1 | 1.546 |
| Aug 2015 devaluation | 54 | 0.2552 | 1.986 | 1 | 1 | 1.321 | 0.9642 | 0.5557 | 1.017 | 0.8734 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1775 | 0.2893 | 1.083 | 1 | 1.027 | 0.9667 | 4.588 | 1.113 |
| High RV (monthly RV > threshold) | 238 | 0.1423 | 1.29 | 1 | 0.994 | 1.476 | 18.19 | 0.6964 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2342 | 0.637 | 1 | 1.061 | 0.7733 | 3.824 | 1.168 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.581 | 2.611 | 1 | 0.9041 | 1.741 | 10.73 | 0.8215 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2558 | 1.44 | 1 | 1.06 | 1.178 | 11.8 | 1.12 |
| Aug 2015 devaluation | 54 | 0.2552 | 1.986 | 1 | 1 | 1.321 | 0.9642 | 0.5557 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.465 | 4 |
| HAR | A | 3.462 | 4 |
| EN | A | 3.462 | 4 |
| RF | A | 3.478 | 4 |
| EN | C | 3.5 | 4 |
| RF | C | 3.343 | 4 |
| EN | D | 3.406 | 4 |
| RF | D | 3.422 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 81.04 | 4.681 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 46.27 | 2.631 | 43.03 | 2.207 | 0.7788 | 0.153 | 0.898 |
| HAR_A | 755 | 14.08 | 0.7917 | 12.21 | 0.6277 | 0.3695 | 0.293 | 0.3642 |
| EN_A | 755 | 14.08 | 0.7917 | 12.21 | 0.6277 | 0.3695 | 0.293 | 0.3642 |
| RF_A | 755 | 33.53 | 2.924 | 27.93 | 2.44 | 0.5589 | -0.03708 | 0.6437 |
| EN_C | 755 | 48.05 | 2.825 | 39.36 | 1.963 | 0.5934 | 0.2526 | 0.5987 |
| RF_C | 755 | 31.99 | 1.357 | 35.54 | 1.414 | 0.5152 | 0.2571 | 0.4993 |
| EN_D | 755 | 42.49 | 2.128 | 39.26 | 1.835 | 0.5947 | 0.3654 | 0.7113 |
| RF_D | 755 | 24.3 | 1.217 | 19.88 | 0.9357 | 0.5007 | 0.3694 | 0.5881 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.02077 | 1 |
| iv_skew_1m | 0.01477 | 1 |
| vix3m_spread | -0.01418 | 1 |
| t10y3m | 0.01263 | 1 |
| es_C_m | 0.0126 | 1 |
| vix9d_spread | 0.01257 | 1 |
| dgs10 | 0.01257 | 1 |
| rv_m | 0.01245 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_atm_1m | 0.04567 |
| iv_skew_1m | 0.04376 |
| news_sent | 0.03856 |
| es_rsn_d | 0.0371 |
| rv_w | 0.03631 |
| es_rk_d | 0.03268 |
| log_vix | 0.02965 |
| vix3m_spread | 0.02906 |

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
| SPY | 1 | RF_D | 0.7003 | 3.437e-07 | yes | yes | 0.6058 | yes | EN_C | NaN | NaN |
| SPY | 5 | RF_D | 0.8719 | 0.008752 | yes | yes | 0.8037 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | EN_C | 0.8696 | 0.04353 | yes | yes | 1.126 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 39.36 | 0.2526 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.156 | 1.316 | 0.05065 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.8651 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 1.818e-08 | no | 0.8651 |
| SPY | 1 | all-model common days | RF | A | 0.9501 | 1.253 | 0.02025 | no | 0.8219 |
| SPY | 1 | all-model common days | EN | C | 2.048 | 0.8625 | 8.583e-05 | no | 1.772 |
| SPY | 1 | all-model common days | RF | C | 0.7478 | 1.12 | 2.285e-07 | no | 0.6469 |
| SPY | 1 | all-model common days | EN | D | 0.7757 | 0.8405 | 3.818e-05 | no | 0.671 |
| SPY | 1 | all-model common days | RF | D | 0.7003 | 0.8021 | 6.874e-07 | yes | 0.6058 |
| SPY | 1 | sets A-C common days | PER | A | 1.251 | 1.327 | 2.039e-05 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.7991 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 1 | 1.189e-12 | no | 0.7991 |
| SPY | 1 | sets A-C common days | RF | A | 0.9564 | 1.015 | 0.09523 | no | 0.7643 |
| SPY | 1 | sets A-C common days | EN | C | 3.293 | 0.9072 | 5.095e-08 | no | 2.632 |
| SPY | 1 | sets A-C common days | RF | C | 0.7952 | 0.8961 | 3.903e-11 | yes | 0.6354 |
| SPY | 5 | all-model common days | PER | A | 1.085 | 1.333 | 0.5807 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9217 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 2.1e-07 | yes | 0.9218 |
| SPY | 5 | all-model common days | RF | A | 1.021 | 2.2 | 0.7502 | yes | 0.9407 |
| SPY | 5 | all-model common days | EN | C | 1.503 | 0.9243 | 0.07067 | yes | 1.386 |
| SPY | 5 | all-model common days | RF | C | 0.891 | 1.195 | 0.03424 | yes | 0.8213 |
| SPY | 5 | all-model common days | EN | D | 0.9458 | 0.8595 | 0.1367 | yes | 0.8718 |
| SPY | 5 | all-model common days | RF | D | 0.8719 | 0.8914 | 0.0175 | yes | 0.8037 |
| SPY | 5 | sets A-C common days | PER | A | 1.076 | 1.354 | 0.3725 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9297 |
| SPY | 5 | sets A-C common days | EN | A | 1 | 0.9992 | 0.3888 | yes | 0.9299 |
| SPY | 5 | sets A-C common days | RF | A | 0.9831 | 1.291 | 0.7173 | yes | 0.914 |
| SPY | 5 | sets A-C common days | EN | C | 3.943 | 0.9403 | 8.734e-07 | no | 3.666 |
| SPY | 5 | sets A-C common days | RF | C | 0.8888 | 0.9128 | 0.02157 | yes | 0.8263 |
| SPY | 22 | all-model common days | PER | A | 0.7721 | 1.033 | 0.3878 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.295 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.0007572 | yes | 1.295 |
| SPY | 22 | all-model common days | RF | A | 0.9058 | 1.558 | 0.2962 | yes | 1.173 |
| SPY | 22 | all-model common days | EN | C | 0.8696 | 0.9344 | 0.08705 | yes | 1.126 |
| SPY | 22 | all-model common days | RF | C | 1.282 | 1.629 | 0.09786 | yes | 1.661 |
| SPY | 22 | all-model common days | EN | D | 0.9835 | 0.7781 | 0.9109 | yes | 1.274 |
| SPY | 22 | all-model common days | RF | D | 1.026 | 0.8086 | 0.7473 | yes | 1.329 |
| SPY | 22 | sets A-C common days | PER | A | 1.096 | 1.086 | 0.6495 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9125 |
| SPY | 22 | sets A-C common days | EN | A | 1.025 | 0.9882 | 0.1964 | yes | 0.9349 |
| SPY | 22 | sets A-C common days | RF | A | 0.9982 | 1.845 | 0.9845 | yes | 0.9109 |
| SPY | 22 | sets A-C common days | EN | C | 5.43 | 1.132 | 0.01998 | no | 4.955 |
| SPY | 22 | sets A-C common days | RF | C | 1.087 | 1.2 | 0.4286 | yes | 0.9921 |

