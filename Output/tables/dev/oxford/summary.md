# Results: dev period, scenario "oxford"

Generated 2026-10-16 15:57 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.292 | 1.06 | 1.291 | -1.075 | 0.2824 | 0.8588 | -1.173 | 0.2411 | no | 0.0116 | yes | 0.444 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2143 | 0.7915 | 0.2676 | 0.4518 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0116 | yes | 0.688 | 0 | 0.9433 | 0.1412 |
| EN | A | 2013 | 0.2143 | 0.7913 | 0.2676 | 0.4519 | 1 | 0.9998 | -1.365 | 0.1723 | 0.9138 | 1.114 | 0.2652 | no | 0.0116 | yes | 0.688 | 0 | 0.9433 | 0.1414 |
| RF | A | 2013 | 0.1901 | 0.7998 | 0.2507 | 0.446 | 0.8871 | 1.01 | 3.432 | 0.0006122 | 0.0003061 | -0.204 | 0.8384 | no | 0.0116 | yes | 0.444 | 0 | 0.8368 | 0.0001326 |
| EN | C | 2013 | 0.5627 | 0.7329 | 0.3181 | 0.4924 | 2.626 | 0.926 | -5.385 | 8.072e-08 | 1 | 1.059 | 0.2897 | no | 0.0078 | yes | 0.688 | 9.488 | 2.477 | 1 |
| RF | C | 2013 | 0.167 | 0.7735 | 0.246 | 0.4642 | 0.7791 | 0.9773 | 6.014 | 2.14e-09 | 1.07e-09 | 0.2478 | 0.8043 | yes | 0.6842 | yes | 0.688 | 0 | 0.7349 | 6.899e-11 |
| EN | COM | 2013 | 0.5167 | 0.7158 | 0.3002 | 0.5042 | 2.411 | 0.9044 | -5.008 | 5.985e-07 | 1 | 1.339 | 0.1807 | no | 0.0116 | yes | 1 | 8.843 | 2.274 | 1 |
| RF | COM | 2013 | 0.1661 | 0.7814 | 0.2509 | 0.4588 | 0.7749 | 0.9873 | 5.563 | 2.998e-08 | 1.499e-08 | 0.1347 | 0.8929 | yes | 1 | yes | 0.688 | 0 | 0.7309 | 2.753e-12 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9433 | 1.075 | 0.2824 | 0.1412 | 0.7744 | 1.173 | 0.2411 | 0.1205 | 0.0792 | 0.7994 |
| EN_A vs PER_A | 2013 | 0.9433 | 1.074 | 0.2828 | 0.1414 | 0.7742 | 1.173 | 0.2408 | 0.1204 | 0.0792 | 1 |
| RF_A vs PER_A | 2013 | 0.8368 | 3.654 | 0.0002651 | 0.0001326 | 0.7825 | 1.191 | 0.2339 | 0.117 | 1 | 0.7994 |
| EN_A vs HAR_A | 2013 | 1 | -1.365 | 0.1723 | 0.9138 | 0.9998 | 1.114 | 0.2652 | 0.1326 | 0.0792 | 1 |
| RF_A vs HAR_A | 2013 | 0.8871 | 3.432 | 0.0006122 | 0.0003061 | 1.01 | -0.204 | 0.8384 | 0.5808 | 1 | 0.7994 |
| RF_A vs EN_A | 2013 | 0.887 | 3.432 | 0.0006107 | 0.0003053 | 1.011 | -0.2083 | 0.835 | 0.5825 | 1 | 0.7994 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.3484 | -162.5 | 0.02315 | 12.17 | 0.3715 | 5.753 | 5.047e-09 | 1.009e-08 |
| A->C | MSE | 2013 | 0.0584 | 7.381 | 0.02624 | 3.281 | -0.03216 | -0.4975 | 0.6906 | 0.6189 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_COM | RF_COM |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2237 | 1.059 | 1 | 1 | 0.8851 | 2.539 | 0.7702 | 2.372 | 0.7645 |
| High RV (monthly RV > threshold) | 236 | 0.1441 | 1.072 | 1 | 0.9998 | 0.9106 | 3.632 | 0.8829 | 2.861 | 0.8955 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1893 | 1.07 | 1 | 1 | 0.8582 | 2.911 | 0.7796 | 2.685 | 0.7884 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4776 | 1.018 | 1 | 0.9999 | 1.007 | 1.438 | 0.7771 | 1.271 | 0.7184 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 | 1 | 0.9907 | 4.755 | 0.8854 | 4.345 | 0.8661 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5497 | 0.5253 | 0.5103 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.495 | 4 |
| HAR | A | 3.587 | 4 |
| EN | A | 3.587 | 4 |
| RF | A | 3.614 | 4 |
| EN | C | 2.647 | 4 |
| RF | C | 3.67 | 4 |
| EN | COM | 2.751 | 4 |
| RF | COM | 3.676 | 4 |

