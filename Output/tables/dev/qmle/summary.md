# Results: dev period, scenario "qmle"

Generated 2026-10-16 15:50 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.1484 | 0.1772 | 0.147 | 0.7186 | 0.8533 | 1.178 | 2.054 | 0.04033 | 0.02017 | -0.9379 | 0.3486 | no | 0.0018 | yes | 0.5696 | 0 | 1 | NaN |
| HAR | A | 755 | 0.174 | 0.1505 | 0.1679 | 0.7611 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0004 | yes | 0.7178 | 0 | 1.172 | 0.9798 |
| EN | A | 755 | 0.174 | 0.1505 | 0.1679 | 0.7611 | 1 | 1 | -4.234 | 2.581e-05 | 1 | 0.9626 | 0.3361 | no | 0.0004 | yes | 0.7286 | 0 | 1.172 | 0.9798 |
| RF | A | 755 | 0.1363 | 0.1704 | 0.1532 | 0.7294 | 0.7833 | 1.133 | 6.043 | 2.374e-09 | 1.187e-09 | -0.8412 | 0.4005 | no | 0.086 | yes | 0.6566 | 0 | 0.9179 | 0.06091 |
| EN | C | 755 | 0.3045 | 0.1382 | 0.1963 | 0.7806 | 1.751 | 0.9183 | -3.381 | 0.0007588 | 0.9996 | 0.4018 | 0.6879 | no | 0.0004 | yes | 0.7542 | 17.62 | 2.052 | 1 |
| RF | C | 755 | 0.1214 | 0.159 | 0.1435 | 0.7475 | 0.6979 | 1.057 | 5.474 | 5.995e-08 | 2.997e-08 | -0.3846 | 0.7006 | yes | 0.966 | yes | 0.741 | 0 | 0.8179 | 0.0001474 |
| EN | D | 755 | 0.1299 | 0.1327 | 0.1388 | 0.7893 | 0.7467 | 0.8818 | 3.24 | 0.001247 | 0.0006237 | 1.423 | 0.155 | yes | 0.4288 | yes | 0.8818 | 3.576 | 0.8752 | 0.01313 |
| RF | D | 755 | 0.1213 | 0.1296 | 0.1501 | 0.7943 | 0.6972 | 0.8611 | 4.605 | 4.839e-06 | 2.42e-06 | 0.6824 | 0.4952 | yes | 1 | yes | 1 | 0 | 0.817 | 0.0004709 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.1441 | 0.3177 | 0.2018 | 0.682 | 0.9369 | 1.006 | 1.4 | 0.1616 | 0.0808 | -0.04555 | 0.9637 | no | 0.0068 | yes | 0.9908 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.1538 | 0.3159 | 0.2253 | 0.6839 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0068 | yes | 0.9908 | 0 | 1.067 | 0.9192 |
| EN | A | 2013 | 0.1538 | 0.3158 | 0.2253 | 0.6839 | 1 | 1 | -5.605 | 2.373e-08 | 1 | 1.646 | 0.1 | no | 0.0068 | yes | 0.9908 | 0 | 1.067 | 0.9193 |
| RF | A | 2013 | 0.1291 | 0.3422 | 0.209 | 0.6575 | 0.8393 | 1.083 | 6.831 | 1.112e-11 | 5.562e-12 | -0.7976 | 0.4252 | no | 0.0068 | yes | 0.8796 | 0 | 0.8958 | 0.0006668 |
| EN | C | 2013 | 0.4717 | 0.3106 | 0.2865 | 0.6891 | 3.067 | 0.9835 | -5.374 | 8.586e-08 | 1 | 0.1708 | 0.8644 | no | 0.0068 | yes | 1 | 12.67 | 3.273 | 1 |
| RF | C | 2013 | 0.115 | 0.3598 | 0.2077 | 0.6399 | 0.7478 | 1.139 | 8.036 | 1.569e-15 | 7.844e-16 | -0.7823 | 0.4341 | yes | 1 | yes | 0.8796 | 0 | 0.7981 | 2.692e-10 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 1.067 | -1.4 | 0.1616 | 0.9192 | 0.9941 | 0.04555 | 0.9637 | 0.4818 | 0.0006 | 0.9646 |
| EN_A vs PER_A | 2013 | 1.067 | -1.401 | 0.1615 | 0.9193 | 0.9941 | 0.04576 | 0.9635 | 0.4818 | 0.0004 | 1 |
| RF_A vs PER_A | 2013 | 0.8958 | 3.213 | 0.001334 | 0.0006668 | 1.077 | -0.4302 | 0.6671 | 0.6665 | 1 | 0.5972 |
| EN_A vs HAR_A | 2013 | 1 | -5.605 | 2.373e-08 | 1 | 1 | 1.646 | 0.1 | 0.05001 | 0.0004 | 1 |
| RF_A vs HAR_A | 2013 | 0.8393 | 6.831 | 1.112e-11 | 5.562e-12 | 1.083 | -0.7976 | 0.4252 | 0.7874 | 1 | 0.5972 |
| RF_A vs EN_A | 2013 | 0.8393 | 6.832 | 1.108e-11 | 5.542e-12 | 1.083 | -0.7978 | 0.4251 | 0.7874 | 1 | 0.5972 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.3179 | -206.7 | 0.01407 | 10.9 | 0.3319 | 5.597 | 1.242e-08 | 2.484e-08 |
| A->C | MSE | 2013 | 0.005196 | 1.645 | -0.01762 | -5.148 | -0.02281 | -0.3445 | 0.6347 | 0.7305 |
| A->D | QLIKE | 755 | 0.04406 | 25.33 | 0.01498 | 10.99 | -0.02908 | -2.778 | 0.9972 | 0.005613 |
| A->D | MSE | 755 | 0.01778 | 11.81 | 0.04088 | 23.99 | 0.02311 | 0.5106 | 0.3049 | 0.6098 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 694 | 0.1794 | 0.8352 | 1 | 1 | 0.7716 | 1.783 | 0.6813 | 0.743 | 0.6661 |
| High RV (monthly RV > threshold) | 61 | 0.1117 | 1.184 | 1 | 1 | 0.9954 | 1.156 | 1 | 0.8149 | 1.264 |
| Normal days (target <= Q3 + 1.5 IQR) | 687 | 0.1593 | 0.8391 | 1 | 1 | 0.7691 | 1.852 | 0.6945 | 0.7901 | 0.7297 |
| Extreme days (target > Q3 + 1.5 IQR) | 68 | 0.322 | 0.9239 | 1 | 1 | 0.854 | 1.241 | 0.7147 | 0.5301 | 0.5345 |
| Aug 2015 devaluation | 54 | 0.2806 | 0.8087 | 1 | 1 | 0.7758 | 0.5822 | 0.5993 | 0.4991 | 0.627 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1780 | 0.1594 | 0.9202 | 1 | 1 | 0.8267 | 2.968 | 0.7266 |
| High RV (monthly RV > threshold) | 233 | 0.1108 | 1.121 | 1 | 1 | 0.9777 | 4.154 | 0.9807 |
| Normal days (target <= Q3 + 1.5 IQR) | 1827 | 0.1422 | 0.9344 | 1 | 1 | 0.8156 | 3.417 | 0.7527 |
| Extreme days (target > Q3 + 1.5 IQR) | 186 | 0.2676 | 0.9502 | 1 | 1 | 0.963 | 1.242 | 0.7223 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1334 | 1.02 | 1 | 1 | 0.923 | 5.616 | 0.8339 |
| Aug 2015 devaluation | 54 | 0.2806 | 0.8087 | 1 | 1 | 0.7758 | 0.5822 | 0.5993 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.679 | 4 |
| HAR | A | 3.672 | 4 |
| EN | A | 3.672 | 4 |
| RF | A | 3.733 | 4 |
| EN | C | 3.321 | 4 |
| RF | C | 3.763 | 4 |
| EN | D | 3.731 | 4 |
| RF | D | 3.768 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06741 | 1 |
| rv_d | 0.05982 | 1 |
| es_rsn_d | 0.05883 | 1 |
| es_rk_d | 0.05403 | 1 |
| vrp | 0.04305 | 1 |
| es_C_d | 0.04215 | 1 |
| iv_term | -0.03379 | 1 |
| vix9d_spread | 0.03172 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.2141 |
| es_C_d | 0.09469 |
| rv_d | 0.08793 |
| iv_term | 0.07093 |
| log_rvx | 0.06586 |
| vrp | 0.06478 |
| log_vxn | 0.06004 |
| es_rsn_d | 0.04819 |

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
| PER | A | 755 | 0.1897 | 0.138 | 0.1613 | 0.746 | 1.005 | 1.26 | -0.03887 | 0.969 | 0.5155 | -1.278 | 0.2015 | yes | 0.6752 | yes | 0.5524 | 0 | 1 | NaN |
| HAR | A | 755 | 0.1887 | 0.1095 | 0.1782 | 0.7985 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.1364 | yes | 0.7832 | 0 | 0.9948 | 0.4845 |
| EN | A | 755 | 0.1887 | 0.1095 | 0.1782 | 0.7985 | 1 | 1 | -4.852 | 1.484e-06 | 1 | 0.6612 | 0.5087 | yes | 0.1364 | yes | 0.7832 | 0 | 0.9949 | 0.4846 |
| RF | A | 755 | 0.1702 | 0.1613 | 0.1774 | 0.7032 | 0.9017 | 1.473 | 2.126 | 0.0338 | 0.0169 | -1.256 | 0.2095 | yes | 0.6752 | yes | 0.4844 | 0 | 0.8971 | 0.1753 |
| EN | C | 755 | 0.2591 | 0.1136 | 0.2003 | 0.7909 | 1.373 | 1.038 | -1.911 | 0.05636 | 0.9718 | -0.255 | 0.7988 | yes | 0.1364 | yes | 0.7832 | 10.46 | 1.366 | 0.9765 |
| RF | C | 755 | 0.1813 | 0.1125 | 0.1688 | 0.793 | 0.9609 | 1.027 | 0.92 | 0.3579 | 0.1789 | -0.2874 | 0.7739 | yes | 0.6752 | yes | 0.7832 | 0 | 0.9559 | 0.3781 |
| EN | D | 755 | 0.1588 | 0.09354 | 0.1567 | 0.8279 | 0.8418 | 0.8542 | 3.674 | 0.000256 | 0.000128 | 1.461 | 0.1444 | yes | 1 | yes | 1 | 0 | 0.8374 | 0.1167 |
| RF | D | 755 | 0.1595 | 0.1011 | 0.1639 | 0.814 | 0.8451 | 0.923 | 3.7 | 0.0002316 | 0.0001158 | 0.5802 | 0.562 | yes | 0.93 | yes | 0.7832 | 0 | 0.8407 | 0.1061 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.1628 | 0.3049 | 0.213 | 0.626 | 1.038 | 1.287 | -0.4895 | 0.6246 | 0.6877 | -1.875 | 0.06099 | yes | 0.2808 | yes | 0.2414 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.1569 | 0.237 | 0.2253 | 0.7093 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.2808 | yes | 0.5204 | 0 | 0.9637 | 0.3123 |
| EN | A | 2013 | 0.1569 | 0.237 | 0.2254 | 0.7094 | 1 | 0.9998 | -1.476 | 0.1402 | 0.9299 | 1.003 | 0.3162 | yes | 0.2772 | yes | 1 | 0 | 0.9638 | 0.3129 |
| RF | A | 2013 | 0.1415 | 0.3512 | 0.2215 | 0.5693 | 0.9022 | 1.482 | 2.806 | 0.00507 | 0.002535 | -1.246 | 0.2131 | yes | 0.884 | yes | 0.4292 | 0 | 0.8694 | 0.01772 |
| EN | C | 2013 | 0.5117 | 0.2689 | 0.2967 | 0.6702 | 3.262 | 1.135 | -4.96 | 7.657e-07 | 1 | -1.705 | 0.08831 | no | 0.0074 | yes | 0.4292 | 10.53 | 3.143 | 1 |
| RF | C | 2013 | 0.1405 | 0.2487 | 0.2181 | 0.695 | 0.8955 | 1.049 | 3.259 | 0.001136 | 0.0005681 | -0.7883 | 0.4306 | yes | 1 | yes | 0.4292 | 0 | 0.863 | 0.04063 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9637 | 0.4895 | 0.6246 | 0.3123 | 0.7773 | 1.875 | 0.06099 | 0.03049 | 0.4438 | 0.5204 |
| EN_A vs PER_A | 2013 | 0.9638 | 0.4878 | 0.6257 | 0.3129 | 0.7771 | 1.875 | 0.06097 | 0.03048 | 0.4438 | 1 |
| RF_A vs PER_A | 2013 | 0.8694 | 2.105 | 0.03543 | 0.01772 | 1.152 | -0.7166 | 0.4737 | 0.7632 | 1 | 0.165 |
| EN_A vs HAR_A | 2013 | 1 | -1.476 | 0.1402 | 0.9299 | 0.9998 | 1.003 | 0.3162 | 0.1581 | 0.4438 | 1 |
| RF_A vs HAR_A | 2013 | 0.9022 | 2.806 | 0.00507 | 0.002535 | 1.482 | -1.246 | 0.2131 | 0.8935 | 1 | 0.165 |
| RF_A vs EN_A | 2013 | 0.9021 | 2.807 | 0.005056 | 0.002528 | 1.482 | -1.246 | 0.2129 | 0.8935 | 1 | 0.165 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.3548 | -226.1 | 0.001046 | 0.7391 | 0.3558 | 4.919 | 4.7e-07 | 9.401e-07 |
| A->C | MSE | 2013 | -0.03198 | -13.49 | 0.1025 | 29.19 | 0.1345 | 1.784 | 0.03732 | 0.07463 |
| A->D | QLIKE | 755 | 0.02986 | 15.83 | 0.01069 | 6.285 | -0.01917 | -2.607 | 0.9953 | 0.009302 |
| A->D | MSE | 755 | 0.01597 | 14.58 | 0.06018 | 37.32 | 0.04422 | 1.037 | 0.15 | 0.3001 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 694 | 0.1985 | 0.9957 | 1 | 1 | 0.8828 | 1.372 | 0.951 | 0.8432 | 0.8321 |
| High RV (monthly RV > threshold) | 61 | 0.0767 | 1.284 | 1 | 1 | 1.461 | 1.397 | 1.253 | 0.8003 | 1.226 |
| Normal days (target <= Q3 + 1.5 IQR) | 676 | 0.1682 | 0.8731 | 1 | 1 | 0.8127 | 1.574 | 0.9257 | 0.8225 | 0.7935 |
| Extreme days (target > Q3 + 1.5 IQR) | 79 | 0.3642 | 1.527 | 1 | 1 | 1.254 | 0.5779 | 1.1 | 0.9179 | 1.049 |
| Aug 2015 devaluation | 54 | 0.4859 | 1.369 | 1 | 1 | 1.2 | 0.683 | 1.016 | 0.8013 | 0.9842 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1780 | 0.1673 | 1.025 | 1 | 1 | 0.8807 | 3.072 | 0.8815 |
| High RV (monthly RV > threshold) | 233 | 0.0772 | 1.252 | 1 | 1 | 1.258 | 6.406 | 1.128 |
| Normal days (target <= Q3 + 1.5 IQR) | 1816 | 0.1353 | 0.9617 | 1 | 1 | 0.8319 | 3.716 | 0.8775 |
| Extreme days (target > Q3 + 1.5 IQR) | 197 | 0.3559 | 1.304 | 1 | 0.9997 | 1.148 | 1.671 | 0.9586 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1283 | 1.086 | 1 | 1 | 0.9505 | 6.877 | 0.9036 |
| Aug 2015 devaluation | 54 | 0.4859 | 1.369 | 1 | 1 | 1.2 | 0.683 | 1.016 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.572 | 4 |
| HAR | A | 3.641 | 4 |
| EN | A | 3.641 | 4 |
| RF | A | 3.659 | 4 |
| EN | C | 3.447 | 4 |
| RF | C | 3.652 | 4 |
| EN | D | 3.692 | 4 |
| RF | D | 3.686 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.02504 | 1 |
| negret_w | -0.02225 | 1 |
| iv_skew_1m | 0.02179 | 1 |
| vrp | 0.02133 | 1 |
| iv_atm_1m | 0.0212 | 1 |
| rv_d | 0.02119 | 1 |
| parkinson_d | 0.01773 | 1 |
| log_vix | 0.01739 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.09719 |
| iv_skew_1m | 0.081 |
| log_vxn | 0.07198 |
| rv_w | 0.06616 |
| iv_term | 0.06313 |
| parkinson_w | 0.05198 |
| iv_atm_1m | 0.04415 |
| news_sent | 0.04088 |

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
| PER | A | 755 | 0.1981 | 0.1086 | 0.1836 | 0.776 | 0.7575 | 1.024 | 0.9922 | 0.3214 | 0.1607 | -0.1564 | 0.8757 | yes | 1 | yes | 0.4834 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2615 | 0.106 | 0.2542 | 0.7813 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.4242 | yes | 0.4834 | 0 | 1.32 | 0.8393 |
| EN | A | 755 | 0.2615 | 0.106 | 0.2542 | 0.7813 | 1 | 1 | -3.675 | 0.0002547 | 0.9999 | -0.3909 | 0.696 | yes | 0.4242 | yes | 0.4834 | 0 | 1.32 | 0.8393 |
| RF | A | 755 | 0.2284 | 0.1511 | 0.2303 | 0.6884 | 0.8734 | 1.425 | 1.436 | 0.1515 | 0.07574 | -1.075 | 0.2827 | yes | 0.7884 | yes | 0.4834 | 0 | 1.153 | 0.76 |
| EN | C | 755 | 0.2419 | 0.1136 | 0.2475 | 0.7657 | 0.925 | 1.072 | 0.9001 | 0.3684 | 0.1842 | -0.646 | 0.5185 | yes | 0.7884 | yes | 0.4834 | 1.722 | 1.221 | 0.7646 |
| RF | C | 755 | 0.324 | 0.1998 | 0.3318 | 0.5878 | 1.239 | 1.885 | -1.414 | 0.1576 | 0.9212 | -2.167 | 0.03057 | yes | 0.1794 | no | 0.0688 | 0 | 1.635 | 0.9334 |
| EN | D | 755 | 0.2282 | 0.08095 | 0.1942 | 0.833 | 0.8725 | 0.7637 | 1.036 | 0.3005 | 0.1502 | 2.004 | 0.04541 | yes | 0.7884 | yes | 1 | 0 | 1.152 | 0.7732 |
| RF | D | 755 | 0.2465 | 0.08357 | 0.2141 | 0.8276 | 0.9427 | 0.7884 | 0.8543 | 0.3932 | 0.1966 | 1.863 | 0.06288 | yes | 0.434 | yes | 0.6918 | 0 | 1.244 | 0.8191 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2337 | 0.2219 | 0.2495 | 0.6742 | 1.048 | 1.097 | -0.258 | 0.7965 | 0.6018 | -0.9926 | 0.321 | yes | 0.8666 | yes | 0.4092 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.223 | 0.2023 | 0.3113 | 0.703 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8666 | yes | 0.5098 | 0 | 0.9545 | 0.3982 |
| EN | A | 2013 | 0.2244 | 0.1981 | 0.3137 | 0.7092 | 1.006 | 0.9791 | -0.7264 | 0.4677 | 0.7662 | 0.7795 | 0.4358 | yes | 0.8666 | yes | 1 | 0 | 0.9602 | 0.4123 |
| RF | A | 2013 | 0.2178 | 0.3483 | 0.3049 | 0.4886 | 0.9767 | 1.722 | 0.2739 | 0.7842 | 0.3921 | -1.874 | 0.06109 | yes | 1 | yes | 0.371 | 0 | 0.9322 | 0.2661 |
| EN | C | 2013 | 0.8935 | 0.2655 | 0.3734 | 0.6103 | 4.006 | 1.312 | -2.467 | 0.01369 | 0.9932 | -1.827 | 0.06783 | no | 0.0364 | yes | 0.371 | 8.495 | 3.824 | 0.9948 |
| RF | C | 2013 | 0.2554 | 0.3009 | 0.3721 | 0.5583 | 1.145 | 1.487 | -1.303 | 0.1926 | 0.9037 | -2.838 | 0.00459 | yes | 0.5866 | yes | 0.371 | 0 | 1.093 | 0.659 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9545 | 0.258 | 0.7965 | 0.3982 | 0.9115 | 0.9926 | 0.321 | 0.1605 | 0.8666 | 0.5098 |
| EN_A vs PER_A | 2013 | 0.9602 | 0.2217 | 0.8246 | 0.4123 | 0.8925 | 1.029 | 0.3034 | 0.1517 | 0.8666 | 1 |
| RF_A vs PER_A | 2013 | 0.9322 | 0.6247 | 0.5322 | 0.2661 | 1.57 | -1.894 | 0.0584 | 0.9708 | 1 | 0.0868 |
| EN_A vs HAR_A | 2013 | 1.006 | -0.7264 | 0.4677 | 0.7662 | 0.9791 | 0.7795 | 0.4358 | 0.2179 | 0.8666 | 1 |
| RF_A vs HAR_A | 2013 | 0.9767 | 0.2739 | 0.7842 | 0.3921 | 1.722 | -1.874 | 0.06109 | 0.9695 | 1 | 0.0868 |
| RF_A vs EN_A | 2013 | 0.9709 | 0.3255 | 0.7449 | 0.3724 | 1.759 | -1.817 | 0.06931 | 0.9653 | 1 | 0.0868 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.6692 | -298.2 | -0.03751 | -17.22 | 0.6317 | 2.227 | 0.01303 | 0.02607 |
| A->C | MSE | 2013 | -0.0674 | -34.03 | 0.04746 | 13.63 | 0.1149 | 1.459 | 0.07236 | 0.1447 |
| A->D | QLIKE | 755 | 0.03335 | 12.75 | -0.01813 | -7.939 | -0.05149 | -1.318 | 0.906 | 0.188 |
| A->D | MSE | 755 | 0.02505 | 23.63 | 0.06748 | 44.68 | 0.04243 | 0.9051 | 0.1828 | 0.3657 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 694 | 0.2717 | 0.7218 | 1 | 1 | 0.8542 | 0.9123 | 1.266 | 0.8931 | 0.9607 |
| High RV (monthly RV > threshold) | 61 | 0.1452 | 1.517 | 1 | 1 | 1.283 | 1.195 | 0.6703 | 0.4341 | 0.5591 |
| Normal days (target <= Q3 + 1.5 IQR) | 660 | 0.2558 | 0.4457 | 1 | 1 | 0.7435 | 0.9392 | 1.315 | 0.6982 | 0.8523 |
| Extreme days (target > Q3 + 1.5 IQR) | 95 | 0.3013 | 2.596 | 1 | 1 | 1.639 | 0.841 | 0.7906 | 1.9 | 1.476 |
| Aug 2015 devaluation | 54 | 0.2233 | 1.977 | 1 | 1 | 1.361 | 1.01 | 0.8179 | 0.9726 | 0.8518 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1780 | 0.2379 | 1.029 | 1 | 1.007 | 0.9594 | 3.383 | 1.158 |
| High RV (monthly RV > threshold) | 233 | 0.1098 | 1.349 | 1 | 0.9942 | 1.262 | 14.31 | 0.9209 |
| Normal days (target <= Q3 + 1.5 IQR) | 1788 | 0.2022 | 0.672 | 1 | 1.018 | 0.7807 | 2.912 | 1.248 |
| Extreme days (target > Q3 + 1.5 IQR) | 225 | 0.3887 | 2.6 | 1 | 0.9555 | 1.787 | 8.526 | 0.7182 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1935 | 1.368 | 1 | 1.016 | 1.151 | 8.883 | 1.308 |
| Aug 2015 devaluation | 54 | 0.2233 | 1.977 | 1 | 1 | 1.361 | 1.01 | 0.8179 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.561 | 4 |
| HAR | A | 3.538 | 4 |
| EN | A | 3.538 | 4 |
| RF | A | 3.57 | 4 |
| EN | C | 3.547 | 4 |
| RF | C | 3.464 | 4 |
| EN | D | 3.555 | 4 |
| RF | D | 3.544 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 88 | 5.913 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 61.84 | 4.637 | 52.55 | 2.945 | 0.8026 | 0.2311 | 0.9166 |
| HAR_A | 755 | 34.7 | 2.495 | 30.95 | 2.14 | 0.4715 | 0.3517 | 0.506 |
| EN_A | 755 | 34.7 | 2.495 | 30.95 | 2.14 | 0.4715 | 0.3517 | 0.506 |
| RF_A | 755 | 49.94 | 3.606 | 39.29 | 2.241 | 0.6781 | -0.001939 | 0.7841 |
| EN_C | 755 | 48.76 | 3.417 | 43.92 | 2.347 | 0.6212 | 0.2692 | 0.6318 |
| RF_C | 755 | 38.15 | 2.284 | 48 | 2.271 | 0.5444 | 0.2616 | 0.4914 |
| EN_D | 755 | 76.82 | 4.812 | 69.06 | 3.473 | 0.7987 | 0.3966 | 0.9179 |
| RF_D | 755 | 53.04 | 3.109 | 45.34 | 2.294 | 0.6305 | 0.3994 | 0.7258 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01967 | 1 |
| rv_m | 0.01673 | 1 |
| es_C_m | 0.01635 | 1 |
| iv_skew_1m | 0.01629 | 1 |
| iv_term | -0.01537 | 1 |
| es_J_m | 0.01375 | 1 |
| iv_atm_1m | 0.01264 | 1 |
| vix9d_spread | 0.01251 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.03788 |
| es_rsp_d | 0.0376 |
| iv_atm_1m | 0.03641 |
| rv_m | 0.03505 |
| es_C_w | 0.03392 |
| log_vxn | 0.03298 |
| overnight_w | 0.03278 |
| es_rk_d | 0.03261 |

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
| SPY | 1 | RF_D | 0.6972 | 2.42e-06 | yes | yes | 0.817 | yes | HAR_A EN_A RF_A EN_C | NaN | NaN |
| SPY | 5 | EN_D | 0.8418 | 0.000128 | yes | yes | 0.8374 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | EN_D | 0.8725 | 0.1502 | yes | no | 1.152 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 69.06 | 0.3966 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.8533 | 1.178 | 0.04033 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.172 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 2.581e-05 | no | 1.172 |
| SPY | 1 | all-model common days | RF | A | 0.7833 | 1.133 | 2.374e-09 | no | 0.9179 |
| SPY | 1 | all-model common days | EN | C | 1.751 | 0.9183 | 0.0007588 | no | 2.052 |
| SPY | 1 | all-model common days | RF | C | 0.6979 | 1.057 | 5.995e-08 | yes | 0.8179 |
| SPY | 1 | all-model common days | EN | D | 0.7467 | 0.8818 | 0.001247 | yes | 0.8752 |
| SPY | 1 | all-model common days | RF | D | 0.6972 | 0.8611 | 4.839e-06 | yes | 0.817 |
| SPY | 1 | sets A-C common days | PER | A | 0.9369 | 1.006 | 0.1616 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 1.067 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 1 | 2.373e-08 | no | 1.067 |
| SPY | 1 | sets A-C common days | RF | A | 0.8393 | 1.083 | 1.112e-11 | no | 0.8958 |
| SPY | 1 | sets A-C common days | EN | C | 3.067 | 0.9835 | 8.586e-08 | no | 3.273 |
| SPY | 1 | sets A-C common days | RF | C | 0.7478 | 1.139 | 1.569e-15 | yes | 0.7981 |
| SPY | 5 | all-model common days | PER | A | 1.005 | 1.26 | 0.969 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9948 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 1.484e-06 | yes | 0.9949 |
| SPY | 5 | all-model common days | RF | A | 0.9017 | 1.473 | 0.0338 | yes | 0.8971 |
| SPY | 5 | all-model common days | EN | C | 1.373 | 1.038 | 0.05636 | yes | 1.366 |
| SPY | 5 | all-model common days | RF | C | 0.9609 | 1.027 | 0.3579 | yes | 0.9559 |
| SPY | 5 | all-model common days | EN | D | 0.8418 | 0.8542 | 0.000256 | yes | 0.8374 |
| SPY | 5 | all-model common days | RF | D | 0.8451 | 0.923 | 0.0002316 | yes | 0.8407 |
| SPY | 5 | sets A-C common days | PER | A | 1.038 | 1.287 | 0.6246 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9637 |
| SPY | 5 | sets A-C common days | EN | A | 1 | 0.9998 | 0.1402 | yes | 0.9638 |
| SPY | 5 | sets A-C common days | RF | A | 0.9022 | 1.482 | 0.00507 | yes | 0.8694 |
| SPY | 5 | sets A-C common days | EN | C | 3.262 | 1.135 | 7.657e-07 | no | 3.143 |
| SPY | 5 | sets A-C common days | RF | C | 0.8955 | 1.049 | 0.001136 | yes | 0.863 |
| SPY | 22 | all-model common days | PER | A | 0.7575 | 1.024 | 0.3214 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.32 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.0002547 | yes | 1.32 |
| SPY | 22 | all-model common days | RF | A | 0.8734 | 1.425 | 0.1515 | yes | 1.153 |
| SPY | 22 | all-model common days | EN | C | 0.925 | 1.072 | 0.3684 | yes | 1.221 |
| SPY | 22 | all-model common days | RF | C | 1.239 | 1.885 | 0.1576 | yes | 1.635 |
| SPY | 22 | all-model common days | EN | D | 0.8725 | 0.7637 | 0.3005 | yes | 1.152 |
| SPY | 22 | all-model common days | RF | D | 0.9427 | 0.7884 | 0.3932 | yes | 1.244 |
| SPY | 22 | sets A-C common days | PER | A | 1.048 | 1.097 | 0.7965 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9545 |
| SPY | 22 | sets A-C common days | EN | A | 1.006 | 0.9791 | 0.4677 | yes | 0.9602 |
| SPY | 22 | sets A-C common days | RF | A | 0.9767 | 1.722 | 0.7842 | yes | 0.9322 |
| SPY | 22 | sets A-C common days | EN | C | 4.006 | 1.312 | 0.01369 | no | 3.824 |
| SPY | 22 | sets A-C common days | RF | C | 1.145 | 1.487 | 0.1926 | yes | 1.093 |

