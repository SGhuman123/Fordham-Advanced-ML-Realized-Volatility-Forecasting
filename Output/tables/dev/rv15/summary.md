# Results: dev period, scenario "rv15"

Generated 2026-10-16 15:47 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.347 | 0.4539 | 0.2124 | 0.4212 | 1.156 | 1.316 | -1.958 | 0.05065 | 0.9747 | -1.162 | 0.2457 | no | 0.0076 | yes | 0.172 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3002 | 0.3448 | 0.2189 | 0.5603 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0076 | yes | 0.172 | 0 | 0.8651 | 0.02533 |
| EN | A | 755 | 0.3002 | 0.3448 | 0.2189 | 0.5603 | 1 | 1 | -5.69 | 1.818e-08 | 1 | 0.8384 | 0.4021 | no | 0.0076 | yes | 0.172 | 0 | 0.8651 | 0.02534 |
| RF | A | 755 | 0.2852 | 0.432 | 0.2253 | 0.4491 | 0.9501 | 1.253 | 2.327 | 0.02025 | 0.01012 | -1.275 | 0.2028 | no | 0.0076 | yes | 0.172 | 0 | 0.8219 | 0.001997 |
| EN | C | 755 | 0.6148 | 0.2974 | 0.2322 | 0.6207 | 2.048 | 0.8625 | -3.949 | 8.583e-05 | 1 | 0.9183 | 0.3588 | no | 0.0076 | yes | 0.6154 | 10.6 | 1.772 | 0.9997 |
| RF | C | 755 | 0.2204 | 0.3704 | 0.1869 | 0.5277 | 0.7342 | 1.074 | 5.786 | 1.057e-08 | 5.283e-09 | -0.5031 | 0.615 | no | 0.0566 | yes | 0.6154 | 0 | 0.6351 | 3.149e-09 |
| EN | D | 755 | 0.2331 | 0.2936 | 0.1887 | 0.6256 | 0.7766 | 0.8514 | 4.271 | 2.195e-05 | 1.097e-05 | 1.498 | 0.1345 | no | 0.0172 | yes | 0.6154 | 0 | 0.6718 | 8.594e-07 |
| RF | D | 755 | 0.2094 | 0.2726 | 0.1775 | 0.6524 | 0.6976 | 0.7906 | 5.205 | 2.507e-07 | 1.253e-07 | 1.337 | 0.1815 | yes | 1 | yes | 1 | 0 | 0.6035 | 2.674e-09 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.3329 | 1.302 | 0.2902 | 0.1787 | 1.251 | 1.327 | -4.271 | 2.039e-05 | 1 | -1.385 | 0.1663 | no | 0.0078 | yes | 0.227 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.266 | 0.9816 | 0.2912 | 0.3809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0078 | yes | 0.4662 | 0 | 0.7991 | 1.019e-05 |
| EN | A | 2013 | 0.266 | 0.9815 | 0.2912 | 0.3809 | 1 | 1 | -7.152 | 1.189e-12 | 1 | 1.48 | 0.139 | no | 0.0078 | yes | 0.4662 | 0 | 0.7991 | 1.021e-05 |
| RF | A | 2013 | 0.2544 | 0.9965 | 0.2783 | 0.3715 | 0.9564 | 1.015 | 1.669 | 0.09523 | 0.04761 | -0.3044 | 0.7608 | no | 0.0078 | yes | 0.227 | 0 | 0.7643 | 1.466e-08 |
| EN | C | 2013 | 0.876 | 0.8905 | 0.3444 | 0.4384 | 3.293 | 0.9072 | -5.469 | 5.095e-08 | 1 | 1.248 | 0.2122 | no | 0.0078 | yes | 0.8524 | 10.43 | 2.632 | 1 |
| RF | C | 2013 | 0.2106 | 0.8738 | 0.2641 | 0.4489 | 0.7917 | 0.8902 | 6.876 | 8.194e-12 | 4.097e-12 | 0.8504 | 0.3952 | yes | 1 | yes | 1 | 0 | 0.6326 | 1.468e-14 |

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
| A->C | QLIKE | 2013 | -0.61 | -229.3 | 0.04381 | 17.22 | 0.6538 | 5.899 | 2.135e-09 | 4.271e-09 |
| A->C | MSE | 2013 | 0.09106 | 9.277 | 0.1227 | 12.31 | 0.03165 | 0.5186 | 0.302 | 0.6041 |
| A->D | QLIKE | 755 | 0.06705 | 22.34 | 0.07578 | 26.57 | 0.00873 | 0.9854 | 0.1624 | 0.3248 |
| A->D | MSE | 755 | 0.05125 | 14.86 | 0.1594 | 36.9 | 0.1081 | 1.245 | 0.1067 | 0.2135 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 689 | 0.3121 | 1.16 | 1 | 1 | 0.9455 | 2.104 | 0.7259 | 0.7765 | 0.6847 |
| High RV (monthly RV > threshold) | 66 | 0.1761 | 1.085 | 1 | 1 | 1.035 | 1.008 | 0.8873 | 0.779 | 0.9372 |
| Normal days (target <= Q3 + 1.5 IQR) | 676 | 0.2739 | 1.107 | 1 | 1 | 0.8918 | 2.377 | 0.7175 | 0.824 | 0.7114 |
| Extreme days (target > Q3 + 1.5 IQR) | 79 | 0.5248 | 1.376 | 1 | 1 | 1.211 | 0.5781 | 0.8086 | 0.5651 | 0.636 |
| Aug 2015 devaluation | 54 | 0.49 | 1.027 | 1 | 1 | 1.05 | 0.5347 | 0.6084 | 0.5412 | 0.5462 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1775 | 0.2755 | 1.27 | 1 | 1 | 0.9595 | 3.153 | 0.7876 |
| High RV (monthly RV > threshold) | 238 | 0.1949 | 1.055 | 1 | 1 | 0.9236 | 4.771 | 0.8349 |
| Normal days (target <= Q3 + 1.5 IQR) | 1836 | 0.2342 | 1.196 | 1 | 1 | 0.893 | 3.643 | 0.8002 |
| Extreme days (target > Q3 + 1.5 IQR) | 177 | 0.5953 | 1.478 | 1 | 1 | 1.215 | 1.866 | 0.7569 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2287 | 1.284 | 1 | 1 | 1.004 | 5.947 | 0.8818 |
| Aug 2015 devaluation | 54 | 0.49 | 1.027 | 1 | 1 | 1.05 | 0.5347 | 0.6084 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.209 | 4 |
| HAR | A | 3.45 | 4 |
| EN | A | 3.45 | 4 |
| RF | A | 3.453 | 4 |
| EN | C | 2.527 | 4 |
| RF | C | 3.578 | 4 |
| EN | D | 3.576 | 4 |
| RF | D | 3.602 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06254 | 1 |
| vix9d_spread | 0.05214 | 1 |
| vrp | 0.05185 | 1 |
| negret_d | -0.04889 | 1 |
| es_rsn_d | 0.04647 | 1 |
| es_rk_d | 0.03744 | 1 |
| negret_w | -0.03553 | 1 |
| es_C_d | 0.03192 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.1653 |
| es_rsn_d | 0.08439 |
| es_C_d | 0.07495 |
| es_rk_d | 0.07203 |
| iv_term | 0.05546 |
| negret_d | 0.03828 |
| iv_skew_1m | 0.03783 |
| log_vxn | 0.0354 |

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
| PER | A | 755 | 0.2812 | 0.2533 | 0.1971 | 0.5506 | 1.085 | 1.333 | -0.5526 | 0.5807 | 0.7097 | -1.113 | 0.2661 | yes | 0.5608 | yes | 0.5228 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2592 | 0.19 | 0.2179 | 0.6628 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5608 | yes | 0.6392 | 0 | 0.9217 | 0.2903 |
| EN | A | 755 | 0.2592 | 0.19 | 0.2179 | 0.6628 | 1 | 1 | -5.239 | 2.1e-07 | 1 | -0.2623 | 0.7932 | yes | 0.5608 | yes | 0.6392 | 0 | 0.9218 | 0.2904 |
| RF | A | 755 | 0.2646 | 0.4181 | 0.2448 | 0.2582 | 1.021 | 2.2 | -0.3185 | 0.7502 | 0.6249 | -1.248 | 0.2125 | yes | 0.5448 | yes | 0.2884 | 0 | 0.9407 | 0.3191 |
| EN | C | 755 | 0.3897 | 0.1756 | 0.2264 | 0.6884 | 1.503 | 0.9243 | -1.81 | 0.07067 | 0.9647 | 0.5422 | 0.5879 | yes | 0.2452 | yes | 0.6392 | 1.854 | 1.386 | 0.9673 |
| RF | C | 755 | 0.2438 | 0.2272 | 0.2123 | 0.5969 | 0.9407 | 1.196 | 1.211 | 0.2263 | 0.1131 | -0.9975 | 0.3189 | yes | 0.5608 | yes | 0.6392 | 0 | 0.8671 | 0.1617 |
| EN | D | 755 | 0.2274 | 0.1622 | 0.1897 | 0.7122 | 0.8771 | 0.8534 | 3.307 | 0.0009885 | 0.0004943 | 1.347 | 0.1783 | yes | 1 | yes | 1 | 0 | 0.8085 | 0.07752 |
| RF | D | 755 | 0.2276 | 0.1707 | 0.1944 | 0.6971 | 0.8782 | 0.8985 | 2.349 | 0.01907 | 0.009537 | 0.8349 | 0.4041 | yes | 0.986 | yes | 0.6392 | 0 | 0.8094 | 0.06813 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2377 | 0.6909 | 0.266 | 0.2837 | 1.076 | 1.354 | -0.892 | 0.3725 | 0.8137 | -1.711 | 0.08725 | yes | 0.3684 | yes | 0.3276 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.221 | 0.5103 | 0.2784 | 0.471 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3684 | yes | 0.5952 | 0 | 0.9297 | 0.1863 |
| EN | A | 2013 | 0.221 | 0.5099 | 0.2785 | 0.4714 | 1 | 0.9992 | -0.8619 | 0.3888 | 0.8056 | 1.041 | 0.2978 | yes | 0.3684 | yes | 0.6318 | 0 | 0.9299 | 0.1869 |
| RF | A | 2013 | 0.2172 | 0.6586 | 0.2879 | 0.3173 | 0.9831 | 1.291 | 0.3622 | 0.7173 | 0.3586 | -1.633 | 0.1026 | yes | 0.3684 | yes | 0.3276 | 0 | 0.914 | 0.1171 |
| EN | C | 2013 | 0.8713 | 0.4798 | 0.3403 | 0.5026 | 3.943 | 0.9403 | -4.934 | 8.734e-07 | 1 | 0.6418 | 0.5211 | no | 0.0062 | yes | 0.6318 | 7.899 | 3.666 | 1 |
| RF | C | 2013 | 0.1995 | 0.4655 | 0.2817 | 0.5174 | 0.903 | 0.9122 | 2.031 | 0.04234 | 0.02117 | 0.7872 | 0.4312 | yes | 1 | yes | 1 | 0 | 0.8396 | 0.03225 |

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
| A->C | QLIKE | 2013 | -0.6503 | -294.3 | 0.0177 | 8.147 | 0.668 | 4.99 | 3.276e-07 | 6.552e-07 |
| A->C | MSE | 2013 | 0.03009 | 5.9 | 0.1931 | 29.32 | 0.163 | 2.022 | 0.02164 | 0.04328 |
| A->D | QLIKE | 755 | 0.03186 | 12.29 | 0.03691 | 13.95 | 0.005054 | 0.4963 | 0.3099 | 0.6198 |
| A->D | MSE | 755 | 0.02785 | 14.66 | 0.2474 | 59.16 | 0.2195 | 1.199 | 0.1155 | 0.231 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 689 | 0.273 | 1.08 | 1 | 1 | 0.997 | 1.518 | 0.9258 | 0.8798 | 0.871 |
| High RV (monthly RV > threshold) | 66 | 0.1155 | 1.209 | 1 | 1 | 1.603 | 1.132 | 1.309 | 0.812 | 1.056 |
| Normal days (target <= Q3 + 1.5 IQR) | 679 | 0.2276 | 0.9505 | 1 | 1 | 0.9154 | 1.748 | 0.8636 | 0.831 | 0.8009 |
| Extreme days (target > Q3 + 1.5 IQR) | 76 | 0.5421 | 1.589 | 1 | 1 | 1.415 | 0.5871 | 1.23 | 1.05 | 1.168 |
| Aug 2015 devaluation | 54 | 0.6854 | 1.346 | 1 | 1 | 1.355 | 0.711 | 1.2 | 0.9369 | 1.184 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1775 | 0.2347 | 1.06 | 1 | 1 | 0.9613 | 3.655 | 0.8923 |
| High RV (monthly RV > threshold) | 238 | 0.1185 | 1.307 | 1 | 0.9999 | 1.305 | 8.197 | 1.061 |
| Normal days (target <= Q3 + 1.5 IQR) | 1825 | 0.1807 | 1.007 | 1 | 1.001 | 0.8974 | 4.636 | 0.9243 |
| Extreme days (target > Q3 + 1.5 IQR) | 188 | 0.6123 | 1.273 | 1 | 0.9992 | 1.229 | 1.96 | 0.8423 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1901 | 1.016 | 1 | 1 | 0.9878 | 8.176 | 0.9461 |
| Aug 2015 devaluation | 54 | 0.6854 | 1.346 | 1 | 1 | 1.355 | 0.711 | 1.2 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.353 | 4 |
| HAR | A | 3.513 | 4 |
| EN | A | 3.513 | 4 |
| RF | A | 3.477 | 4 |
| EN | C | 3.12 | 4 |
| RF | C | 3.524 | 4 |
| EN | D | 3.557 | 4 |
| RF | D | 3.545 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.02864 | 1 |
| iv_term | -0.02489 | 1 |
| vrp | 0.02276 | 1 |
| iv_skew_1m | 0.0216 | 1 |
| negret_d | -0.02151 | 1 |
| iv_atm_1m | 0.02095 | 1 |
| parkinson_d | 0.02037 | 1 |
| vix9d_spread | 0.01891 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_w | 0.06474 |
| iv_skew_1m | 0.05843 |
| iv_term | 0.05543 |
| es_C_d | 0.05275 |
| es_rsn_w | 0.04931 |
| negret_w | 0.04661 |
| iv_atm_1m | 0.04498 |
| rv_d | 0.0448 |

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
| PER | A | 755 | 0.236 | 0.1436 | 0.2048 | 0.6859 | 0.7721 | 1.033 | 0.8641 | 0.3878 | 0.1939 | -0.2144 | 0.8303 | yes | 1 | yes | 0.4834 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3056 | 0.139 | 0.2844 | 0.6959 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.578 | yes | 0.3404 | 0 | 1.295 | 0.8061 |
| EN | A | 755 | 0.3056 | 0.139 | 0.2844 | 0.6959 | 1 | 1 | -3.382 | 0.0007572 | 0.9996 | -1.684 | 0.09266 | yes | 0.578 | yes | 0.3404 | 0 | 1.295 | 0.8061 |
| RF | A | 755 | 0.2768 | 0.2165 | 0.265 | 0.5263 | 0.9058 | 1.558 | 1.045 | 0.2962 | 0.1481 | -1.28 | 0.2009 | yes | 0.578 | yes | 0.3404 | 0 | 1.173 | 0.7713 |
| EN | C | 755 | 0.2658 | 0.1299 | 0.2568 | 0.7159 | 0.8696 | 0.9344 | 1.713 | 0.08705 | 0.04353 | 0.7339 | 0.4632 | yes | 0.6798 | yes | 0.4834 | 0 | 1.126 | 0.6557 |
| RF | C | 755 | 0.3874 | 0.2205 | 0.3606 | 0.5175 | 1.268 | 1.587 | -1.701 | 0.08927 | 0.9554 | -1.955 | 0.05092 | yes | 0.1516 | yes | 0.1312 | 0 | 1.642 | 0.9314 |
| EN | D | 755 | 0.2985 | 0.1075 | 0.2216 | 0.7647 | 0.9766 | 0.7739 | 0.1636 | 0.8701 | 0.4351 | 1.804 | 0.07157 | yes | 0.578 | yes | 1 | 0 | 1.265 | 0.8944 |
| RF | D | 755 | 0.3094 | 0.1097 | 0.2418 | 0.7601 | 1.013 | 0.7891 | -0.1473 | 0.8829 | 0.5585 | 1.633 | 0.1028 | yes | 0.217 | yes | 0.8064 | 0 | 1.311 | 0.866 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.298 | 0.3276 | 0.2789 | 0.5178 | 1.096 | 1.086 | -0.4545 | 0.6495 | 0.6752 | -0.9544 | 0.34 | yes | 0.9296 | yes | 0.7322 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2719 | 0.3018 | 0.3508 | 0.5558 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.9806 | yes | 0.7432 | 0 | 0.9125 | 0.3248 |
| EN | A | 2013 | 0.2786 | 0.2982 | 0.3643 | 0.561 | 1.025 | 0.9882 | -1.292 | 0.1964 | 0.9018 | 0.3541 | 0.7233 | yes | 0.9296 | yes | 1 | 0 | 0.9349 | 0.3741 |
| RF | A | 2013 | 0.2714 | 0.5568 | 0.3606 | 0.1803 | 0.9982 | 1.845 | 0.01947 | 0.9845 | 0.4922 | -2.053 | 0.04023 | yes | 1 | yes | 0.1902 | 0 | 0.9109 | 0.2267 |
| EN | C | 2013 | 1.476 | 0.3417 | 0.4034 | 0.497 | 5.43 | 1.132 | -2.329 | 0.01998 | 0.99 | -0.8688 | 0.3851 | no | 0.0418 | yes | 0.7322 | 8.246 | 4.955 | 0.9918 |
| RF | C | 2013 | 0.2952 | 0.3603 | 0.3849 | 0.4696 | 1.086 | 1.194 | -0.8 | 0.4238 | 0.7881 | -1.262 | 0.2072 | yes | 0.9296 | yes | 0.699 | 0 | 0.9907 | 0.4843 |

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
| A->C | QLIKE | 2013 | -1.198 | -429.9 | -0.02378 | -8.763 | 1.174 | 2.177 | 0.0148 | 0.02961 |
| A->C | MSE | 2013 | -0.04347 | -14.58 | 0.1965 | 35.29 | 0.24 | 1.625 | 0.05214 | 0.1043 |
| A->D | QLIKE | 755 | 0.007152 | 2.34 | -0.0326 | -11.77 | -0.03975 | -0.8272 | 0.7958 | 0.4084 |
| A->D | MSE | 755 | 0.03143 | 22.61 | 0.1068 | 49.35 | 0.07541 | 1.13 | 0.1294 | 0.2587 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 689 | 0.3162 | 0.7353 | 1 | 1 | 0.8861 | 0.8607 | 1.305 | 1.01 | 1.042 |
| High RV (monthly RV > threshold) | 66 | 0.1954 | 1.393 | 1 | 1 | 1.239 | 1.019 | 0.638 | 0.4071 | 0.5085 |
| Normal days (target <= Q3 + 1.5 IQR) | 667 | 0.2907 | 0.4213 | 1 | 1 | 0.7697 | 0.8641 | 1.33 | 0.7704 | 0.9109 |
| Extreme days (target > Q3 + 1.5 IQR) | 88 | 0.4184 | 2.62 | 1 | 1 | 1.623 | 0.8983 | 0.9384 | 2.063 | 1.548 |
| Aug 2015 devaluation | 54 | 0.2552 | 1.986 | 1 | 1 | 1.321 | 0.9642 | 0.7811 | 1.041 | 0.9364 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1775 | 0.2893 | 1.083 | 1 | 1.027 | 0.9667 | 4.588 | 1.11 |
| High RV (monthly RV > threshold) | 238 | 0.1423 | 1.29 | 1 | 0.994 | 1.476 | 18.19 | 0.7211 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2342 | 0.637 | 1 | 1.061 | 0.7733 | 3.824 | 1.184 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.581 | 2.611 | 1 | 0.9041 | 1.741 | 10.73 | 0.7599 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2558 | 1.44 | 1 | 1.06 | 1.178 | 11.8 | 1.12 |
| Aug 2015 devaluation | 54 | 0.2552 | 1.986 | 1 | 1 | 1.321 | 0.9642 | 0.7811 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.465 | 4 |
| HAR | A | 3.462 | 4 |
| EN | A | 3.462 | 4 |
| RF | A | 3.478 | 4 |
| EN | C | 3.5 | 4 |
| RF | C | 3.359 | 4 |
| EN | D | 3.412 | 4 |
| RF | D | 3.427 | 4 |

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
| RF_C | 755 | 30.23 | 1.358 | 35.22 | 1.407 | 0.4795 | 0.2581 | 0.4397 |
| EN_D | 755 | 41.35 | 2.072 | 38.13 | 1.782 | 0.5921 | 0.3719 | 0.7033 |
| RF_D | 755 | 23.27 | 1.181 | 18.56 | 0.8625 | 0.4993 | 0.3892 | 0.5894 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.02072 | 1 |
| iv_skew_1m | 0.01528 | 1 |
| iv_term | -0.01365 | 1 |
| vix9d_spread | 0.0136 | 1 |
| es_C_m | 0.01293 | 1 |
| rv_m | 0.0129 | 1 |
| t10y3m | 0.01285 | 1 |
| dgs10 | 0.01273 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_J_m | 0.0607 |
| iv_skew_1m | 0.05699 |
| es_C_d | 0.05066 |
| es_rsn_d | 0.04526 |
| es_sqrtrq_rv | 0.04232 |
| log_vix | 0.04217 |
| es_rsn_w | 0.04028 |
| rv_w | 0.03617 |

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
| SPY | 1 | RF_D | 0.6976 | 1.253e-07 | yes | yes | 0.6035 | yes | EN_C | NaN | NaN |
| SPY | 5 | EN_D | 0.8771 | 0.0004943 | yes | yes | 0.8085 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | EN_C | 0.8696 | 0.04353 | yes | yes | 1.126 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 39.36 | 0.2526 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.156 | 1.316 | 0.05065 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.8651 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 1.818e-08 | no | 0.8651 |
| SPY | 1 | all-model common days | RF | A | 0.9501 | 1.253 | 0.02025 | no | 0.8219 |
| SPY | 1 | all-model common days | EN | C | 2.048 | 0.8625 | 8.583e-05 | no | 1.772 |
| SPY | 1 | all-model common days | RF | C | 0.7342 | 1.074 | 1.057e-08 | no | 0.6351 |
| SPY | 1 | all-model common days | EN | D | 0.7766 | 0.8514 | 2.195e-05 | no | 0.6718 |
| SPY | 1 | all-model common days | RF | D | 0.6976 | 0.7906 | 2.507e-07 | yes | 0.6035 |
| SPY | 1 | sets A-C common days | PER | A | 1.251 | 1.327 | 2.039e-05 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.7991 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 1 | 1.189e-12 | no | 0.7991 |
| SPY | 1 | sets A-C common days | RF | A | 0.9564 | 1.015 | 0.09523 | no | 0.7643 |
| SPY | 1 | sets A-C common days | EN | C | 3.293 | 0.9072 | 5.095e-08 | no | 2.632 |
| SPY | 1 | sets A-C common days | RF | C | 0.7917 | 0.8902 | 8.194e-12 | yes | 0.6326 |
| SPY | 5 | all-model common days | PER | A | 1.085 | 1.333 | 0.5807 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9217 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 2.1e-07 | yes | 0.9218 |
| SPY | 5 | all-model common days | RF | A | 1.021 | 2.2 | 0.7502 | yes | 0.9407 |
| SPY | 5 | all-model common days | EN | C | 1.503 | 0.9243 | 0.07067 | yes | 1.386 |
| SPY | 5 | all-model common days | RF | C | 0.9407 | 1.196 | 0.2263 | yes | 0.8671 |
| SPY | 5 | all-model common days | EN | D | 0.8771 | 0.8534 | 0.0009885 | yes | 0.8085 |
| SPY | 5 | all-model common days | RF | D | 0.8782 | 0.8985 | 0.01907 | yes | 0.8094 |
| SPY | 5 | sets A-C common days | PER | A | 1.076 | 1.354 | 0.3725 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9297 |
| SPY | 5 | sets A-C common days | EN | A | 1 | 0.9992 | 0.3888 | yes | 0.9299 |
| SPY | 5 | sets A-C common days | RF | A | 0.9831 | 1.291 | 0.7173 | yes | 0.914 |
| SPY | 5 | sets A-C common days | EN | C | 3.943 | 0.9403 | 8.734e-07 | no | 3.666 |
| SPY | 5 | sets A-C common days | RF | C | 0.903 | 0.9122 | 0.04234 | yes | 0.8396 |
| SPY | 22 | all-model common days | PER | A | 0.7721 | 1.033 | 0.3878 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.295 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.0007572 | yes | 1.295 |
| SPY | 22 | all-model common days | RF | A | 0.9058 | 1.558 | 0.2962 | yes | 1.173 |
| SPY | 22 | all-model common days | EN | C | 0.8696 | 0.9344 | 0.08705 | yes | 1.126 |
| SPY | 22 | all-model common days | RF | C | 1.268 | 1.587 | 0.08927 | yes | 1.642 |
| SPY | 22 | all-model common days | EN | D | 0.9766 | 0.7739 | 0.8701 | yes | 1.265 |
| SPY | 22 | all-model common days | RF | D | 1.013 | 0.7891 | 0.8829 | yes | 1.311 |
| SPY | 22 | sets A-C common days | PER | A | 1.096 | 1.086 | 0.6495 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9125 |
| SPY | 22 | sets A-C common days | EN | A | 1.025 | 0.9882 | 0.1964 | yes | 0.9349 |
| SPY | 22 | sets A-C common days | RF | A | 0.9982 | 1.845 | 0.9845 | yes | 0.9109 |
| SPY | 22 | sets A-C common days | EN | C | 5.43 | 1.132 | 0.01998 | no | 4.955 |
| SPY | 22 | sets A-C common days | RF | C | 1.086 | 1.194 | 0.4238 | yes | 0.9907 |