### Elastic net on set COM: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.2877 | 1 |
| iv_term | -0.1638 | 1 |
| negret_w | -0.1575 | 1 |
| parkinson_w | 0.1413 | 1 |
| negret_d | -0.1253 | 0.875 |
| om_rsn_w | 0.124 | 1 |
| om_C_w | 0.1198 | 1 |
| rv_w | 0.1101 | 1 |

### Random forest on set COM: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.2245 |
| om_C_d | 0.1508 |
| log_vxn | 0.1027 |
| negret_w | 0.08922 |
| log_rvx | 0.06392 |
| rv_d | 0.06247 |
| log_vix | 0.05718 |
| iv_atm_1m | 0.04492 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_COM | negret_m | 0 | 0 | 0.1 | 0.125 | 0.9986 |
| EN_COM | log_vix | 0 | 0.1 | 0.2 | 0.625 | 0.9863 |
| EN_COM | iv_atm_1m | 0 | 0.1 | 0.2 | 0.75 | 0.983 |
| EN_COM | iv_atm_3m | 0.1 | 0.15 | 0.3 | 1 | 0.9647 |
| EN_COM | iv_atm_1y | 0.2 | 0.25 | 0.4 | 1 | 0.9332 |
| EN_COM | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9414 |
| EN_COM | dgs10 | 0.25 | 0.325 | 0.35 | 1 | 0.9374 |
| EN_COM | log_vxn | 0 | 0.05 | 0.2 | 0.625 | 0.9911 |
| EN_COM | log_rvx | 0 | 0.075 | 0.2 | 0.625 | 0.988 |
| EN_COM | ads | 0 | 0 | 0.1 | 0.125 | 0.9988 |
| EN_COM | ciss | 0.1 | 0.175 | 0.35 | 1 | 0.9668 |
| EN_COM | news_sent | 0 | 0.125 | 0.3 | 0.875 | 0.9845 |
| EN_COM | stlfsi4 | 0 | 0.125 | 0.25 | 0.875 | 0.98 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 5

