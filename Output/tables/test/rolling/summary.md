# Results: test period, scenario "rolling"

Generated 2026-10-21 23:42 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2118)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2118 | 0.3079 | 2.867 | 0.4628 | 0.4177 | 1.298 | 1.191 | -6.284 | 3.997e-10 | 1 | -1.223 | 0.2214 | no | 0.0032 | yes | 0.8294 | 0 | 1 | NaN |
| HAR | A | 2118 | 0.2372 | 2.407 | 0.4401 | 0.5111 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6364 | yes | 0.908 | 0 | 0.7704 | 1.998e-10 |
| EN | A | 2118 | 0.2357 | 2.39 | 0.4385 | 0.5145 | 0.9935 | 0.9931 | 1.619 | 0.1055 | 0.05277 | 1.049 | 0.2945 | yes | 0.7262 | yes | 1 | 0 | 0.7654 | 8.404e-11 |
| RF | A | 2118 | 0.254 | 3.539 | 0.482 | 0.2812 | 1.071 | 1.47 | -1.06 | 0.2893 | 0.8554 | -1.049 | 0.2942 | yes | 0.2956 | yes | 0.615 | 0 | 0.8249 | 0.001534 |
| EN | C | 2118 | 0.3139 | 2.715 | 0.45 | 0.4486 | 1.323 | 1.128 | -2.479 | 0.01326 | 0.9934 | -0.6368 | 0.5243 | yes | 0.19 | yes | 0.8294 | 1.275 | 1.019 | 0.5715 |
| RF | C | 2118 | 0.221 | 3.042 | 0.4503 | 0.3821 | 0.9314 | 1.264 | 1.396 | 0.1629 | 0.08145 | -0.6761 | 0.4991 | yes | 1 | yes | 0.8294 | 0 | 0.7176 | 1.284e-08 |
| EN | D | 2118 | 0.2355 | 2.435 | 0.4279 | 0.5054 | 0.9925 | 1.012 | 0.1425 | 0.8867 | 0.4434 | -0.1105 | 0.912 | yes | 0.7262 | yes | 0.908 | 0.1416 | 0.7647 | 6.829e-06 |
| RF | D | 2118 | 0.2242 | 3.157 | 0.4498 | 0.3589 | 0.9449 | 1.312 | 0.9351 | 0.3499 | 0.1749 | -0.7155 | 0.4744 | yes | 0.7262 | yes | 0.7676 | 0 | 0.728 | 1.073e-06 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2120 | 0.7709 | 6.275 | 4.238e-10 | 2.119e-10 | 0.8395 | 1.223 | 0.2214 | 0.1107 | 0.4298 | 0.6184 |
| EN_A vs PER_A | 2120 | 0.7659 | 6.41 | 1.785e-10 | 8.923e-11 | 0.8337 | 1.247 | 0.2127 | 0.1063 | 1 | 1 |
| RF_A vs PER_A | 2120 | 0.8255 | 2.956 | 0.003151 | 0.001575 | 1.234 | -0.5641 | 0.5728 | 0.7136 | 0.4298 | 0.6184 |
| EN_A vs HAR_A | 2120 | 0.9935 | 1.62 | 0.1055 | 0.05273 | 0.9931 | 1.049 | 0.2945 | 0.1472 | 1 | 1 |
| RF_A vs HAR_A | 2120 | 1.071 | -1.063 | 0.2878 | 0.8561 | 1.47 | -1.049 | 0.2942 | 0.8529 | 0.4298 | 0.6184 |
| RF_A vs EN_A | 2120 | 1.078 | -1.163 | 0.2451 | 0.8775 | 1.481 | -1.066 | 0.2864 | 0.8568 | 0.4298 | 0.6184 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2120 | -0.07803 | -33.09 | 0.03321 | 13.07 | 0.1112 | 3.639 | 0.0001404 | 0.0002808 |
| A->C | MSE | 2120 | -0.3241 | -13.57 | 0.4967 | 14.05 | 0.8209 | 1.287 | 0.09911 | 0.1982 |
| A->D | QLIKE | 2118 | 0.0002295 | 0.09738 | 0.02985 | 11.75 | 0.02962 | 2.383 | 0.008639 | 0.01728 |
| A->D | MSE | 2118 | -0.04466 | -1.868 | 0.3825 | 10.81 | 0.4272 | 1.394 | 0.08176 | 0.1635 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1608 | 0.2375 | 1.363 | 1 | 0.9977 | 0.9897 | 1.467 | 0.9258 | 1.051 | 0.9227 |
| High RV (monthly RV > threshold) | 510 | 0.2363 | 1.091 | 1 | 0.9802 | 1.328 | 0.8663 | 0.9494 | 0.8059 | 1.015 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2019 | 1.398 | 1 | 0.9937 | 1.01 | 1.501 | 0.9836 | 1.068 | 0.9606 |
| Extreme days (target > Q3 + 1.5 IQR) | 183 | 0.6105 | 0.9485 | 1 | 0.9929 | 1.282 | 0.6999 | 0.7488 | 0.7301 | 0.8899 |
| Feb 2018 Volmageddon | 17 | 0.1375 | 1.513 | 1 | 1 | 1.308 | 0.7614 | 1.352 | 1.057 | 1.526 |
| COVID 2020 | 70 | 0.3613 | 0.8352 | 1 | 1 | 2.638 | 1.232 | 1.645 | 0.9062 | 2.049 |
| 2022 bear market | 203 | 0.1727 | 1.195 | 1 | 1 | 1.041 | 0.7761 | 0.6918 | 0.6854 | 0.7339 |
| Apr 2025 tariffs | 42 | 0.5066 | 0.685 | 1 | 0.8881 | 0.6961 | 0.6314 | 0.419 | 0.6779 | 0.4111 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.307 | 4 |
| HAR | A | 3.529 | 4 |
| EN | A | 3.534 | 4 |
| RF | A | 3.464 | 4 |
| EN | C | 3.322 | 4 |
| RF | C | 3.572 | 4 |
| EN | D | 3.529 | 4 |
| RF | D | 3.556 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06885 | 1 |
| negret_w | -0.05956 | 1 |
| vix9d_spread | 0.05287 | 1 |
| es_rsn_d | 0.05251 | 1 |
| vrp | 0.05019 | 1 |
| es_rk_d | 0.04959 | 1 |
| es_C_d | 0.04914 | 1 |
| overnight_d | 0.04288 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.1817 |
| negret_w | 0.1244 |
| es_C_d | 0.09645 |
| es_rsn_d | 0.06492 |
| vix3m_spread | 0.06141 |
| es_rk_d | 0.0608 |
| rv_d | 0.04058 |
| iv_term | 0.03988 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9458 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.4 | 1 | 0.9554 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 27.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2135)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2135 | 0.2937 | 2.226 | 0.4699 | 0.387 | 1.288 | 1.082 | -4.154 | 3.399e-05 | 1 | -0.3426 | 0.7319 | no | 0.0844 | yes | 0.9072 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.228 | 2.058 | 0.4461 | 0.4333 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7486 | yes | 0.9072 | 0 | 0.7762 | 1.7e-05 |
| EN | A | 2135 | 0.2253 | 2.031 | 0.4431 | 0.4406 | 0.9883 | 0.9871 | 1.906 | 0.05677 | 0.02839 | 1.168 | 0.2429 | yes | 0.7486 | yes | 0.9072 | 0 | 0.7672 | 1.037e-05 |
| RF | A | 2135 | 0.2829 | 3.078 | 0.506 | 0.1524 | 1.241 | 1.496 | -1.687 | 0.09169 | 0.9542 | -1.16 | 0.2461 | no | 0.0844 | yes | 0.492 | 0 | 0.9633 | 0.3888 |
| EN | C | 2135 | 0.4811 | 2.224 | 0.4415 | 0.3876 | 2.11 | 1.081 | -2.939 | 0.003329 | 0.9983 | -0.4154 | 0.6779 | no | 0.0844 | yes | 0.9072 | 1.124 | 1.638 | 0.9848 |
| RF | C | 2135 | 0.2404 | 2.921 | 0.4773 | 0.1957 | 1.054 | 1.419 | -0.4094 | 0.6823 | 0.6588 | -1.002 | 0.3163 | yes | 0.7486 | yes | 0.6372 | 0 | 0.8185 | 0.07744 |
| EN | D | 2135 | 0.2059 | 1.943 | 0.4142 | 0.465 | 0.9031 | 0.9441 | 1.641 | 0.101 | 0.05049 | 0.5156 | 0.6062 | yes | 1 | yes | 1 | 0 | 0.701 | 2.398e-05 |
| RF | D | 2135 | 0.2437 | 3.06 | 0.504 | 0.1573 | 1.069 | 1.487 | -0.5199 | 0.6032 | 0.6984 | -1.158 | 0.2471 | yes | 0.6356 | yes | 0.492 | 0 | 0.8298 | 0.08984 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2135 | 0.7762 | 4.154 | 3.399e-05 | 1.7e-05 | 0.9246 | 0.3426 | 0.7319 | 0.366 | 0.124 | 0.5776 |
| EN_A vs PER_A | 2135 | 0.7672 | 4.266 | 2.073e-05 | 1.037e-05 | 0.9127 | 0.3896 | 0.6969 | 0.3485 | 1 | 1 |
| RF_A vs PER_A | 2135 | 0.9633 | 0.2826 | 0.7775 | 0.3888 | 1.383 | -0.7445 | 0.4567 | 0.7717 | 0.0936 | 0.5776 |
| EN_A vs HAR_A | 2135 | 0.9883 | 1.906 | 0.05677 | 0.02839 | 0.9871 | 1.168 | 0.2429 | 0.1215 | 1 | 1 |
| RF_A vs HAR_A | 2135 | 1.241 | -1.687 | 0.09169 | 0.9542 | 1.496 | -1.16 | 0.2461 | 0.877 | 0.0936 | 0.5776 |
| RF_A vs EN_A | 2135 | 1.256 | -1.771 | 0.07674 | 0.9616 | 1.515 | -1.194 | 0.2327 | 0.8836 | 0.0936 | 0.5776 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2135 | -0.2558 | -113.5 | 0.04255 | 15.04 | 0.2983 | 3.469 | 0.000266 | 0.000532 |
| A->C | MSE | 2135 | -0.1925 | -9.477 | 0.1572 | 5.108 | 0.3497 | 0.8623 | 0.1943 | 0.3886 |
| A->D | QLIKE | 2135 | 0.01944 | 8.626 | 0.03922 | 13.86 | 0.01979 | 1.573 | 0.0579 | 0.1158 |
| A->D | MSE | 2135 | 0.08858 | 4.361 | 0.01786 | 0.5803 | -0.07072 | -0.3166 | 0.6242 | 0.7516 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1619 | 0.2117 | 1.395 | 1 | 0.9968 | 1.057 | 2.149 | 0.9092 | 0.9631 | 0.9081 |
| High RV (monthly RV > threshold) | 516 | 0.279 | 1.033 | 1 | 0.9683 | 1.678 | 2.018 | 1.4 | 0.7601 | 1.452 |
| Normal days (target <= Q3 + 1.5 IQR) | 1950 | 0.159 | 1.448 | 1 | 0.9862 | 1.128 | 2.89 | 0.9988 | 1.017 | 1.027 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.9556 | 1.009 | 1 | 0.992 | 1.44 | 0.7427 | 1.152 | 0.703 | 1.143 |
| Feb 2018 Volmageddon | 15 | 0.1404 | 1.729 | 1 | 1 | 1.186 | 0.5175 | 1.111 | 1.036 | 1.028 |
| COVID 2020 | 70 | 0.8292 | 0.8323 | 1 | 1 | 2.409 | 0.9004 | 2.146 | 0.8334 | 2.112 |
| 2022 bear market | 206 | 0.1788 | 0.9382 | 1 | 1 | 1.123 | 6.181 | 0.6809 | 0.6131 | 0.9277 |
| Apr 2025 tariffs | 42 | 1.093 | 1.04 | 1 | 0.9228 | 1.01 | 0.6295 | 0.7902 | 0.5534 | 0.665 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.323 | 4 |
| HAR | A | 3.51 | 4 |
| EN | A | 3.517 | 4 |
| RF | A | 3.358 | 4 |
| EN | C | 2.738 | 4 |
| RF | C | 3.475 | 4 |
| EN | D | 3.566 | 4 |
| RF | D | 3.471 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.04615 | 1 |
| vrp | 0.04585 | 1 |
| vix9d_spread | 0.04343 | 1 |
| parkinson_d | 0.04336 | 1 |
| vix3m_spread | -0.04301 | 1 |
| es_J_w | 0.04246 | 1 |
| es_rsn_d | 0.04149 | 1 |
| es_rk_d | 0.03986 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1543 |
| negret_w | 0.1175 |
| vix3m_spread | 0.05915 |
| log_vxn | 0.05887 |
| es_rsn_d | 0.05284 |
| es_J_w | 0.04887 |
| es_C_d | 0.04642 |
| rv_w | 0.04586 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9458 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.4 | 1 | 0.9554 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 9.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-09-01, n = 2109)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2109 | 0.5021 | 3.151 | 0.6183 | -0.3579 | 1.316 | 1.601 | -1.594 | 0.1111 | 0.9444 | -1.219 | 0.2231 | yes | 0.3264 | yes | 0.4842 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3814 | 1.968 | 0.5185 | 0.152 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3264 | yes | 0.8438 | 0 | 0.7597 | 0.05556 |
| EN | A | 2109 | 0.3757 | 1.92 | 0.5109 | 0.1728 | 0.985 | 0.9754 | 1.423 | 0.1548 | 0.07738 | 1.374 | 0.1696 | yes | 1 | yes | 1 | 0 | 0.7483 | 0.0531 |
| RF | A | 2109 | 0.4219 | 2.174 | 0.5469 | 0.06306 | 1.106 | 1.105 | -1.191 | 0.2337 | 0.8831 | -0.8252 | 0.4094 | yes | 0.3264 | yes | 0.4842 | 0 | 0.8404 | 0.09096 |
| EN | C | 2109 | 1.645 | 1.937 | 0.5307 | 0.1653 | 4.312 | 0.9843 | -1.775 | 0.07609 | 0.962 | 0.2356 | 0.8138 | yes | 0.1158 | yes | 0.9732 | 1.233 | 3.276 | 0.9435 |
| RF | C | 2109 | 0.4698 | 2.2 | 0.5962 | 0.05209 | 1.232 | 1.118 | -1.771 | 0.07662 | 0.9617 | -0.7943 | 0.4271 | yes | 0.3264 | yes | 0.5084 | 0 | 0.9357 | 0.3175 |
| EN | D | 2109 | 2.351 | 1.925 | 0.5363 | 0.1705 | 6.164 | 0.9782 | -2.183 | 0.02914 | 0.9854 | 0.383 | 0.7018 | no | 0.0648 | yes | 0.9732 | 2.323 | 4.683 | 0.9787 |
| RF | D | 2109 | 0.4299 | 2.114 | 0.5326 | 0.08921 | 1.127 | 1.074 | -1.143 | 0.2531 | 0.8735 | -0.5197 | 0.6033 | yes | 0.3264 | yes | 0.765 | 0 | 0.8563 | 0.1275 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2109 | 0.7597 | 1.594 | 0.1111 | 0.05556 | 0.6245 | 1.219 | 0.2231 | 0.1116 | 0.2132 | 0.3866 |
| EN_A vs PER_A | 2109 | 0.7483 | 1.616 | 0.1062 | 0.0531 | 0.6092 | 1.229 | 0.2192 | 0.1096 | 1 | 1 |
| RF_A vs PER_A | 2109 | 0.8404 | 1.335 | 0.1819 | 0.09096 | 0.69 | 1.033 | 0.3015 | 0.1507 | 0.2132 | 0.3866 |
| EN_A vs HAR_A | 2109 | 0.985 | 1.423 | 0.1548 | 0.07738 | 0.9754 | 1.374 | 0.1696 | 0.0848 | 1 | 1 |
| RF_A vs HAR_A | 2109 | 1.106 | -1.191 | 0.2337 | 0.8831 | 1.105 | -0.8252 | 0.4094 | 0.7953 | 0.2132 | 0.3866 |
| RF_A vs EN_A | 2109 | 1.123 | -1.316 | 0.1884 | 0.9058 | 1.133 | -1.022 | 0.3071 | 0.8464 | 0.2132 | 0.3866 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2109 | -1.269 | -337.8 | -0.04786 | -11.34 | 1.221 | 1.705 | 0.0442 | 0.0884 |
| A->C | MSE | 2109 | -0.01752 | -0.9127 | -0.02545 | -1.171 | -0.007933 | -0.0771 | 0.5307 | 0.9386 |
| A->D | QLIKE | 2109 | -1.975 | -525.8 | -0.007995 | -1.895 | 1.967 | 2.176 | 0.01485 | 0.0297 |
| A->D | MSE | 2109 | -0.005493 | -0.2862 | 0.06069 | 2.791 | 0.06618 | 0.6667 | 0.2525 | 0.5051 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1593 | 0.3861 | 1.399 | 1 | 0.9877 | 1.052 | 3.606 | 1.18 | 3.708 | 1.053 |
| High RV (monthly RV > threshold) | 516 | 0.367 | 1.046 | 1 | 0.9764 | 1.282 | 6.606 | 1.401 | 14.14 | 1.368 |
| Normal days (target <= Q3 + 1.5 IQR) | 1966 | 0.1802 | 1.386 | 1 | 0.9952 | 1.128 | 5.47 | 1.322 | 9.251 | 1.102 |
| Extreme days (target > Q3 + 1.5 IQR) | 143 | 3.148 | 1.262 | 1 | 0.9771 | 1.089 | 3.402 | 1.16 | 3.735 | 1.147 |
| Feb 2018 Volmageddon | 14 | 0.0722 | 1.044 | 1 | 1 | 1.887 | 2.346 | 4.056 | 2.245 | 2.807 |
| COVID 2020 | 70 | 2.131 | 1.487 | 1 | 0.9934 | 1.302 | 0.9072 | 1.59 | 0.8759 | 1.496 |
| 2022 bear market | 206 | 0.3246 | 0.755 | 1 | 0.9832 | 0.898 | 33.68 | 0.75 | 43.79 | 0.8152 |
| Apr 2025 tariffs | 42 | 0.3882 | 2.15 | 1 | 0.9942 | 1.322 | 0.6067 | 0.8095 | 0.6074 | 0.7524 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.701 | 4 |
| HAR | A | 3.061 | 4 |
| EN | A | 3.079 | 4 |
| RF | A | 2.95 | 4 |
| EN | C | -1.144 | 4 |
| RF | C | 2.885 | 4 |
| EN | D | -3.522 | 4 |
| RF | D | 2.941 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 89.01 | 1.842 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 47.51 | 0.9904 | 37.52 | 0.5713 | 0.7321 | -0.1066 | 0.8241 |
| HAR_A | 2109 | 65.85 | 1.597 | 49.07 | 0.8627 | 0.6818 | 0.06677 | 0.7653 |
| EN_A | 2109 | 67.96 | 1.632 | 49.91 | 0.8751 | 0.6795 | 0.08492 | 0.7686 |
| RF_A | 2109 | 59.76 | 1.297 | 33.93 | 0.5152 | 0.6671 | 0.08237 | 0.7658 |
| EN_C | 2109 | 78.91 | 1.706 | 54.4 | 0.82 | 0.7112 | 0.09981 | 0.8241 |
| RF_C | 2109 | 41.27 | 0.8605 | 13.92 | 0.2072 | 0.6088 | 0.07965 | 0.7226 |
| EN_D | 2109 | 73.13 | 1.566 | 52.05 | 0.7814 | 0.7141 | 0.09666 | 0.844 |
| RF_D | 2109 | 49.4 | 1.059 | 26.93 | 0.406 | 0.6415 | 0.08918 | 0.7677 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1284 | 1 |
| es_J_w | 0.06947 | 0.8889 |
| rv_d | 0.05623 | 1 |
| iv_skew_1m | 0.04893 | 1 |
| dgs10 | -0.04175 | 1 |
| negret_w | -0.0417 | 0.8889 |
| vix9d_spread | 0.02612 | 1 |
| vrp | 0.02452 | 0.8889 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.04642 |
| log_vxn | 0.04546 |
| es_C_d | 0.04495 |
| es_rsn_d | 0.04248 |
| negret_w | 0.04101 |
| negret_m | 0.03542 |
| es_rk_d | 0.0353 |
| log_vix | 0.03492 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_D | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9458 |
| EN_D | dgs10 | 0.1 | 0.25 | 0.4 | 1 | 0.9554 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.2339 | 6.124 | 0.7095 | 0.5861 | 1.185 | 1.103 | -5.139 | 3.008e-07 | 1 | -0.5991 | 0.5492 | yes | 0.1988 | yes | 0.6404 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.1974 | 5.552 | 0.6821 | 0.6247 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.4568 | yes | 0.6404 | 0 | 0.8439 | 1.504e-07 |
| EN | A | 2197 | 0.1944 | 5.522 | 0.6792 | 0.6267 | 0.9851 | 0.9946 | 1.776 | 0.07587 | 0.03794 | 1.013 | 0.3112 | yes | 0.4942 | yes | 1 | 0 | 0.8314 | 1.647e-08 |
| RF | A | 2197 | 0.2552 | 12.26 | 0.8577 | 0.1714 | 1.293 | 2.208 | -1.553 | 0.1206 | 0.9397 | -1.344 | 0.1791 | yes | 0.4568 | yes | 0.2994 | 0 | 1.091 | 0.7106 |
| EN | C | 2197 | 0.3084 | 8.244 | 0.7873 | 0.4428 | 1.562 | 1.485 | -3.362 | 0.0007863 | 0.9996 | -1.145 | 0.2523 | yes | 0.1144 | yes | 0.4426 | 1.821 | 1.318 | 0.986 |
| RF | C | 2197 | 0.1869 | 7.741 | 0.7256 | 0.4768 | 0.9468 | 1.394 | 1.284 | 0.1994 | 0.0997 | -0.8731 | 0.3827 | yes | 0.842 | yes | 0.618 | 0 | 0.7991 | 5.871e-06 |
| EN | D | 2197 | 0.2242 | 7.473 | 0.7351 | 0.4949 | 1.136 | 1.346 | -2.1 | 0.03588 | 0.9821 | -1.061 | 0.289 | yes | 0.4568 | yes | 0.5678 | 0.7283 | 0.9585 | 0.2554 |
| RF | D | 2197 | 0.1865 | 7.726 | 0.7146 | 0.4778 | 0.9449 | 1.391 | 1.39 | 0.1648 | 0.08241 | -0.8465 | 0.3974 | yes | 1 | yes | 0.6404 | 0 | 0.7975 | 1.775e-06 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2197 | 0.8439 | 5.139 | 3.008e-07 | 1.504e-07 | 0.9067 | 0.5991 | 0.5492 | 0.2746 | 0.5312 | 0.3878 |
| EN_A vs PER_A | 2197 | 0.8314 | 5.545 | 3.294e-08 | 1.647e-08 | 0.9018 | 0.6277 | 0.5303 | 0.2651 | 1 | 1 |
| RF_A vs PER_A | 2197 | 1.091 | -0.5551 | 0.5789 | 0.7106 | 2.002 | -1.15 | 0.2504 | 0.8748 | 0.5312 | 0.3878 |
| EN_A vs HAR_A | 2197 | 0.9851 | 1.776 | 0.07587 | 0.03794 | 0.9946 | 1.013 | 0.3112 | 0.1556 | 1 | 1 |
| RF_A vs HAR_A | 2197 | 1.293 | -1.553 | 0.1206 | 0.9397 | 2.208 | -1.344 | 0.1791 | 0.9105 | 0.5312 | 0.3878 |
| RF_A vs EN_A | 2197 | 1.313 | -1.631 | 0.1031 | 0.9485 | 2.22 | -1.35 | 0.1772 | 0.9114 | 0.5312 | 0.3878 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2197 | -0.1139 | -58.59 | 0.06833 | 26.78 | 0.1823 | 3.756 | 8.849e-05 | 0.000177 |
| A->C | MSE | 2197 | -2.721 | -49.28 | 4.518 | 36.86 | 7.24 | 1.478 | 0.06981 | 0.1396 |
| A->D | QLIKE | 2197 | -0.02974 | -15.29 | 0.06871 | 26.92 | 0.09844 | 2.602 | 0.004668 | 0.009336 |
| A->D | MSE | 2197 | -1.95 | -35.32 | 4.533 | 36.98 | 6.484 | 1.507 | 0.06597 | 0.1319 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1459 | 0.1985 | 1.213 | 1 | 0.9951 | 0.9927 | 1.866 | 0.9711 | 1.242 | 0.9685 |
| High RV (monthly RV > threshold) | 738 | 0.1952 | 1.129 | 1 | 0.9651 | 1.897 | 0.9516 | 0.898 | 0.9227 | 0.8975 |
| Normal days (target <= Q3 + 1.5 IQR) | 2007 | 0.1644 | 1.269 | 1 | 0.9817 | 1.04 | 1.802 | 1.033 | 1.244 | 1.013 |
| Extreme days (target > Q3 + 1.5 IQR) | 190 | 0.5456 | 0.9174 | 1 | 0.996 | 2.099 | 0.799 | 0.6711 | 0.7913 | 0.7268 |
| Feb 2018 Volmageddon | 43 | 0.3864 | 0.9705 | 1 | 1 | 0.9619 | 0.6443 | 0.9902 | 0.7005 | 1.008 |
| COVID 2020 | 70 | 0.2328 | 0.7546 | 1 | 1 | 8.454 | 1.908 | 1.486 | 1.574 | 1.497 |
| 2022 bear market | 209 | 0.167 | 1.171 | 1 | 1 | 1.182 | 1.455 | 0.7296 | 0.8977 | 0.7684 |
| Apr 2025 tariffs | 42 | 0.5089 | 0.8172 | 1 | 0.7954 | 1.132 | 0.593 | 0.499 | 0.5556 | 0.5284 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.478 | 4 |
| HAR | A | 3.597 | 4 |
| EN | A | 3.604 | 4 |
| RF | A | 3.427 | 4 |
| EN | C | 3.308 | 4 |
| RF | C | 3.634 | 4 |
| EN | D | 3.535 | 4 |
| RF | D | 3.631 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1653 | 1 |
| negret_w | -0.1395 | 1 |
| es_rsn_d | 0.1227 | 1 |
| vix9d_spread | 0.1182 | 1 |
| es_C_d | 0.1167 | 1 |
| es_rk_d | 0.1127 | 1 |
| rv_d | 0.1076 | 1 |
| es_rsn_w | 0.1033 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.2149 |
| vix9d_spread | 0.19 |
| iv_term | 0.1003 |
| es_rsn_d | 0.05588 |
| overnight_d | 0.04955 |
| es_C_d | 0.04777 |
| vix3m_spread | 0.03944 |
| es_rk_d | 0.03823 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0.05 | 0.15 | 0.5556 | 0.9967 |
| EN_D | t10y3m | 0.25 | 0.35 | 0.45 | 1 | 0.9238 |
| EN_D | dgs10 | 0.1 | 0.3 | 0.45 | 1 | 0.9381 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-23, n = 2193)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2193 | 0.2813 | 6.394 | 0.7824 | 0.4658 | 1.261 | 1.091 | -3.731 | 0.0001952 | 0.9999 | -0.3362 | 0.7368 | yes | 0.6648 | yes | 0.6634 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.223 | 5.862 | 0.7232 | 0.5102 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6648 | yes | 0.6634 | 0 | 0.7928 | 9.76e-05 |
| EN | A | 2193 | 0.222 | 5.821 | 0.7205 | 0.5137 | 0.9951 | 0.993 | 0.843 | 0.3993 | 0.1997 | 1.241 | 0.2148 | yes | 1 | yes | 1 | 0 | 0.789 | 9.317e-05 |
| RF | A | 2193 | 0.2984 | 10.9 | 0.8494 | 0.08917 | 1.338 | 1.86 | -1.66 | 0.09709 | 0.9515 | -1.426 | 0.154 | yes | 0.6648 | yes | 0.2352 | 0 | 1.061 | 0.6328 |
| EN | C | 2193 | 0.6874 | 7.954 | 0.8047 | 0.3355 | 3.082 | 1.357 | -4.146 | 3.505e-05 | 1 | -1.073 | 0.2833 | no | 0.0508 | yes | 0.6634 | 4.241 | 2.444 | 0.9998 |
| RF | C | 2193 | 0.2726 | 9.79 | 0.8178 | 0.1821 | 1.222 | 1.67 | -1.355 | 0.1757 | 0.9122 | -1.177 | 0.2391 | yes | 0.6648 | yes | 0.5812 | 0 | 0.9689 | 0.417 |
| EN | D | 2193 | 0.3133 | 7.84 | 0.7903 | 0.345 | 1.405 | 1.337 | -1.983 | 0.04748 | 0.9763 | -1.085 | 0.2781 | yes | 0.6648 | yes | 0.6332 | 0.228 | 1.114 | 0.7403 |
| RF | D | 2193 | 0.2558 | 10.12 | 0.8922 | 0.1546 | 1.147 | 1.726 | -1.293 | 0.1963 | 0.9019 | -1.431 | 0.1525 | yes | 0.6648 | yes | 0.2352 | 0 | 0.9091 | 0.2108 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2193 | 0.7928 | 3.731 | 0.0001952 | 9.76e-05 | 0.9168 | 0.3362 | 0.7368 | 0.3684 | 0.5412 | 0.4148 |
| EN_A vs PER_A | 2193 | 0.789 | 3.743 | 0.0001863 | 9.317e-05 | 0.9103 | 0.3607 | 0.7184 | 0.3592 | 1 | 1 |
| RF_A vs PER_A | 2193 | 1.061 | -0.3392 | 0.7345 | 0.6328 | 1.705 | -1.08 | 0.2802 | 0.8599 | 0.2654 | 0.2866 |
| EN_A vs HAR_A | 2193 | 0.9951 | 0.843 | 0.3993 | 0.1997 | 0.993 | 1.241 | 0.2148 | 0.1074 | 1 | 1 |
| RF_A vs HAR_A | 2193 | 1.338 | -1.66 | 0.09709 | 0.9515 | 1.86 | -1.426 | 0.154 | 0.923 | 0.2654 | 0.2866 |
| RF_A vs EN_A | 2193 | 1.344 | -1.684 | 0.09229 | 0.9539 | 1.873 | -1.436 | 0.1512 | 0.9244 | 0.2654 | 0.2866 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2193 | -0.4655 | -209.7 | 0.02578 | 8.64 | 0.4912 | 4.392 | 5.895e-06 | 1.179e-05 |
| A->C | MSE | 2193 | -2.133 | -36.64 | 1.112 | 10.2 | 3.245 | 1.473 | 0.07048 | 0.141 |
| A->D | QLIKE | 2193 | -0.09134 | -41.15 | 0.04261 | 14.28 | 0.134 | 2.429 | 0.007615 | 0.01523 |
| A->D | MSE | 2193 | -2.019 | -34.69 | 0.7828 | 7.181 | 2.802 | 1.11 | 0.1336 | 0.2671 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1455 | 0.2301 | 1.344 | 1 | 1.004 | 1.068 | 3.465 | 1.044 | 1.079 | 1.043 |
| High RV (monthly RV > threshold) | 738 | 0.2091 | 1.081 | 1 | 0.9755 | 1.923 | 2.251 | 1.608 | 2.112 | 1.371 |
| Normal days (target <= Q3 + 1.5 IQR) | 1994 | 0.1523 | 1.376 | 1 | 0.9954 | 1.112 | 4.485 | 1.102 | 1.762 | 1.192 |
| Extreme days (target > Q3 + 1.5 IQR) | 199 | 0.9319 | 1.073 | 1 | 0.9946 | 1.707 | 0.7844 | 1.419 | 0.8199 | 1.072 |
| Feb 2018 Volmageddon | 43 | 1.018 | 1.307 | 1 | 1 | 1.053 | 0.6382 | 1.195 | 0.6809 | 1.125 |
| COVID 2020 | 70 | 0.7703 | 0.8976 | 1 | 1 | 3.502 | 1.222 | 2.783 | 1.175 | 1.783 |
| 2022 bear market | 209 | 0.1591 | 0.9796 | 1 | 1 | 1.101 | 4.194 | 0.6404 | 4.245 | 0.9991 |
| Apr 2025 tariffs | 42 | 0.6281 | 1.18 | 1 | 0.8908 | 0.9562 | 0.6811 | 1.097 | 0.7222 | 0.7649 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.346 | 4 |
| HAR | A | 3.515 | 4 |
| EN | A | 3.519 | 4 |
| RF | A | 3.294 | 4 |
| EN | C | 2.167 | 4 |
| RF | C | 3.387 | 4 |
| EN | D | 3.25 | 4 |
| RF | D | 3.458 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.125 | 0.7778 |
| parkinson_d | 0.1131 | 1 |
| vix9d_spread | 0.09739 | 1 |
| iv_term | -0.09739 | 1 |
| negret_w | -0.09723 | 0.8889 |
| es_rsn_d | 0.09382 | 1 |
| vix3m_spread | -0.08556 | 0.8889 |
| overnight_d | 0.08459 | 0.7778 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1968 |
| negret_w | 0.09626 |
| es_J_w | 0.07577 |
| vix3m_spread | 0.04918 |
| log_vxn | 0.04172 |
| es_rsn_d | 0.04077 |
| iv_atm_1m | 0.04026 |
| es_C_d | 0.03945 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0.05 | 0.15 | 0.5556 | 0.9967 |
| EN_D | t10y3m | 0.25 | 0.35 | 0.45 | 1 | 0.9238 |
| EN_D | dgs10 | 0.1 | 0.3 | 0.45 | 1 | 0.9381 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-08-28, n = 2176)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2176 | 0.6032 | 10.5 | 1.079 | -0.3403 | 1.417 | 1.689 | -1.83 | 0.0674 | 0.9663 | -1.171 | 0.2416 | yes | 0.4886 | yes | 0.6472 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.4257 | 6.219 | 0.8741 | 0.2062 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.7059 | 0.0337 |
| EN | A | 2176 | 0.44 | 6.488 | 0.8742 | 0.1719 | 1.034 | 1.043 | -1.219 | 0.223 | 0.8885 | -0.8839 | 0.3769 | yes | 0.4886 | yes | 0.6472 | 0 | 0.7295 | 0.04279 |
| RF | A | 2176 | 0.5688 | 8.061 | 0.9918 | -0.02893 | 1.336 | 1.296 | -1.576 | 0.1152 | 0.9424 | -1.532 | 0.1258 | yes | 0.4886 | yes | 0.6472 | 0 | 0.943 | 0.3469 |
| EN | C | 2176 | 1.978 | 7.237 | 1.005 | 0.07623 | 4.646 | 1.164 | -2.609 | 0.009151 | 0.9954 | -1.205 | 0.2282 | no | 0.0312 | yes | 0.6472 | 2.987 | 3.279 | 0.9886 |
| RF | C | 2176 | 0.5776 | 7.517 | 0.9807 | 0.04053 | 1.357 | 1.209 | -1.439 | 0.1504 | 0.9248 | -1.046 | 0.2957 | yes | 0.4886 | yes | 0.6472 | 0 | 0.9576 | 0.4114 |
| EN | D | 2176 | 1.892 | 7.083 | 1.008 | 0.09599 | 4.445 | 1.139 | -2.51 | 0.01214 | 0.9939 | -1.439 | 0.1504 | no | 0.0462 | yes | 0.6472 | 2.574 | 3.137 | 0.9853 |
| RF | D | 2176 | 0.5675 | 7.835 | 1.062 | -1.69e-05 | 1.333 | 1.26 | -1.487 | 0.137 | 0.9315 | -1.319 | 0.1874 | yes | 0.4886 | yes | 0.6472 | 0 | 0.9409 | 0.3782 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2176 | 0.7059 | 1.83 | 0.0674 | 0.0337 | 0.5922 | 1.171 | 0.2416 | 0.1208 | 1 | 1 |
| EN_A vs PER_A | 2176 | 0.7295 | 1.72 | 0.08558 | 0.04279 | 0.6178 | 1.121 | 0.2624 | 0.1312 | 0.1572 | 0.495 |
| RF_A vs PER_A | 2176 | 0.943 | 0.3937 | 0.6939 | 0.3469 | 0.7677 | 0.7709 | 0.4408 | 0.2204 | 0.1498 | 0.495 |
| EN_A vs HAR_A | 2176 | 1.034 | -1.219 | 0.223 | 0.8885 | 1.043 | -0.8839 | 0.3769 | 0.8116 | 0.1572 | 0.495 |
| RF_A vs HAR_A | 2176 | 1.336 | -1.576 | 0.1152 | 0.9424 | 1.296 | -1.532 | 0.1258 | 0.9371 | 0.1498 | 0.495 |
| RF_A vs EN_A | 2176 | 1.293 | -1.585 | 0.1131 | 0.9434 | 1.243 | -1.673 | 0.09452 | 0.9527 | 0.1498 | 0.495 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2176 | -1.538 | -349.5 | -0.00879 | -1.545 | 1.529 | 2.547 | 0.005473 | 0.01095 |
| A->C | MSE | 2176 | -0.7495 | -11.55 | 0.5442 | 6.75 | 1.294 | 2.134 | 0.01648 | 0.03296 |
| A->D | QLIKE | 2176 | -1.452 | -330 | 0.001291 | 0.2269 | 1.453 | 2.465 | 0.00689 | 0.01378 |
| A->D | MSE | 2176 | -0.5947 | -9.166 | 0.2265 | 2.81 | 0.8212 | 1.444 | 0.07441 | 0.1488 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1438 | 0.4945 | 1.488 | 1 | 0.9999 | 1.116 | 2.708 | 1.078 | 2.744 | 1.085 |
| High RV (monthly RV > threshold) | 738 | 0.2917 | 1.181 | 1 | 1.145 | 2.061 | 11.05 | 2.275 | 10.06 | 2.151 |
| Normal days (target <= Q3 + 1.5 IQR) | 2049 | 0.213 | 1.618 | 1 | 1.022 | 1.259 | 7.357 | 1.22 | 6.888 | 1.255 |
| Extreme days (target > Q3 + 1.5 IQR) | 127 | 3.858 | 1.238 | 1 | 1.044 | 1.404 | 2.231 | 1.478 | 2.268 | 1.402 |
| Feb 2018 Volmageddon | 43 | 0.3806 | 3.019 | 1 | 1 | 1.437 | 0.9132 | 1.069 | 0.8974 | 0.8542 |
| COVID 2020 | 70 | 2.645 | 1.319 | 1 | 1.196 | 2.093 | 1.41 | 2.413 | 1.295 | 2.244 |
| 2022 bear market | 209 | 0.2334 | 1.094 | 1 | 1 | 1.095 | 46.46 | 0.8196 | 46.73 | 0.9527 |
| Apr 2025 tariffs | 42 | 0.2241 | 3.076 | 1 | 1.013 | 1.669 | 0.8482 | 1.269 | 0.894 | 1.229 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.398 | 4 |
| HAR | A | 2.942 | 4 |
| EN | A | 2.902 | 4 |
| RF | A | 2.517 | 4 |
| EN | C | -2.036 | 4 |
| RF | C | 2.522 | 4 |
| EN | D | -1.766 | 4 |
| RF | D | 2.585 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 89.76 | 1.772 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 31.55 | 0.6043 | 24.81 | 0.3841 | 0.7413 | -0.1283 | 0.8497 |
| HAR_A | 2176 | 57.34 | 1.127 | 38.23 | 0.5827 | 0.6636 | 0.09097 | 0.773 |
| EN_A | 2176 | 59.34 | 1.173 | 39.46 | 0.6033 | 0.6641 | 0.09318 | 0.7734 |
| RF_A | 2176 | 47.59 | 0.9528 | 29.27 | 0.4538 | 0.6733 | 0.0597 | 0.8047 |
| EN_C | 2176 | 59.02 | 1.186 | 41.52 | 0.645 | 0.6843 | 0.08487 | 0.8231 |
| RF_C | 2176 | 36.19 | 0.7214 | 17.14 | 0.2645 | 0.6264 | 0.07962 | 0.7835 |
| EN_D | 2176 | 46.54 | 0.9302 | 30.72 | 0.4751 | 0.654 | 0.08098 | 0.7716 |
| RF_D | 2176 | 21.89 | 0.4393 | 6.529 | 0.1014 | 0.602 | 0.06405 | 0.7224 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.2712 | 0.8889 |
| dgs10 | -0.1659 | 0.7778 |
| es_J_w | 0.1365 | 0.6667 |
| es_rsp_d | 0.1058 | 0.8889 |
| negret_w | -0.0958 | 0.8889 |
| iv_term | -0.07941 | 0.8889 |
| vix9d_spread | 0.06463 | 0.8889 |
| iv_skew_1m | 0.04943 | 0.7778 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1378 |
| iv_atm_1m | 0.06315 |
| negret_w | 0.06011 |
| es_C_d | 0.03648 |
| negret_m | 0.03573 |
| log_vxn | 0.03254 |
| vix9d_spread | 0.03187 |
| vix3m_spread | 0.03129 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_D | iv_atm_1y | 0 | 0.05 | 0.15 | 0.5556 | 0.9967 |
| EN_D | t10y3m | 0.25 | 0.35 | 0.45 | 1 | 0.9238 |
| EN_D | dgs10 | 0.1 | 0.3 | 0.45 | 1 | 0.9381 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_C | 0.9314 | 0.08145 | yes | no | 0.7176 | yes | EN_C | NaN | NaN |
| SPY | 5 | EN_D | 0.9031 | 0.05049 | yes | no | 0.701 | yes | RF_A EN_C RF_C RF_D | NaN | NaN |
| SPY | 22 | EN_A | 0.985 | 0.07738 | yes | no | 0.7483 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 49.91 | 0.08492 |
| ES | 1 | RF_D | 0.9449 | 0.08241 | yes | no | 0.7975 | yes | RF_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_A | 0.9951 | 0.1997 | yes | no | 0.789 | yes | RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | EN_A | 1.034 | 0.8885 | yes | no | 0.7295 | yes | RF_A EN_C RF_C EN_D RF_D | 39.46 | 0.09318 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.298 | 1.191 | 3.997e-10 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7704 |
| SPY | 1 | all-model common days | EN | A | 0.9935 | 0.9931 | 0.1055 | yes | 0.7654 |
| SPY | 1 | all-model common days | RF | A | 1.071 | 1.47 | 0.2893 | yes | 0.8249 |
| SPY | 1 | all-model common days | EN | C | 1.323 | 1.128 | 0.01326 | yes | 1.019 |
| SPY | 1 | all-model common days | RF | C | 0.9314 | 1.264 | 0.1629 | yes | 0.7176 |
| SPY | 1 | all-model common days | EN | D | 0.9925 | 1.012 | 0.8867 | yes | 0.7647 |
| SPY | 1 | all-model common days | RF | D | 0.9449 | 1.312 | 0.3499 | yes | 0.728 |
| SPY | 5 | all-model common days | PER | A | 1.288 | 1.082 | 3.399e-05 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7762 |
| SPY | 5 | all-model common days | EN | A | 0.9883 | 0.9871 | 0.05677 | yes | 0.7672 |
| SPY | 5 | all-model common days | RF | A | 1.241 | 1.496 | 0.09169 | no | 0.9633 |
| SPY | 5 | all-model common days | EN | C | 2.11 | 1.081 | 0.003329 | no | 1.638 |
| SPY | 5 | all-model common days | RF | C | 1.054 | 1.419 | 0.6823 | yes | 0.8185 |
| SPY | 5 | all-model common days | EN | D | 0.9031 | 0.9441 | 0.101 | yes | 0.701 |
| SPY | 5 | all-model common days | RF | D | 1.069 | 1.487 | 0.6032 | yes | 0.8298 |
| SPY | 22 | all-model common days | PER | A | 1.316 | 1.601 | 0.1111 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7597 |
| SPY | 22 | all-model common days | EN | A | 0.985 | 0.9754 | 0.1548 | yes | 0.7483 |
| SPY | 22 | all-model common days | RF | A | 1.106 | 1.105 | 0.2337 | yes | 0.8404 |
| SPY | 22 | all-model common days | EN | C | 4.312 | 0.9843 | 0.07609 | yes | 3.276 |
| SPY | 22 | all-model common days | RF | C | 1.232 | 1.118 | 0.07662 | yes | 0.9357 |
| SPY | 22 | all-model common days | EN | D | 6.164 | 0.9782 | 0.02914 | no | 4.683 |
| SPY | 22 | all-model common days | RF | D | 1.127 | 1.074 | 0.2531 | yes | 0.8563 |
| ES | 1 | all-model common days | PER | A | 1.185 | 1.103 | 3.008e-07 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.8439 |
| ES | 1 | all-model common days | EN | A | 0.9851 | 0.9946 | 0.07587 | yes | 0.8314 |
| ES | 1 | all-model common days | RF | A | 1.293 | 2.208 | 0.1206 | yes | 1.091 |
| ES | 1 | all-model common days | EN | C | 1.562 | 1.485 | 0.0007863 | yes | 1.318 |
| ES | 1 | all-model common days | RF | C | 0.9468 | 1.394 | 0.1994 | yes | 0.7991 |
| ES | 1 | all-model common days | EN | D | 1.136 | 1.346 | 0.03588 | yes | 0.9585 |
| ES | 1 | all-model common days | RF | D | 0.9449 | 1.391 | 0.1648 | yes | 0.7975 |
| ES | 5 | all-model common days | PER | A | 1.261 | 1.091 | 0.0001952 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7928 |
| ES | 5 | all-model common days | EN | A | 0.9951 | 0.993 | 0.3993 | yes | 0.789 |
| ES | 5 | all-model common days | RF | A | 1.338 | 1.86 | 0.09709 | yes | 1.061 |
| ES | 5 | all-model common days | EN | C | 3.082 | 1.357 | 3.505e-05 | no | 2.444 |
| ES | 5 | all-model common days | RF | C | 1.222 | 1.67 | 0.1757 | yes | 0.9689 |
| ES | 5 | all-model common days | EN | D | 1.405 | 1.337 | 0.04748 | yes | 1.114 |
| ES | 5 | all-model common days | RF | D | 1.147 | 1.726 | 0.1963 | yes | 0.9091 |
| ES | 22 | all-model common days | PER | A | 1.417 | 1.689 | 0.0674 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7059 |
| ES | 22 | all-model common days | EN | A | 1.034 | 1.043 | 0.223 | yes | 0.7295 |
| ES | 22 | all-model common days | RF | A | 1.336 | 1.296 | 0.1152 | yes | 0.943 |
| ES | 22 | all-model common days | EN | C | 4.646 | 1.164 | 0.009151 | no | 3.279 |
| ES | 22 | all-model common days | RF | C | 1.357 | 1.209 | 0.1504 | yes | 0.9576 |
| ES | 22 | all-model common days | EN | D | 4.445 | 1.139 | 0.01214 | no | 3.137 |
| ES | 22 | all-model common days | RF | D | 1.333 | 1.26 | 0.137 | yes | 0.9409 |

