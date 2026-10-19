# Results: dev period, scenario "rv1"

Generated 2026-10-16 15:51 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.1583 | 0.9959 | 0.2911 | 0.3543 | 0.9644 | 1.203 | 0.4413 | 0.6591 | 0.3296 | -1.321 | 0.187 | yes | 0.1398 | yes | 0.3966 | 0 | 1 | NaN |
| HAR | A | 755 | 0.1641 | 0.8276 | 0.2997 | 0.4634 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0464 | yes | 0.5472 | 0 | 1.037 | 0.6704 |
| EN | A | 755 | 0.1663 | 0.828 | 0.3011 | 0.4632 | 1.013 | 1 | -5.627 | 2.585e-08 | 1 | -5.983 | 3.379e-09 | no | 0.026 | yes | 0.5472 | 0 | 1.051 | 0.7257 |
| RF | A | 755 | 0.1528 | 0.7465 | 0.2869 | 0.516 | 0.9312 | 0.902 | 1.123 | 0.2616 | 0.1308 | 0.7337 | 0.4633 | no | 0.098 | yes | 0.5472 | 0 | 0.9656 | 0.2682 |
| EN | C | 755 | 0.1649 | 0.7813 | 0.3084 | 0.4935 | 1.005 | 0.944 | -0.04603 | 0.9633 | 0.5183 | 0.6354 | 0.5254 | no | 0.0612 | yes | 0.3966 | 7.682 | 1.042 | 0.6053 |
| RF | C | 755 | 0.1185 | 0.6563 | 0.2711 | 0.5745 | 0.7223 | 0.793 | 3.468 | 0.0005545 | 0.0002773 | 0.991 | 0.322 | yes | 0.1398 | yes | 1 | 0 | 0.749 | 0.03269 |
| EN | D | 755 | 0.1318 | 0.7259 | 0.2839 | 0.5294 | 0.8032 | 0.8771 | 2.005 | 0.04532 | 0.02266 | 1.241 | 0.2151 | yes | 0.1398 | yes | 0.5472 | 3.444 | 0.8328 | 0.1348 |
| RF | D | 755 | 0.108 | 0.6761 | 0.268 | 0.5617 | 0.658 | 0.8169 | 3.445 | 0.0006018 | 0.0003009 | 1.223 | 0.2217 | yes | 1 | yes | 0.7246 | 0 | 0.6823 | 0.02379 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.037 | -0.4413 | 0.6591 | 0.6704 | 0.8311 | 1.321 | 0.187 | 0.09349 | 0.5514 | 0.585 |
| EN_A vs PER_A | 755 | 1.051 | -0.6001 | 0.5486 | 0.7257 | 0.8314 | 1.318 | 0.1879 | 0.09396 | 0.3764 | 0.5828 |
| RF_A vs PER_A | 755 | 0.9656 | 0.6184 | 0.5365 | 0.2682 | 0.7496 | 1.091 | 0.2758 | 0.1379 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.013 | -5.627 | 2.585e-08 | 1 | 1 | -5.983 | 3.379e-09 | 1 | 0.3764 | 0.5828 |
| RF_A vs HAR_A | 755 | 0.9312 | 1.123 | 0.2616 | 0.1308 | 0.902 | 0.7337 | 0.4633 | 0.2317 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.9189 | 1.332 | 0.1833 | 0.09164 | 0.9017 | 0.7369 | 0.4614 | 0.2307 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.001362 | 0.8192 | 0.03428 | 22.43 | 0.03292 | 2.433 | 0.007599 | 0.0152 |
| A->C | MSE | 755 | 0.0467 | 5.64 | 0.0902 | 12.08 | 0.04351 | 1.641 | 0.05066 | 0.1013 |
| A->D | QLIKE | 755 | 0.03451 | 20.75 | 0.04484 | 29.34 | 0.01033 | 0.8524 | 0.1971 | 0.3942 |
| A->D | MSE | 755 | 0.1021 | 12.33 | 0.07044 | 9.436 | -0.03163 | -0.439 | 0.6696 | 0.6608 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 656 | 0.1763 | 0.9541 | 1 | 1.014 | 0.919 | 1.004 | 0.7082 | 0.7999 | 0.6403 |
| High RV (monthly RV > threshold) | 99 | 0.08361 | 1.108 | 1 | 1 | 1.102 | 1.025 | 0.9189 | 0.8493 | 0.9049 |
| Normal days (target <= Q3 + 1.5 IQR) | 670 | 0.1271 | 0.8464 | 1 | 1.02 | 0.8723 | 1.209 | 0.7782 | 0.9299 | 0.7504 |
| Extreme days (target > Q3 + 1.5 IQR) | 85 | 0.4555 | 1.224 | 1 | 0.9988 | 1.061 | 0.557 | 0.5994 | 0.5242 | 0.4548 |
| Aug 2015 devaluation | 54 | 0.2473 | 0.9085 | 1 | 1 | 0.6537 | 0.5913 | 0.4767 | 0.6503 | 0.5502 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.629 | 4 |
| HAR | A | 3.66 | 4 |
| EN | A | 3.657 | 4 |
| RF | A | 3.671 | 4 |
| EN | C | 3.655 | 4 |
| RF | C | 3.763 | 4 |
| EN | D | 3.729 | 4 |
| RF | D | 3.789 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.06793 | 1 |
| vix9d_spread | 0.0665 | 1 |
| parkinson_d | 0.06643 | 1 |
| rv_d | 0.06171 | 1 |
| es_rk_d | 0.05883 | 1 |
| es_C_d | 0.05625 | 1 |
| negret_d | -0.05126 | 1 |
| iv_term | -0.04697 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.1609 |
| vix9d_spread | 0.1008 |
| es_rsn_d | 0.08831 |
| es_C_d | 0.07626 |
| log_vix | 0.06824 |
| iv_term | 0.05172 |
| log_vxn | 0.05005 |
| log_rvx | 0.04797 |

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
| PER | A | 755 | 0.2134 | 0.7762 | 0.3485 | 0.2089 | 0.914 | 1.352 | 0.7799 | 0.4357 | 0.2178 | -1.399 | 0.1623 | yes | 0.4638 | yes | 0.3156 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2335 | 0.574 | 0.3636 | 0.4149 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0048 | yes | 0.3156 | 0 | 1.094 | 0.7822 |
| EN | A | 755 | 0.2355 | 0.5747 | 0.3651 | 0.4143 | 1.009 | 1.001 | -5.726 | 1.485e-08 | 1 | -5.867 | 6.628e-09 | no | 0.0032 | yes | 0.3156 | 0 | 1.104 | 0.8027 |
| RF | A | 755 | 0.1942 | 0.5506 | 0.3247 | 0.4389 | 0.8316 | 0.9591 | 3.807 | 0.000152 | 7.601e-05 | 0.5274 | 0.5981 | yes | 0.4638 | yes | 0.3156 | 0 | 0.9098 | 0.1557 |
| EN | C | 755 | 0.1671 | 0.472 | 0.315 | 0.519 | 0.7156 | 0.8222 | 3.65 | 0.0002807 | 0.0001404 | 1.55 | 0.1215 | yes | 1 | yes | 1 | 0 | 0.7829 | 0.06516 |
| RF | C | 755 | 0.2029 | 0.4864 | 0.3354 | 0.5042 | 0.869 | 0.8474 | 2.042 | 0.04147 | 0.02073 | 1.321 | 0.187 | yes | 0.4638 | yes | 0.848 | 0 | 0.9507 | 0.3623 |
| EN | D | 755 | 0.1688 | 0.4823 | 0.313 | 0.5084 | 0.7229 | 0.8402 | 3.883 | 0.0001122 | 5.609e-05 | 1.715 | 0.08668 | yes | 0.6872 | yes | 0.848 | 0 | 0.7909 | 0.05415 |
| RF | D | 755 | 0.1885 | 0.4916 | 0.3288 | 0.499 | 0.8074 | 0.8564 | 3.585 | 0.0003584 | 0.0001792 | 1.227 | 0.2201 | yes | 0.4638 | yes | 0.848 | 0 | 0.8834 | 0.1787 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.094 | -0.7799 | 0.4357 | 0.7822 | 0.7395 | 1.399 | 0.1623 | 0.08115 | 0.176 | 0.526 |
| EN_A vs PER_A | 755 | 1.104 | -0.8518 | 0.3946 | 0.8027 | 0.7403 | 1.394 | 0.1636 | 0.08182 | 0.1588 | 0.5068 |
| RF_A vs PER_A | 755 | 0.9098 | 1.013 | 0.3114 | 0.1557 | 0.7093 | 1.373 | 0.1703 | 0.08513 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.009 | -5.726 | 1.485e-08 | 1 | 1.001 | -5.867 | 6.628e-09 | 1 | 0.1588 | 0.5068 |
| RF_A vs HAR_A | 755 | 0.8316 | 3.807 | 0.000152 | 7.601e-05 | 0.9591 | 0.5274 | 0.5981 | 0.299 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.8245 | 3.936 | 9.053e-05 | 4.526e-05 | 0.958 | 0.5414 | 0.5884 | 0.2942 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.06843 | 29.06 | -0.008724 | -4.493 | -0.07716 | -4.356 | 1 | 1.511e-05 |
| A->C | MSE | 755 | 0.1027 | 17.87 | 0.06411 | 11.65 | -0.03856 | -0.9255 | 0.8225 | 0.355 |
| A->D | QLIKE | 755 | 0.06671 | 28.33 | 0.005643 | 2.906 | -0.06107 | -4.237 | 1 | 2.546e-05 |
| A->D | MSE | 755 | 0.09233 | 16.07 | 0.05896 | 10.71 | -0.03337 | -1.116 | 0.8677 | 0.2647 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 656 | 0.2548 | 0.9069 | 1 | 1.009 | 0.8315 | 0.7088 | 0.8757 | 0.7207 | 0.8114 |
| High RV (monthly RV > threshold) | 99 | 0.09225 | 1.044 | 1 | 1 | 0.8336 | 0.8395 | 0.7463 | 0.7628 | 0.7351 |
| Normal days (target <= Q3 + 1.5 IQR) | 663 | 0.1765 | 0.7036 | 1 | 1.013 | 0.7166 | 0.7432 | 0.896 | 0.7275 | 0.8026 |
| Extreme days (target > Q3 + 1.5 IQR) | 92 | 0.6442 | 1.329 | 1 | 1 | 1.059 | 0.6611 | 0.8157 | 0.7138 | 0.8169 |
| Aug 2015 devaluation | 54 | 0.6662 | 1.257 | 1 | 1 | 1.011 | 0.7766 | 1.008 | 0.8368 | 0.9689 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.505 | 4 |
| HAR | A | 3.529 | 4 |
| EN | A | 3.526 | 4 |
| RF | A | 3.584 | 4 |
| EN | C | 3.658 | 4 |
| RF | C | 3.589 | 4 |
| EN | D | 3.65 | 4 |
| RF | D | 3.613 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.05643 | 1 |
| iv_atm_1m | 0.04863 | 1 |
| iv_skew_1m | 0.04465 | 1 |
| vix9d_spread | 0.0428 | 1 |
| negret_w | -0.04101 | 1 |
| rv_d | 0.04007 | 1 |
| log_vxn | 0.03945 | 1 |
| log_vix | 0.03936 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.08024 |
| iv_skew_1m | 0.06336 |
| es_rsn_w | 0.06305 |
| log_vxn | 0.05271 |
| iv_atm_1m | 0.05121 |
| rv_d | 0.05101 |
| parkinson_w | 0.04743 |
| log_vix | 0.04668 |

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
| PER | A | 755 | 0.2606 | 0.5416 | 0.4198 | 0.1174 | 0.9314 | 1.357 | 0.3013 | 0.7633 | 0.3816 | -1.48 | 0.1392 | yes | 1 | yes | 0.401 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2798 | 0.3992 | 0.4523 | 0.3495 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.79 | yes | 0.6988 | 0 | 1.074 | 0.6184 |
| EN | A | 755 | 0.3307 | 0.4372 | 0.4995 | 0.2876 | 1.182 | 1.095 | -3.258 | 0.001171 | 0.9994 | -3.284 | 0.001072 | yes | 0.3908 | yes | 0.401 | 0 | 1.269 | 0.8243 |
| RF | A | 755 | 0.2737 | 0.4004 | 0.425 | 0.3476 | 0.9783 | 1.003 | 0.5016 | 0.6161 | 0.3081 | -0.06083 | 0.9515 | yes | 0.8104 | yes | 0.6988 | 0 | 1.05 | 0.5911 |
| EN | C | 755 | 0.3037 | 0.3695 | 0.4194 | 0.3979 | 1.086 | 0.9256 | -0.9125 | 0.3618 | 0.8191 | 1.116 | 0.2648 | yes | 0.3908 | yes | 1 | 0 | 1.166 | 0.776 |
| RF | C | 755 | 0.3183 | 0.416 | 0.4679 | 0.3221 | 1.138 | 1.042 | -2.291 | 0.02226 | 0.9889 | -0.5454 | 0.5856 | yes | 0.3908 | yes | 0.6394 | 0 | 1.222 | 0.8082 |
| EN | D | 755 | 0.3221 | 0.3891 | 0.4294 | 0.366 | 1.151 | 0.9745 | -1.261 | 0.2077 | 0.8962 | 0.3916 | 0.6955 | yes | 0.3908 | yes | 0.6988 | 0 | 1.236 | 0.8737 |
| RF | D | 755 | 0.3133 | 0.4149 | 0.4613 | 0.3239 | 1.12 | 1.039 | -1.951 | 0.05149 | 0.9743 | -0.5195 | 0.6036 | yes | 0.3908 | yes | 0.6596 | 0 | 1.203 | 0.8004 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.074 | -0.3013 | 0.7633 | 0.6184 | 0.7371 | 1.48 | 0.1392 | 0.06961 | 0.79 | 1 |
| EN_A vs PER_A | 755 | 1.269 | -0.9324 | 0.3514 | 0.8243 | 0.8072 | 1.028 | 0.3041 | 0.1521 | 0.087 | 0.2068 |
| RF_A vs PER_A | 755 | 1.05 | -0.2304 | 0.8178 | 0.5911 | 0.7392 | 1.409 | 0.1591 | 0.07956 | 0.8104 | 0.9546 |
| EN_A vs HAR_A | 755 | 1.182 | -3.258 | 0.001171 | 0.9994 | 1.095 | -3.284 | 0.001072 | 0.9995 | 0.087 | 0.2068 |
| RF_A vs HAR_A | 755 | 0.9783 | 0.5016 | 0.6161 | 0.3081 | 1.003 | -0.06083 | 0.9515 | 0.5242 | 0.8104 | 0.9546 |
| RF_A vs EN_A | 755 | 0.8277 | 2.569 | 0.01039 | 0.005196 | 0.9157 | 1.625 | 0.1046 | 0.05228 | 0.8104 | 0.9546 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.02696 | 8.153 | -0.04459 | -16.29 | -0.07155 | -1.877 | 0.9695 | 0.06092 |
| A->C | MSE | 755 | 0.06772 | 15.49 | -0.01564 | -3.906 | -0.08335 | -2.531 | 0.9942 | 0.01158 |
| A->D | QLIKE | 755 | 0.008536 | 2.581 | -0.03964 | -14.48 | -0.04817 | -1.162 | 0.8772 | 0.2456 |
| A->D | MSE | 755 | 0.04817 | 11.02 | -0.01454 | -3.632 | -0.06271 | -1.816 | 0.9651 | 0.06983 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 656 | 0.2983 | 0.8608 | 1 | 1.196 | 0.999 | 1.124 | 1.173 | 1.196 | 1.154 |
| High RV (monthly RV > threshold) | 99 | 0.1568 | 1.821 | 1 | 0.9989 | 0.718 | 0.5974 | 0.693 | 0.5958 | 0.6958 |
| Normal days (target <= Q3 + 1.5 IQR) | 672 | 0.235 | 0.644 | 1 | 1.243 | 0.9196 | 1.004 | 1.159 | 1.039 | 1.122 |
| Extreme days (target > Q3 + 1.5 IQR) | 83 | 0.6424 | 1.782 | 1 | 1 | 1.152 | 1.328 | 1.075 | 1.484 | 1.113 |
| Aug 2015 devaluation | 54 | 0.2907 | 2.003 | 1 | 1 | 0.8606 | 0.9299 | 0.8142 | 1.06 | 0.8465 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.419 | 4 |
| HAR | A | 3.474 | 4 |
| EN | A | 3.401 | 4 |
| RF | A | 3.468 | 4 |
| EN | C | 3.409 | 4 |
| RF | C | 3.413 | 4 |
| EN | D | 3.366 | 4 |
| RF | D | 3.416 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 63.87 | 3.464 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 16.67 | 0.8719 | 21.76 | 1.03 | 0.706 | 0.07341 | 0.8199 |
| HAR_A | 755 | 14.21 | 1.102 | 22.76 | 1.759 | 0.4715 | 0.2969 | 0.5298 |
| EN_A | 755 | 4.332 | 0.3048 | 11.35 | 0.7613 | 0.4159 | 0.2737 | 0.4742 |
| RF_A | 755 | 24.53 | 2.266 | 29.32 | 2.629 | 0.5563 | 0.2327 | 0.6305 |
| EN_C | 755 | 11.97 | 0.5929 | 20.81 | 0.9365 | 0.5113 | 0.3584 | 0.6225 |
| RF_C | 755 | -1.577 | -0.08395 | 5.564 | 0.2703 | 0.4397 | 0.2956 | 0.4821 |
| EN_D | 755 | 9.994 | 0.4902 | 19.18 | 0.8582 | 0.502 | 0.3019 | 0.6159 |
| RF_D | 755 | -2.193 | -0.1224 | 5.725 | 0.2965 | 0.4464 | 0.2902 | 0.4887 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_atm_1m | 0.09723 | 1 |
| iv_skew_1m | 0.04374 | 1 |
| parkinson_w | 0.03667 | 1 |
| news_sent | -0.03475 | 0.6667 |
| es_C_m | 0.02302 | 0.6667 |
| iv_term | -0.0227 | 0.6667 |
| rv_m | 0.02234 | 0.6667 |
| vix9d_spread | 0.02071 | 0.6667 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.1568 |
| log_vxn | 0.09955 |
| rv_d | 0.06025 |
| log_vix | 0.05901 |
| es_C_d | 0.05768 |
| nfci | 0.05085 |
| es_rk_d | 0.04545 |
| es_rsn_w | 0.03887 |

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
| ES | 1 | RF_D | 0.658 | 0.0003009 | yes | yes | 0.6823 | yes | HAR_A EN_A RF_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_C | 0.7156 | 0.0001404 | yes | yes | 0.7829 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.9783 | 0.3081 | yes | no | 1.05 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 29.32 | 0.2327 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 0.9644 | 1.203 | 0.6591 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.037 |
| ES | 1 | all-model common days | EN | A | 1.013 | 1 | 2.585e-08 | no | 1.051 |
| ES | 1 | all-model common days | RF | A | 0.9312 | 0.902 | 0.2616 | no | 0.9656 |
| ES | 1 | all-model common days | EN | C | 1.005 | 0.944 | 0.9633 | no | 1.042 |
| ES | 1 | all-model common days | RF | C | 0.7223 | 0.793 | 0.0005545 | yes | 0.749 |
| ES | 1 | all-model common days | EN | D | 0.8032 | 0.8771 | 0.04532 | yes | 0.8328 |
| ES | 1 | all-model common days | RF | D | 0.658 | 0.8169 | 0.0006018 | yes | 0.6823 |
| ES | 5 | all-model common days | PER | A | 0.914 | 1.352 | 0.4357 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.094 |
| ES | 5 | all-model common days | EN | A | 1.009 | 1.001 | 1.485e-08 | no | 1.104 |
| ES | 5 | all-model common days | RF | A | 0.8316 | 0.9591 | 0.000152 | yes | 0.9098 |
| ES | 5 | all-model common days | EN | C | 0.7156 | 0.8222 | 0.0002807 | yes | 0.7829 |
| ES | 5 | all-model common days | RF | C | 0.869 | 0.8474 | 0.04147 | yes | 0.9507 |
| ES | 5 | all-model common days | EN | D | 0.7229 | 0.8402 | 0.0001122 | yes | 0.7909 |
| ES | 5 | all-model common days | RF | D | 0.8074 | 0.8564 | 0.0003584 | yes | 0.8834 |
| ES | 22 | all-model common days | PER | A | 0.9314 | 1.357 | 0.7633 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.074 |
| ES | 22 | all-model common days | EN | A | 1.182 | 1.095 | 0.001171 | yes | 1.269 |
| ES | 22 | all-model common days | RF | A | 0.9783 | 1.003 | 0.6161 | yes | 1.05 |
| ES | 22 | all-model common days | EN | C | 1.086 | 0.9256 | 0.3618 | yes | 1.166 |
| ES | 22 | all-model common days | RF | C | 1.138 | 1.042 | 0.02226 | yes | 1.222 |
| ES | 22 | all-model common days | EN | D | 1.151 | 0.9745 | 0.2077 | yes | 1.236 |
| ES | 22 | all-model common days | RF | D | 1.12 | 1.039 | 0.05149 | yes | 1.203 |