### Accuracy, all models on common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.3815 | 1.092 | 1.328 | -1.185 | 0.2363 | 0.8818 | -1.881 | 0.06007 | yes | 0.2138 | yes | 0.2078 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2035 | 0.4381 | 0.2663 | 0.5344 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3114 | yes | 0.8586 | 0 | 0.9159 | 0.1182 |
| EN | A | 2013 | 0.2039 | 0.4364 | 0.2667 | 0.5362 | 1.002 | 0.9962 | -1.372 | 0.1703 | 0.9148 | 1.004 | 0.3153 | yes | 0.2726 | yes | 0.8882 | 0 | 0.9176 | 0.1237 |
| RF | A | 2013 | 0.201 | 0.5811 | 0.2746 | 0.3825 | 0.9879 | 1.326 | 0.2736 | 0.7844 | 0.3922 | -2.269 | 0.02338 | yes | 0.3196 | no | 0.0874 | 0 | 0.9047 | 0.05945 |
| EN | C | 2013 | 0.6429 | 0.4268 | 0.3343 | 0.5464 | 3.159 | 0.9743 | -5.33 | 1.093e-07 | 1 | 0.3049 | 0.7605 | no | 0.0052 | yes | 0.947 | 9.687 | 2.893 | 1 |
| RF | C | 2013 | 0.1971 | 0.4195 | 0.2603 | 0.5541 | 0.9684 | 0.9576 | 0.8369 | 0.4027 | 0.2014 | 0.6499 | 0.5158 | yes | 0.3196 | yes | 0.9816 | 0 | 0.8869 | 0.05936 |
| EN | COM | 2013 | 0.5569 | 0.4189 | 0.3166 | 0.5548 | 2.737 | 0.9562 | -4.783 | 1.849e-06 | 1 | 0.5846 | 0.5589 | no | 0.011 | yes | 1 | 7.799 | 2.506 | 1 |
| RF | COM | 2013 | 0.1825 | 0.43 | 0.2555 | 0.543 | 0.897 | 0.9815 | 3.092 | 0.002014 | 0.001007 | 0.2668 | 0.7897 | yes | 1 | yes | 0.947 | 0 | 0.8215 | 0.004544 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9159 | 1.185 | 0.2363 | 0.1182 | 0.7528 | 1.881 | 0.06007 | 0.03004 | 0.8012 | 0.5404 |
| EN_A vs PER_A | 2013 | 0.9176 | 1.157 | 0.2474 | 0.1237 | 0.7499 | 1.885 | 0.05958 | 0.02979 | 0.7582 | 1 |
| RF_A vs PER_A | 2013 | 0.9047 | 1.56 | 0.1189 | 0.05945 | 0.9984 | 0.0275 | 0.9781 | 0.489 | 1 | 0.038 |
| EN_A vs HAR_A | 2013 | 1.002 | -1.372 | 0.1703 | 0.9148 | 0.9962 | 1.004 | 0.3153 | 0.1577 | 0.7582 | 1 |
| RF_A vs HAR_A | 2013 | 0.9879 | 0.2736 | 0.7844 | 0.3922 | 1.326 | -2.269 | 0.02338 | 0.9883 | 1 | 0.038 |
| RF_A vs EN_A | 2013 | 0.986 | 0.3136 | 0.7539 | 0.3769 | 1.331 | -2.261 | 0.02385 | 0.9881 | 1 | 0.038 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.439 | -215.3 | 0.003957 | 1.968 | 0.4429 | 5.33 | 5.464e-08 | 1.093e-07 |
| A->C | MSE | 2013 | 0.009601 | 2.2 | 0.1615 | 27.8 | 0.1519 | 2.71 | 0.003391 | 0.006782 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_COM | RF_COM |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2164 | 1.082 | 1 | 1.002 | 0.9703 | 2.984 | 0.967 | 2.726 | 0.8885 |
| High RV (monthly RV > threshold) | 236 | 0.1068 | 1.238 | 1 | 0.9996 | 1.256 | 5.831 | 0.9903 | 2.894 | 1.026 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1613 | 1.024 | 1 | 1.004 | 0.8923 | 3.888 | 0.9531 | 3.422 | 0.8645 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5865 | 1.26 | 1 | 0.9958 | 1.226 | 1.341 | 1.006 | 1.029 | 0.9778 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 | 1.006 | 0.9832 | 6.398 | 0.9463 | 5.527 | 0.8949 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.079 | 0.7203 | 1.09 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.493 | 4 |
| HAR | A | 3.595 | 4 |
| EN | A | 3.595 | 4 |
| RF | A | 3.578 | 4 |
| EN | C | 2.406 | 4 |
| RF | C | 3.601 | 4 |
| EN | COM | 2.631 | 4 |
| RF | COM | 3.627 | 4 |

### Elastic net on set COM: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_w | 0.1749 | 1 |
| iv_term | -0.1714 | 1 |
| negret_w | -0.1575 | 1 |
| stlfsi4 | 0.127 | 1 |
| om_C_w | 0.1022 | 1 |
| negret_m | -0.09505 | 1 |
| parkinson_d | 0.09424 | 0.875 |
| iv_atm_1m | 0.08945 | 1 |

