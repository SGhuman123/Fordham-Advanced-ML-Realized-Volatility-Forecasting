# Results: dev period, scenario "rv1"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.1583 | 0.9959 | 0.2911 | 0.3543 | 0.9644 | 1.203 | 0.4413 | 0.6591 | 0.3296 | -1.321 | 0.187 | yes | 0.1368 | yes | 0.3592 | 0 | 1 | NaN |
| HAR | A | 755 | 0.1641 | 0.8276 | 0.2997 | 0.4634 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0114 | yes | 0.483 | 0 | 1.037 | 0.6704 |
| EN | A | 755 | 0.1663 | 0.828 | 0.3011 | 0.4632 | 1.013 | 1 | -5.627 | 2.585e-08 | 1 | -5.983 | 3.379e-09 | no | 0.0078 | yes | 0.467 | 0 | 1.051 | 0.7257 |
| RF | A | 755 | 0.1528 | 0.7465 | 0.2869 | 0.516 | 0.9312 | 0.902 | 1.123 | 0.2616 | 0.1308 | 0.7337 | 0.4633 | yes | 0.1368 | yes | 0.483 | 0 | 0.9656 | 0.2682 |
| EN | C | 755 | 0.1429 | 0.7695 | 0.3107 | 0.5011 | 0.8708 | 0.9298 | 1.288 | 0.1982 | 0.09912 | 0.7122 | 0.4766 | yes | 0.1368 | yes | 0.4062 | 0.7947 | 0.903 | 0.2644 |
| RF | C | 755 | 0.1108 | 0.6758 | 0.2687 | 0.5618 | 0.6749 | 0.8166 | 3.638 | 0.0002938 | 0.0001469 | 1.091 | 0.2758 | yes | 0.259 | yes | 0.664 | 0 | 0.6999 | 0.02148 |
| EN | D | 755 | 0.1226 | 0.7058 | 0.2807 | 0.5424 | 0.747 | 0.8528 | 2.583 | 0.009984 | 0.004992 | 1.22 | 0.2229 | yes | 0.1368 | yes | 0.483 | 0.3974 | 0.7746 | 0.07049 |
| RF | D | 755 | 0.1069 | 0.6664 | 0.2641 | 0.568 | 0.6512 | 0.8051 | 3.421 | 0.0006585 | 0.0003293 | 1.238 | 0.2163 | yes | 1 | yes | 1 | 0 | 0.6752 | 0.0232 |

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
| A->C | QLIKE | 755 | 0.02341 | 14.07 | 0.04206 | 27.52 | 0.01865 | 1.665 | 0.04817 | 0.09633 |
| A->C | MSE | 755 | 0.05845 | 7.059 | 0.07074 | 9.476 | 0.01229 | 0.2191 | 0.4133 | 0.8267 |
| A->D | QLIKE | 755 | 0.04372 | 26.29 | 0.04596 | 30.07 | 0.00224 | 0.191 | 0.4243 | 0.8486 |
| A->D | MSE | 755 | 0.1222 | 14.76 | 0.0802 | 10.74 | -0.04198 | -0.5052 | 0.6932 | 0.6136 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 656 | 0.1763 | 0.9541 | 1 | 1.014 | 0.919 | 0.8621 | 0.6576 | 0.7412 | 0.6327 |
| High RV (monthly RV > threshold) | 99 | 0.08361 | 1.108 | 1 | 1 | 1.102 | 0.9922 | 0.9174 | 0.8289 | 0.9091 |
| Normal days (target <= Q3 + 1.5 IQR) | 670 | 0.1271 | 0.8464 | 1 | 1.02 | 0.8723 | 1.026 | 0.7382 | 0.8693 | 0.7503 |
| Extreme days (target > Q3 + 1.5 IQR) | 85 | 0.4555 | 1.224 | 1 | 0.9988 | 1.061 | 0.5289 | 0.5357 | 0.478 | 0.4331 |
| Aug 2015 devaluation | 54 | 0.2473 | 0.9085 | 1 | 1 | 0.6537 | 0.5517 | 0.5013 | 0.5651 | 0.5442 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.629 | 4 |
| HAR | A | 3.66 | 4 |
| EN | A | 3.657 | 4 |
| RF | A | 3.671 | 4 |
| EN | C | 3.721 | 4 |
| RF | C | 3.779 | 4 |
| EN | D | 3.756 | 4 |
| RF | D | 3.792 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.06673 | 1 |
| parkinson_d | 0.06455 | 1 |
| vix9d_spread | 0.06176 | 1 |
| rv_d | 0.06096 | 1 |
| es_rk_d | 0.05824 | 1 |
| es_C_d | 0.05605 | 1 |
| negret_d | -0.04906 | 1 |
| vix3m_spread | -0.04472 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.1564 |
| es_rsn_d | 0.1 |
| vix9d_spread | 0.08504 |
| es_C_d | 0.0577 |
| log_vxn | 0.05427 |
| es_rk_d | 0.05291 |
| log_vix | 0.0504 |
| vix3m_spread | 0.03958 |

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
| PER | A | 755 | 0.2134 | 0.7762 | 0.3485 | 0.2089 | 0.914 | 1.352 | 0.7799 | 0.4357 | 0.2178 | -1.399 | 0.1623 | yes | 0.3732 | yes | 0.2984 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2335 | 0.574 | 0.3636 | 0.4149 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0016 | yes | 0.2984 | 0 | 1.094 | 0.7822 |
| EN | A | 755 | 0.2355 | 0.5747 | 0.3651 | 0.4143 | 1.009 | 1.001 | -5.726 | 1.485e-08 | 1 | -5.867 | 6.628e-09 | no | 0.001 | yes | 0.2984 | 0 | 1.104 | 0.8027 |
| RF | A | 755 | 0.1942 | 0.5506 | 0.3247 | 0.4389 | 0.8316 | 0.9591 | 3.807 | 0.000152 | 7.601e-05 | 0.5274 | 0.5981 | yes | 0.3732 | yes | 0.2984 | 0 | 0.9098 | 0.1557 |
| EN | C | 755 | 0.1724 | 0.4692 | 0.3183 | 0.5218 | 0.7384 | 0.8174 | 3.419 | 0.0006612 | 0.0003306 | 1.524 | 0.1278 | yes | 0.8378 | yes | 1 | 0 | 0.8079 | 0.1019 |
| RF | C | 755 | 0.1753 | 0.4753 | 0.3062 | 0.5156 | 0.7508 | 0.828 | 3.805 | 0.0001535 | 7.676e-05 | 1.533 | 0.1256 | yes | 0.8378 | yes | 0.836 | 0 | 0.8215 | 0.07843 |
| EN | D | 755 | 0.1688 | 0.4786 | 0.3123 | 0.5122 | 0.723 | 0.8337 | 4.088 | 4.826e-05 | 2.413e-05 | 1.716 | 0.08666 | yes | 1 | yes | 0.7208 | 0 | 0.791 | 0.06195 |
| RF | D | 755 | 0.1779 | 0.4886 | 0.308 | 0.5021 | 0.762 | 0.8511 | 4.752 | 2.411e-06 | 1.206e-06 | 1.357 | 0.1753 | yes | 0.682 | yes | 0.6456 | 0 | 0.8337 | 0.08255 |

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
| A->C | QLIKE | 755 | 0.0631 | 26.79 | 0.01886 | 9.712 | -0.04424 | -3.094 | 0.999 | 0.002049 |
| A->C | MSE | 755 | 0.1055 | 18.35 | 0.07526 | 13.67 | -0.03019 | -0.6684 | 0.748 | 0.5041 |
| A->D | QLIKE | 755 | 0.0667 | 28.32 | 0.01625 | 8.369 | -0.05045 | -3.987 | 1 | 7.354e-05 |
| A->D | MSE | 755 | 0.09607 | 16.72 | 0.06198 | 11.26 | -0.03409 | -1.021 | 0.8463 | 0.3074 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 656 | 0.2548 | 0.9069 | 1 | 1.009 | 0.8315 | 0.7342 | 0.7528 | 0.7217 | 0.762 |
| High RV (monthly RV > threshold) | 99 | 0.09225 | 1.044 | 1 | 1 | 0.8336 | 0.8149 | 0.7158 | 0.7464 | 0.7622 |
| Normal days (target <= Q3 + 1.5 IQR) | 663 | 0.1765 | 0.7036 | 1 | 1.013 | 0.7166 | 0.7848 | 0.7077 | 0.7345 | 0.7068 |
| Extreme days (target > Q3 + 1.5 IQR) | 92 | 0.6442 | 1.329 | 1 | 1 | 1.059 | 0.6467 | 0.8359 | 0.7002 | 0.8711 |
| Aug 2015 devaluation | 54 | 0.6662 | 1.257 | 1 | 1 | 1.011 | 0.7552 | 1.021 | 0.8181 | 0.984 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.505 | 4 |
| HAR | A | 3.529 | 4 |
| EN | A | 3.526 | 4 |
| RF | A | 3.584 | 4 |
| EN | C | 3.654 | 4 |
| RF | C | 3.631 | 4 |
| EN | D | 3.653 | 4 |
| RF | D | 3.625 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.04428 | 1 |
| iv_atm_1m | 0.03959 | 1 |
| iv_skew_1m | 0.03913 | 1 |
| vix9d_spread | 0.03854 | 1 |
| negret_w | -0.03753 | 1 |
| vix3m_spread | -0.03747 | 1 |
| log_vxn | 0.03555 | 1 |
| log_vix | 0.03537 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.0842 |
| iv_term | 0.07713 |
| iv_atm_1m | 0.07062 |
| iv_skew_1m | 0.06668 |
| log_vxn | 0.06372 |
| log_vix | 0.05958 |
| es_rsn_w | 0.05249 |
| parkinson_w | 0.0507 |

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
| PER | A | 755 | 0.2606 | 0.5416 | 0.4198 | 0.1174 | 0.9314 | 1.357 | 0.3013 | 0.7633 | 0.3816 | -1.48 | 0.1392 | yes | 1 | yes | 0.3352 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2798 | 0.3992 | 0.4523 | 0.3495 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.79 | yes | 0.7388 | 0 | 1.074 | 0.6184 |
| EN | A | 755 | 0.3307 | 0.4372 | 0.4995 | 0.2876 | 1.182 | 1.095 | -3.258 | 0.001171 | 0.9994 | -3.284 | 0.001072 | yes | 0.2344 | yes | 0.3352 | 0 | 1.269 | 0.8243 |
| RF | A | 755 | 0.2737 | 0.4004 | 0.425 | 0.3476 | 0.9783 | 1.003 | 0.5016 | 0.6161 | 0.3081 | -0.06083 | 0.9515 | yes | 0.8104 | yes | 0.7388 | 0 | 1.05 | 0.5911 |
| EN | C | 755 | 0.2918 | 0.3627 | 0.4065 | 0.409 | 1.043 | 0.9085 | -0.4464 | 0.6555 | 0.6723 | 1.409 | 0.1594 | yes | 0.4848 | yes | 1 | 0 | 1.12 | 0.7204 |
| RF | C | 755 | 0.3229 | 0.4097 | 0.4808 | 0.3324 | 1.154 | 1.026 | -2.576 | 0.01019 | 0.9949 | -0.2862 | 0.7748 | yes | 0.3502 | yes | 0.7388 | 0 | 1.239 | 0.802 |
| EN | D | 755 | 0.3032 | 0.3756 | 0.4086 | 0.388 | 1.084 | 0.9407 | -0.6697 | 0.5033 | 0.7484 | 0.9371 | 0.349 | yes | 0.3502 | yes | 0.7388 | 0 | 1.164 | 0.8107 |
| RF | D | 755 | 0.3846 | 0.4932 | 0.5489 | 0.1963 | 1.375 | 1.235 | -3.902 | 0.0001039 | 0.9999 | -2.255 | 0.02444 | no | 0.0098 | yes | 0.147 | 0 | 1.476 | 0.9352 |

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
| A->C | QLIKE | 755 | 0.03887 | 11.75 | -0.04917 | -17.96 | -0.08803 | -1.837 | 0.9667 | 0.06656 |
| A->C | MSE | 755 | 0.07454 | 17.05 | -0.009299 | -2.323 | -0.08383 | -2.325 | 0.9898 | 0.02035 |
| A->D | QLIKE | 755 | 0.02745 | 8.302 | -0.1109 | -40.52 | -0.1384 | -2.227 | 0.9869 | 0.02622 |
| A->D | MSE | 755 | 0.06167 | 14.1 | -0.09283 | -23.19 | -0.1545 | -3.156 | 0.9992 | 0.001664 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 656 | 0.2983 | 0.8608 | 1 | 1.196 | 0.999 | 1.079 | 1.194 | 1.124 | 1.427 |
| High RV (monthly RV > threshold) | 99 | 0.1568 | 1.821 | 1 | 0.9989 | 0.718 | 0.5834 | 0.6487 | 0.5819 | 0.7169 |
| Normal days (target <= Q3 + 1.5 IQR) | 672 | 0.235 | 0.644 | 1 | 1.243 | 0.9196 | 0.9389 | 1.229 | 0.9378 | 1.496 |
| Extreme days (target > Q3 + 1.5 IQR) | 83 | 0.6424 | 1.782 | 1 | 1 | 1.152 | 1.352 | 0.9315 | 1.516 | 1.015 |
| Aug 2015 devaluation | 54 | 0.2907 | 2.003 | 1 | 1 | 0.8606 | 0.9026 | 0.7053 | 1.033 | 0.8003 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.419 | 4 |
| HAR | A | 3.474 | 4 |
| EN | A | 3.401 | 4 |
| RF | A | 3.468 | 4 |
| EN | C | 3.424 | 4 |
| RF | C | 3.416 | 4 |
| EN | D | 3.391 | 4 |
| RF | D | 3.323 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 63.87 | 3.464 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 16.67 | 0.8719 | 21.76 | 1.03 | 0.706 | 0.07341 | 0.8199 |
| HAR_A | 755 | 14.21 | 1.102 | 22.76 | 1.759 | 0.4715 | 0.2969 | 0.5298 |
| EN_A | 755 | 4.332 | 0.3048 | 11.35 | 0.7613 | 0.4159 | 0.2737 | 0.4742 |
| RF_A | 755 | 24.53 | 2.266 | 29.32 | 2.629 | 0.5563 | 0.2327 | 0.6305 |
| EN_C | 755 | 18.08 | 0.8947 | 28.18 | 1.276 | 0.543 | 0.3575 | 0.6623 |
| RF_C | 755 | 2.085 | 0.1219 | 6.452 | 0.3364 | 0.4238 | 0.3389 | 0.4477 |
| EN_D | 755 | 17.09 | 0.8526 | 27.79 | 1.272 | 0.5417 | 0.3097 | 0.6583 |
| RF_D | 755 | -10.43 | -0.6005 | -6.728 | -0.3541 | 0.3815 | 0.2527 | 0.4053 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.04134 | 1 |
| iv_skew_1m | 0.03057 | 1 |
| es_C_m | 0.0289 | 1 |
| rv_m | 0.02841 | 1 |
| vix3m_spread | -0.02762 | 1 |
| iv_term | -0.02602 | 1 |
| es_J_m | 0.02395 | 1 |
| log_vix | 0.02389 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.1373 |
| news_sent | 0.09657 |
| log_vxn | 0.08088 |
| nfci | 0.05735 |
| es_C_d | 0.04153 |
| log_vix | 0.03842 |
| es_J_m | 0.03689 |
| rv_d | 0.03568 |

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
| ES | 1 | RF_D | 0.6512 | 0.0003293 | yes | yes | 0.6752 | yes | HAR_A EN_A RF_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_D | 0.723 | 2.413e-05 | yes | yes | 0.791 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.9783 | 0.3081 | yes | no | 1.05 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 29.32 | 0.2327 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 0.9644 | 1.203 | 0.6591 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.037 |
| ES | 1 | all-model common days | EN | A | 1.013 | 1 | 2.585e-08 | no | 1.051 |
| ES | 1 | all-model common days | RF | A | 0.9312 | 0.902 | 0.2616 | yes | 0.9656 |
| ES | 1 | all-model common days | EN | C | 0.8708 | 0.9298 | 0.1982 | yes | 0.903 |
| ES | 1 | all-model common days | RF | C | 0.6749 | 0.8166 | 0.0002938 | yes | 0.6999 |
| ES | 1 | all-model common days | EN | D | 0.747 | 0.8528 | 0.009984 | yes | 0.7746 |
| ES | 1 | all-model common days | RF | D | 0.6512 | 0.8051 | 0.0006585 | yes | 0.6752 |
| ES | 5 | all-model common days | PER | A | 0.914 | 1.352 | 0.4357 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.094 |
| ES | 5 | all-model common days | EN | A | 1.009 | 1.001 | 1.485e-08 | no | 1.104 |
| ES | 5 | all-model common days | RF | A | 0.8316 | 0.9591 | 0.000152 | yes | 0.9098 |
| ES | 5 | all-model common days | EN | C | 0.7384 | 0.8174 | 0.0006612 | yes | 0.8079 |
| ES | 5 | all-model common days | RF | C | 0.7508 | 0.828 | 0.0001535 | yes | 0.8215 |
| ES | 5 | all-model common days | EN | D | 0.723 | 0.8337 | 4.826e-05 | yes | 0.791 |
| ES | 5 | all-model common days | RF | D | 0.762 | 0.8511 | 2.411e-06 | yes | 0.8337 |
| ES | 22 | all-model common days | PER | A | 0.9314 | 1.357 | 0.7633 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.074 |
| ES | 22 | all-model common days | EN | A | 1.182 | 1.095 | 0.001171 | yes | 1.269 |
| ES | 22 | all-model common days | RF | A | 0.9783 | 1.003 | 0.6161 | yes | 1.05 |
| ES | 22 | all-model common days | EN | C | 1.043 | 0.9085 | 0.6555 | yes | 1.12 |
| ES | 22 | all-model common days | RF | C | 1.154 | 1.026 | 0.01019 | yes | 1.239 |
| ES | 22 | all-model common days | EN | D | 1.084 | 0.9407 | 0.5033 | yes | 1.164 |
| ES | 22 | all-model common days | RF | D | 1.375 | 1.235 | 0.0001039 | no | 1.476 |