### Random forest on set COM: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.2239 |
| log_vxn | 0.1127 |
| rv_d | 0.0598 |
| parkinson_w | 0.05425 |
| om_C_w | 0.0533 |
| iv_atm_1m | 0.04398 |
| om_C_d | 0.04215 |
| ciss | 0.04178 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_COM | negret_m | 0 | 0 | 0.1 | 0.125 | 0.9986 |
| EN_COM | log_vix | 0 | 0.1 | 0.2 | 0.625 | 0.9863 |
| EN_COM | iv_atm_1m | 0 | 0.1 | 0.2 | 0.75 | 0.983 |
| EN_COM | iv_atm_3m | 0.1 | 0.15 | 0.3 | 1 | 0.9647 |
| EN_COM | iv_atm_1y | 0.2 | 0.25 | 0.4 | 1 | 0.9332 |
| EN_COM | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9414 |
| EN_COM | dgs10 | 0.25 | 0.325 | 0.35 | 1 | 0.9374 |
| EN_COM | log_vxn | 0 | 0.05 | 0.2 | 0.625 | 0.9911 |
| EN_COM | log_rvx | 0 | 0.075 | 0.2 | 0.625 | 0.988 |
| EN_COM | ads | 0 | 0 | 0.1 | 0.125 | 0.9988 |
| EN_COM | ciss | 0.1 | 0.175 | 0.35 | 1 | 0.9668 |
| EN_COM | news_sent | 0 | 0.125 | 0.3 | 0.875 | 0.9845 |
| EN_COM | stlfsi4 | 0 | 0.125 | 0.25 | 0.875 | 0.98 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 22

### Accuracy, all models on common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5549 | 1.104 | 1.066 | -0.4934 | 0.6218 | 0.6891 | -0.7686 | 0.4422 | yes | 0.6836 | yes | 0.7964 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2566 | 0.2897 | 0.3456 | 0.5824 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7298 | yes | 0.7964 | 0 | 0.9056 | 0.3109 |
| EN | A | 2013 | 0.2593 | 0.2841 | 0.3502 | 0.5903 | 1.01 | 0.9809 | -1.063 | 0.2877 | 0.8561 | 0.6912 | 0.4895 | yes | 0.6836 | yes | 1 | 0 | 0.9151 | 0.331 |
| RF | A | 2013 | 0.2492 | 0.4319 | 0.337 | 0.3773 | 0.9713 | 1.491 | 0.3629 | 0.7167 | 0.3584 | -1.835 | 0.06671 | yes | 1 | yes | 0.293 | 0 | 0.8796 | 0.1694 |
| EN | C | 2013 | 1.021 | 0.3183 | 0.3926 | 0.5411 | 3.981 | 1.099 | -2.379 | 0.01743 | 0.9913 | -0.6876 | 0.4918 | no | 0.0456 | yes | 0.7964 | 8.097 | 3.605 | 0.9928 |
| RF | C | 2013 | 0.3268 | 0.4523 | 0.455 | 0.3479 | 1.274 | 1.561 | -2.031 | 0.04241 | 0.9788 | -2.56 | 0.01053 | yes | 0.294 | yes | 0.2544 | 0 | 1.153 | 0.7235 |
| EN | COM | 2013 | 1.056 | 0.338 | 0.4026 | 0.5126 | 4.117 | 1.167 | -2.321 | 0.02038 | 0.9898 | -1.247 | 0.2126 | no | 0.0674 | yes | 0.3376 | 7.899 | 3.729 | 0.9915 |
| RF | COM | 2013 | 0.3108 | 0.4639 | 0.4415 | 0.3311 | 1.211 | 1.602 | -1.654 | 0.09821 | 0.9509 | -2.314 | 0.02077 | yes | 0.4688 | yes | 0.293 | 0 | 1.097 | 0.6488 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9056 | 0.4934 | 0.6218 | 0.3109 | 0.9383 | 0.7686 | 0.4422 | 0.2211 | 0.7298 | 0.5554 |
| EN_A vs PER_A | 2013 | 0.9151 | 0.4372 | 0.662 | 0.331 | 0.9204 | 0.8401 | 0.401 | 0.2005 | 0.6836 | 1 |
| RF_A vs PER_A | 2013 | 0.8796 | 0.9568 | 0.3388 | 0.1694 | 1.399 | -1.817 | 0.06931 | 0.9653 | 1 | 0.0916 |
| EN_A vs HAR_A | 2013 | 1.01 | -1.063 | 0.2877 | 0.8561 | 0.9809 | 0.6912 | 0.4895 | 0.2447 | 0.6836 | 1 |
| RF_A vs HAR_A | 2013 | 0.9713 | 0.3629 | 0.7167 | 0.3584 | 1.491 | -1.835 | 0.06671 | 0.9666 | 1 | 0.0916 |
| RF_A vs EN_A | 2013 | 0.9612 | 0.4733 | 0.6361 | 0.318 | 1.52 | -1.81 | 0.07051 | 0.9647 | 1 | 0.0916 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.7621 | -294 | -0.07757 | -31.13 | 0.6846 | 2.012 | 0.0222 | 0.0444 |
| A->C | MSE | 2013 | -0.03414 | -12.02 | -0.02041 | -4.726 | 0.01373 | 0.1225 | 0.4512 | 0.9025 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_COM | RF_COM |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2727 | 1.09 | 1 | 1.012 | 0.9485 | 3.39 | 1.302 | 3.464 | 1.235 |
| High RV (monthly RV > threshold) | 236 | 0.1352 | 1.325 | 1 | 0.9924 | 1.317 | 12.95 | 0.837 | 14.03 | 0.854 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2181 | 0.6466 | 1 | 1.026 | 0.7736 | 2.946 | 1.458 | 2.936 | 1.361 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5721 | 2.533 | 1 | 0.9604 | 1.588 | 7.211 | 0.6982 | 7.807 | 0.7452 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 | 1.028 | 1.112 | 9.007 | 1.337 | 9.517 | 1.291 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.7114 | 0.9863 | 0.6907 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.329 | 4 |
| HAR | A | 3.519 | 4 |
| EN | A | 3.517 | 4 |
| RF | A | 3.49 | 4 |
| EN | C | 1.245 | 4 |
| RF | C | 3.446 | 4 |
| EN | COM | 1.133 | 4 |
| RF | COM | 3.468 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2013 | 119.7 | 5.902 | 109.6 | 5.211 | NaN | NaN | 1 |
| PER_A | 2013 | 91.12 | 4.45 | 81.96 | 3.806 | 0.8043 | 0.2463 | 0.93 |
| HAR_A | 2013 | 71 | 3.471 | 58.58 | 2.876 | 0.545 | 0.3664 | 0.5445 |
| EN_A | 2013 | 68.18 | 3.354 | 56.41 | 2.825 | 0.5315 | 0.3833 | 0.5261 |
| RF_A | 2013 | 73.1 | 3.517 | 63.06 | 3.164 | 0.698 | 0.1328 | 0.7928 |
| EN_C | 2013 | 59.71 | 2.802 | 52.46 | 2.754 | 0.5574 | 0.3991 | 0.5738 |
| RF_C | 2013 | 68.16 | 3.448 | 61.67 | 3.572 | 0.5882 | 0.255 | 0.6026 |
| EN_COM | 2013 | 53.25 | 2.539 | 48.14 | 2.571 | 0.5594 | 0.3827 | 0.5738 |
| RF_COM | 2013 | 59.26 | 2.775 | 46.75 | 2.119 | 0.6085 | 0.2065 | 0.6379 |

### Elastic net on set COM: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| ads | -0.2639 | 0.875 |
| stlfsi4 | 0.2306 | 1 |
| iv_atm_1m | 0.1858 | 0.625 |
| iv_term | -0.1743 | 1 |
| negret_w | -0.1281 | 1 |
| parkinson_w | 0.1143 | 1 |
| iv_atm_3m | -0.101 | 0.5 |
| om_rsn_w | 0.1 | 0.875 |

### Random forest on set COM: impurity importance (share)

| feature | mean_importance |
|---|---|
| ads | 0.2751 |
| ciss | 0.1513 |
| iv_term | 0.1082 |
| nfci | 0.1028 |
| parkinson_w | 0.0995 |
| om_C_w | 0.03389 |
| negret_w | 0.02443 |
| rv_w | 0.02423 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_COM | negret_m | 0 | 0 | 0.1 | 0.125 | 0.9986 |
| EN_COM | log_vix | 0 | 0.1 | 0.2 | 0.625 | 0.9863 |
| EN_COM | iv_atm_1m | 0 | 0.1 | 0.2 | 0.75 | 0.983 |
| EN_COM | iv_atm_3m | 0.1 | 0.15 | 0.3 | 1 | 0.9647 |
| EN_COM | iv_atm_1y | 0.2 | 0.25 | 0.4 | 1 | 0.9332 |
| EN_COM | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9414 |
| EN_COM | dgs10 | 0.25 | 0.325 | 0.35 | 1 | 0.9374 |
| EN_COM | log_vxn | 0 | 0.05 | 0.2 | 0.625 | 0.9911 |
| EN_COM | log_rvx | 0 | 0.075 | 0.2 | 0.625 | 0.988 |
| EN_COM | ads | 0 | 0 | 0.1 | 0.125 | 0.9988 |
| EN_COM | ciss | 0.1 | 0.175 | 0.35 | 1 | 0.9668 |
| EN_COM | news_sent | 0 | 0.125 | 0.3 | 0.875 | 0.9845 |
| EN_COM | stlfsi4 | 0 | 0.125 | 0.25 | 0.875 | 0.98 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_COM | 0.7749 | 1.499e-08 | yes | yes | 0.7309 | yes | HAR_A EN_A EN_C EN_COM | NaN | NaN |
| SPY | 5 | RF_COM | 0.897 | 0.001007 | yes | yes | 0.8215 | yes | HAR_A EN_A RF_A EN_C RF_C EN_COM | NaN | NaN |
| SPY | 22 | RF_A | 0.9713 | 0.3584 | yes | no | 0.8796 | no | HAR_A EN_A RF_A EN_C RF_C EN_COM RF_COM | 63.06 | 0.1328 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.06 | 1.291 | 0.2824 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.9433 |
| SPY | 1 | all-model common days | EN | A | 1 | 0.9998 | 0.1723 | no | 0.9433 |
| SPY | 1 | all-model common days | RF | A | 0.8871 | 1.01 | 0.0006122 | no | 0.8368 |
| SPY | 1 | all-model common days | EN | C | 2.626 | 0.926 | 8.072e-08 | no | 2.477 |
| SPY | 1 | all-model common days | RF | C | 0.7791 | 0.9773 | 2.14e-09 | yes | 0.7349 |
| SPY | 1 | all-model common days | EN | COM | 2.411 | 0.9044 | 5.985e-07 | no | 2.274 |
| SPY | 1 | all-model common days | RF | COM | 0.7749 | 0.9873 | 2.998e-08 | yes | 0.7309 |
| SPY | 5 | all-model common days | PER | A | 1.092 | 1.328 | 0.2363 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9159 |
| SPY | 5 | all-model common days | EN | A | 1.002 | 0.9962 | 0.1703 | yes | 0.9176 |
| SPY | 5 | all-model common days | RF | A | 0.9879 | 1.326 | 0.7844 | yes | 0.9047 |
| SPY | 5 | all-model common days | EN | C | 3.159 | 0.9743 | 1.093e-07 | no | 2.893 |
| SPY | 5 | all-model common days | RF | C | 0.9684 | 0.9576 | 0.4027 | yes | 0.8869 |
| SPY | 5 | all-model common days | EN | COM | 2.737 | 0.9562 | 1.849e-06 | no | 2.506 |
| SPY | 5 | all-model common days | RF | COM | 0.897 | 0.9815 | 0.002014 | yes | 0.8215 |
| SPY | 22 | all-model common days | PER | A | 1.104 | 1.066 | 0.6218 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9056 |
| SPY | 22 | all-model common days | EN | A | 1.01 | 0.9809 | 0.2877 | yes | 0.9151 |
| SPY | 22 | all-model common days | RF | A | 0.9713 | 1.491 | 0.7167 | yes | 0.8796 |
| SPY | 22 | all-model common days | EN | C | 3.981 | 1.099 | 0.01743 | no | 3.605 |
| SPY | 22 | all-model common days | RF | C | 1.274 | 1.561 | 0.04241 | yes | 1.153 |
| SPY | 22 | all-model common days | EN | COM | 4.117 | 1.167 | 0.02038 | no | 3.729 |
| SPY | 22 | all-model common days | RF | COM | 1.211 | 1.602 | 0.09821 | yes | 1.097 |

