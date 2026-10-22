# Results: dev period, scenario "qmle"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.1484 | 0.1772 | 0.147 | 0.7186 | 0.8533 | 1.178 | 2.054 | 0.04033 | 0.02017 | -0.9379 | 0.3486 | no | 0.0008 | yes | 0.4204 | 0 | 1 | NaN |
| HAR | A | 755 | 0.174 | 0.1505 | 0.1679 | 0.7611 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0002 | yes | 0.6476 | 0 | 1.172 | 0.9798 |
| EN | A | 755 | 0.174 | 0.1505 | 0.1679 | 0.7611 | 1 | 1 | -4.234 | 2.581e-05 | 1 | 0.9626 | 0.3361 | no | 0.0002 | yes | 0.6476 | 0 | 1.172 | 0.9798 |
| RF | A | 755 | 0.1363 | 0.1704 | 0.1532 | 0.7294 | 0.7833 | 1.133 | 6.043 | 2.374e-09 | 1.187e-09 | -0.8412 | 0.4005 | no | 0.008 | yes | 0.633 | 0 | 0.9179 | 0.06091 |
| EN | C | 755 | 0.3045 | 0.1382 | 0.1963 | 0.7806 | 1.751 | 0.9183 | -3.381 | 0.0007588 | 0.9996 | 0.4018 | 0.6879 | no | 0.0002 | yes | 0.6476 | 17.62 | 2.052 | 1 |
| RF | C | 755 | 0.1219 | 0.1962 | 0.1466 | 0.6885 | 0.7007 | 1.304 | 5.577 | 3.405e-08 | 1.702e-08 | -0.8146 | 0.4156 | yes | 0.801 | yes | 0.6476 | 0 | 0.8212 | 0.0002293 |
| EN | D | 755 | 0.1227 | 0.1247 | 0.1381 | 0.802 | 0.7055 | 0.8287 | 4.118 | 4.243e-05 | 2.121e-05 | 1.562 | 0.1186 | yes | 0.801 | yes | 0.6476 | 1.325 | 0.8268 | 0.0007219 |
| RF | D | 755 | 0.1172 | 0.1187 | 0.1381 | 0.8116 | 0.6738 | 0.7886 | 5.595 | 3.087e-08 | 1.543e-08 | 1.257 | 0.209 | yes | 1 | yes | 1 | 0 | 0.7896 | 5.98e-05 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.1441 | 0.3177 | 0.2018 | 0.682 | 0.9369 | 1.006 | 1.4 | 0.1616 | 0.0808 | -0.04555 | 0.9637 | no | 0.0068 | yes | 0.9908 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.1538 | 0.3159 | 0.2253 | 0.6839 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0068 | yes | 0.9908 | 0 | 1.067 | 0.9192 |
| EN | A | 2013 | 0.1538 | 0.3158 | 0.2253 | 0.6839 | 1 | 1 | -5.605 | 2.373e-08 | 1 | 1.646 | 0.1 | no | 0.0068 | yes | 0.9908 | 0 | 1.067 | 0.9193 |
| RF | A | 2013 | 0.1291 | 0.3422 | 0.209 | 0.6575 | 0.8393 | 1.083 | 6.831 | 1.112e-11 | 5.562e-12 | -0.7976 | 0.4252 | no | 0.0068 | yes | 0.7478 | 0 | 0.8958 | 0.0006668 |
| EN | C | 2013 | 0.4717 | 0.3106 | 0.2865 | 0.6891 | 3.067 | 0.9835 | -5.374 | 8.586e-08 | 1 | 0.1708 | 0.8644 | no | 0.0068 | yes | 1 | 12.67 | 3.273 | 1 |
| RF | C | 2013 | 0.1157 | 0.3736 | 0.2091 | 0.6261 | 0.7522 | 1.183 | 8.061 | 1.28e-15 | 6.4e-16 | -0.9731 | 0.3306 | yes | 1 | yes | 0.7478 | 0 | 0.8029 | 1.057e-09 |

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
| A->C | QLIKE | 2013 | -0.3179 | -206.7 | 0.01339 | 10.37 | 0.3313 | 5.583 | 1.345e-08 | 2.69e-08 |
| A->C | MSE | 2013 | 0.005196 | 1.645 | -0.03142 | -9.182 | -0.03662 | -0.5286 | 0.7014 | 0.5972 |
| A->D | QLIKE | 755 | 0.05124 | 29.46 | 0.01905 | 13.98 | -0.0322 | -3.316 | 0.9995 | 0.0009552 |
| A->D | MSE | 755 | 0.02578 | 17.13 | 0.05178 | 30.38 | 0.02601 | 0.7891 | 0.2152 | 0.4303 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 694 | 0.1794 | 0.8352 | 1 | 1 | 0.7716 | 1.783 | 0.6841 | 0.7 | 0.6569 |
| High RV (monthly RV > threshold) | 61 | 0.1117 | 1.184 | 1 | 1 | 0.9954 | 1.156 | 1.004 | 0.8042 | 0.9821 |
| Normal days (target <= Q3 + 1.5 IQR) | 687 | 0.1593 | 0.8391 | 1 | 1 | 0.7691 | 1.852 | 0.6978 | 0.7376 | 0.6963 |
| Extreme days (target > Q3 + 1.5 IQR) | 68 | 0.322 | 0.9239 | 1 | 1 | 0.854 | 1.241 | 0.7152 | 0.5447 | 0.5609 |
| Aug 2015 devaluation | 54 | 0.2806 | 0.8087 | 1 | 1 | 0.7758 | 0.5822 | 0.6062 | 0.5193 | 0.5646 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1780 | 0.1594 | 0.9202 | 1 | 1 | 0.8267 | 2.968 | 0.7314 |
| High RV (monthly RV > threshold) | 233 | 0.1108 | 1.121 | 1 | 1 | 0.9777 | 4.154 | 0.9816 |
| Normal days (target <= Q3 + 1.5 IQR) | 1827 | 0.1422 | 0.9344 | 1 | 1 | 0.8156 | 3.417 | 0.7566 |
| Extreme days (target > Q3 + 1.5 IQR) | 186 | 0.2676 | 0.9502 | 1 | 1 | 0.963 | 1.242 | 0.7294 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1334 | 1.02 | 1 | 1 | 0.923 | 5.616 | 0.8357 |
| Aug 2015 devaluation | 54 | 0.2806 | 0.8087 | 1 | 1 | 0.7758 | 0.5822 | 0.6062 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.679 | 4 |
| HAR | A | 3.672 | 4 |
| EN | A | 3.672 | 4 |
| RF | A | 3.733 | 4 |
| EN | C | 3.321 | 4 |
| RF | C | 3.763 | 4 |
| EN | D | 3.752 | 4 |
| RF | D | 3.773 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.05617 | 1 |
| rv_d | 0.04871 | 1 |
| es_rsn_d | 0.04332 | 1 |
| es_rk_d | 0.04329 | 1 |
| vrp | 0.03551 | 1 |
| es_C_d | 0.03052 | 1 |
| negret_w | -0.02703 | 1 |
| vix9d_spread | 0.02668 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.112 |
| es_C_d | 0.09467 |
| vrp | 0.08911 |
| iv_skew_1m | 0.06941 |
| es_rsn_d | 0.0692 |
| log_vxn | 0.0657 |
| negret_w | 0.0601 |
| vix3m_spread | 0.05281 |

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
| PER | A | 755 | 0.1897 | 0.138 | 0.1613 | 0.746 | 1.005 | 1.26 | -0.03887 | 0.969 | 0.5155 | -1.278 | 0.2015 | yes | 0.6156 | yes | 0.527 | 0 | 1 | NaN |
| HAR | A | 755 | 0.1887 | 0.1095 | 0.1782 | 0.7985 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.13 | yes | 0.7792 | 0 | 0.9948 | 0.4845 |
| EN | A | 755 | 0.1887 | 0.1095 | 0.1782 | 0.7985 | 1 | 1 | -4.852 | 1.484e-06 | 1 | 0.6612 | 0.5087 | yes | 0.13 | yes | 0.7792 | 0 | 0.9949 | 0.4846 |
| RF | A | 755 | 0.1702 | 0.1613 | 0.1774 | 0.7032 | 0.9017 | 1.473 | 2.126 | 0.0338 | 0.0169 | -1.256 | 0.2095 | yes | 0.6156 | yes | 0.4528 | 0 | 0.8971 | 0.1753 |
| EN | C | 755 | 0.2591 | 0.1136 | 0.2003 | 0.7909 | 1.373 | 1.038 | -1.911 | 0.05636 | 0.9718 | -0.255 | 0.7988 | yes | 0.13 | yes | 0.7792 | 10.46 | 1.366 | 0.9765 |
| RF | C | 755 | 0.176 | 0.1224 | 0.1692 | 0.7748 | 0.9325 | 1.117 | 1.761 | 0.07863 | 0.03931 | -0.7111 | 0.4772 | yes | 0.6156 | yes | 0.7792 | 0 | 0.9277 | 0.2997 |
| EN | D | 755 | 0.157 | 0.09318 | 0.1558 | 0.8285 | 0.8321 | 0.851 | 3.624 | 0.00031 | 0.000155 | 1.456 | 0.1459 | yes | 1 | yes | 1 | 0 | 0.8278 | 0.1057 |
| RF | D | 755 | 0.1609 | 0.1005 | 0.1626 | 0.8151 | 0.853 | 0.9174 | 3.809 | 0.000151 | 7.55e-05 | 0.7032 | 0.4821 | yes | 0.6682 | yes | 0.7792 | 0 | 0.8486 | 0.1175 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.1628 | 0.3049 | 0.213 | 0.626 | 1.038 | 1.287 | -0.4895 | 0.6246 | 0.6877 | -1.875 | 0.06099 | yes | 0.2502 | yes | 0.2652 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.1569 | 0.237 | 0.2253 | 0.7093 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.2502 | yes | 0.5204 | 0 | 0.9637 | 0.3123 |
| EN | A | 2013 | 0.1569 | 0.237 | 0.2254 | 0.7094 | 1 | 0.9998 | -1.476 | 0.1402 | 0.9299 | 1.003 | 0.3162 | yes | 0.2454 | yes | 1 | 0 | 0.9638 | 0.3129 |
| RF | A | 2013 | 0.1415 | 0.3512 | 0.2215 | 0.5693 | 0.9022 | 1.482 | 2.806 | 0.00507 | 0.002535 | -1.246 | 0.2131 | yes | 0.7198 | yes | 0.4626 | 0 | 0.8694 | 0.01772 |
| EN | C | 2013 | 0.5117 | 0.2689 | 0.2967 | 0.6702 | 3.262 | 1.135 | -4.96 | 7.657e-07 | 1 | -1.705 | 0.08831 | no | 0.0072 | yes | 0.4626 | 10.53 | 3.143 | 1 |
| RF | C | 2013 | 0.1392 | 0.2514 | 0.2183 | 0.6917 | 0.8873 | 1.061 | 3.64 | 0.0002793 | 0.0001397 | -0.9108 | 0.3625 | yes | 1 | yes | 0.4626 | 0 | 0.855 | 0.03088 |

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
| A->C | QLIKE | 2013 | -0.3548 | -226.1 | 0.002339 | 1.652 | 0.3571 | 4.939 | 4.243e-07 | 8.486e-07 |
| A->C | MSE | 2013 | -0.03198 | -13.49 | 0.09982 | 28.42 | 0.1318 | 1.755 | 0.03972 | 0.07945 |
| A->D | QLIKE | 755 | 0.03169 | 16.79 | 0.009203 | 5.408 | -0.02249 | -2.679 | 0.9962 | 0.007545 |
| A->D | MSE | 755 | 0.01632 | 14.9 | 0.0608 | 37.7 | 0.04448 | 1.073 | 0.1417 | 0.2834 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 694 | 0.1985 | 0.9957 | 1 | 1 | 0.8828 | 1.372 | 0.92 | 0.8326 | 0.8424 |
| High RV (monthly RV > threshold) | 61 | 0.0767 | 1.284 | 1 | 1 | 1.461 | 1.397 | 1.3 | 0.8163 | 1.165 |
| Normal days (target <= Q3 + 1.5 IQR) | 676 | 0.1682 | 0.8731 | 1 | 1 | 0.8127 | 1.574 | 0.8866 | 0.8131 | 0.8032 |
| Extreme days (target > Q3 + 1.5 IQR) | 79 | 0.3642 | 1.527 | 1 | 1 | 1.254 | 0.5779 | 1.114 | 0.9073 | 1.05 |
| Aug 2015 devaluation | 54 | 0.4859 | 1.369 | 1 | 1 | 1.2 | 0.683 | 1.023 | 0.7824 | 0.9865 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1780 | 0.1673 | 1.025 | 1 | 1 | 0.8807 | 3.072 | 0.872 |
| High RV (monthly RV > threshold) | 233 | 0.0772 | 1.252 | 1 | 1 | 1.258 | 6.406 | 1.14 |
| Normal days (target <= Q3 + 1.5 IQR) | 1816 | 0.1353 | 0.9617 | 1 | 1 | 0.8319 | 3.716 | 0.866 |
| Extreme days (target > Q3 + 1.5 IQR) | 197 | 0.3559 | 1.304 | 1 | 0.9997 | 1.148 | 1.671 | 0.9619 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1283 | 1.086 | 1 | 1 | 0.9505 | 6.877 | 0.9164 |
| Aug 2015 devaluation | 54 | 0.4859 | 1.369 | 1 | 1 | 1.2 | 0.683 | 1.023 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.572 | 4 |
| HAR | A | 3.641 | 4 |
| EN | A | 3.641 | 4 |
| RF | A | 3.659 | 4 |
| EN | C | 3.447 | 4 |
| RF | C | 3.66 | 4 |
| EN | D | 3.695 | 4 |
| RF | D | 3.684 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.02272 | 1 |
| negret_w | -0.02125 | 1 |
| iv_skew_1m | 0.02102 | 1 |
| iv_atm_1m | 0.021 | 1 |
| vrp | 0.02058 | 1 |
| rv_d | 0.02042 | 1 |
| vix3m_spread | -0.01874 | 1 |
| log_vix | 0.01721 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.1181 |
| rv_d | 0.08266 |
| rv_w | 0.07942 |
| iv_atm_1m | 0.06191 |
| log_vxn | 0.04739 |
| parkinson_w | 0.03993 |
| iv_term | 0.03579 |
| es_C_d | 0.03463 |

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
| PER | A | 755 | 0.1981 | 0.1086 | 0.1836 | 0.776 | 0.7575 | 1.024 | 0.9922 | 0.3214 | 0.1607 | -0.1564 | 0.8757 | yes | 1 | yes | 0.4866 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2615 | 0.106 | 0.2542 | 0.7813 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3718 | yes | 0.4866 | 0 | 1.32 | 0.8393 |
| EN | A | 755 | 0.2615 | 0.106 | 0.2542 | 0.7813 | 1 | 1 | -3.675 | 0.0002547 | 0.9999 | -0.3909 | 0.696 | yes | 0.369 | yes | 0.4866 | 0 | 1.32 | 0.8393 |
| RF | A | 755 | 0.2284 | 0.1511 | 0.2303 | 0.6884 | 0.8734 | 1.425 | 1.436 | 0.1515 | 0.07574 | -1.075 | 0.2827 | yes | 0.8016 | yes | 0.4866 | 0 | 1.153 | 0.76 |
| EN | C | 755 | 0.2419 | 0.1136 | 0.2475 | 0.7657 | 0.925 | 1.072 | 0.9001 | 0.3684 | 0.1842 | -0.646 | 0.5185 | yes | 0.8016 | yes | 0.4866 | 1.722 | 1.221 | 0.7646 |
| RF | C | 755 | 0.3232 | 0.187 | 0.3182 | 0.6143 | 1.236 | 1.764 | -1.357 | 0.1752 | 0.9124 | -1.677 | 0.09389 | yes | 0.2094 | yes | 0.2402 | 0 | 1.631 | 0.9418 |
| EN | D | 755 | 0.2292 | 0.08147 | 0.1941 | 0.8319 | 0.8766 | 0.7686 | 0.9724 | 0.3312 | 0.1656 | 1.945 | 0.05217 | yes | 0.8016 | yes | 1 | 0 | 1.157 | 0.7838 |
| RF | D | 755 | 0.2723 | 0.08677 | 0.214 | 0.821 | 1.041 | 0.8186 | -0.322 | 0.7476 | 0.6262 | 1.371 | 0.1707 | yes | 0.2094 | yes | 0.4866 | 0 | 1.375 | 0.948 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2337 | 0.2219 | 0.2495 | 0.6742 | 1.048 | 1.097 | -0.258 | 0.7965 | 0.6018 | -0.9926 | 0.321 | yes | 0.8666 | yes | 0.4092 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.223 | 0.2023 | 0.3113 | 0.703 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8666 | yes | 0.5098 | 0 | 0.9545 | 0.3982 |
| EN | A | 2013 | 0.2244 | 0.1981 | 0.3137 | 0.7092 | 1.006 | 0.9791 | -0.7264 | 0.4677 | 0.7662 | 0.7795 | 0.4358 | yes | 0.8666 | yes | 1 | 0 | 0.9602 | 0.4123 |
| RF | A | 2013 | 0.2178 | 0.3483 | 0.3049 | 0.4886 | 0.9767 | 1.722 | 0.2739 | 0.7842 | 0.3921 | -1.874 | 0.06109 | yes | 1 | yes | 0.375 | 0 | 0.9322 | 0.2661 |
| EN | C | 2013 | 0.8935 | 0.2655 | 0.3734 | 0.6103 | 4.006 | 1.312 | -2.467 | 0.01369 | 0.9932 | -1.827 | 0.06783 | no | 0.0376 | yes | 0.375 | 8.495 | 3.824 | 0.9948 |
| RF | C | 2013 | 0.2633 | 0.3001 | 0.3757 | 0.5594 | 1.18 | 1.483 | -1.655 | 0.09808 | 0.951 | -2.764 | 0.005756 | yes | 0.424 | yes | 0.375 | 0 | 1.127 | 0.7147 |

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
| A->C | QLIKE | 2013 | -0.6692 | -298.2 | -0.04543 | -20.85 | 0.6237 | 2.197 | 0.01407 | 0.02814 |
| A->C | MSE | 2013 | -0.0674 | -34.03 | 0.04826 | 13.85 | 0.1157 | 1.437 | 0.07548 | 0.151 |
| A->D | QLIKE | 755 | 0.03227 | 12.34 | -0.04389 | -19.22 | -0.07616 | -2.801 | 0.9974 | 0.005224 |
| A->D | MSE | 755 | 0.02453 | 23.14 | 0.06428 | 42.56 | 0.03975 | 0.8739 | 0.1912 | 0.3824 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 694 | 0.2717 | 0.7218 | 1 | 1 | 0.8542 | 0.9123 | 1.266 | 0.8971 | 1.07 |
| High RV (monthly RV > threshold) | 61 | 0.1452 | 1.517 | 1 | 1 | 1.283 | 1.195 | 0.5864 | 0.4413 | 0.4257 |
| Normal days (target <= Q3 + 1.5 IQR) | 660 | 0.2558 | 0.4457 | 1 | 1 | 0.7435 | 0.9392 | 1.264 | 0.6968 | 0.8655 |
| Extreme days (target > Q3 + 1.5 IQR) | 95 | 0.3013 | 2.596 | 1 | 1 | 1.639 | 0.841 | 1.07 | 1.937 | 2.077 |
| Aug 2015 devaluation | 54 | 0.2233 | 1.977 | 1 | 1 | 1.361 | 1.01 | 0.5555 | 0.95 | 0.9527 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1780 | 0.2379 | 1.029 | 1 | 1.007 | 0.9594 | 3.383 | 1.198 |
| High RV (monthly RV > threshold) | 233 | 0.1098 | 1.349 | 1 | 0.9942 | 1.262 | 14.31 | 0.8918 |
| Normal days (target <= Q3 + 1.5 IQR) | 1788 | 0.2022 | 0.672 | 1 | 1.018 | 0.7807 | 2.912 | 1.271 |
| Extreme days (target > Q3 + 1.5 IQR) | 225 | 0.3887 | 2.6 | 1 | 0.9555 | 1.787 | 8.526 | 0.8052 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1935 | 1.368 | 1 | 1.016 | 1.151 | 8.883 | 1.34 |
| Aug 2015 devaluation | 54 | 0.2233 | 1.977 | 1 | 1 | 1.361 | 1.01 | 0.5555 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.561 | 4 |
| HAR | A | 3.538 | 4 |
| EN | A | 3.538 | 4 |
| RF | A | 3.57 | 4 |
| EN | C | 3.547 | 4 |
| RF | C | 3.456 | 4 |
| EN | D | 3.551 | 4 |
| RF | D | 3.479 | 4 |

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
| RF_C | 755 | 42.72 | 2.255 | 47.05 | 2.186 | 0.5762 | 0.2924 | 0.5656 |
| EN_D | 755 | 75.91 | 4.737 | 67.84 | 3.409 | 0.796 | 0.391 | 0.9152 |
| RF_D | 755 | 48.95 | 2.722 | 39.55 | 1.892 | 0.6053 | 0.3664 | 0.7007 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01979 | 1 |
| rv_m | 0.01634 | 1 |
| es_C_m | 0.01598 | 1 |
| iv_skew_1m | 0.01575 | 1 |
| vix3m_spread | -0.01487 | 1 |
| iv_term | -0.01385 | 1 |
| es_J_m | 0.01381 | 1 |
| iv_atm_1m | 0.0124 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.1259 |
| news_sent | 0.1179 |
| stlfsi4 | 0.03844 |
| ciss | 0.0366 |
| rv_m | 0.03186 |
| es_C_w | 0.03161 |
| parkinson_w | 0.0297 |
| es_J_m | 0.02778 |

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
| SPY | 1 | RF_D | 0.6738 | 1.543e-08 | yes | yes | 0.7896 | yes | HAR_A EN_A RF_A EN_C | NaN | NaN |
| SPY | 5 | EN_D | 0.8321 | 0.000155 | yes | yes | 0.8278 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | RF_A | 0.8734 | 0.07574 | yes | no | 1.153 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 39.29 | -0.001939 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.8533 | 1.178 | 0.04033 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.172 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 2.581e-05 | no | 1.172 |
| SPY | 1 | all-model common days | RF | A | 0.7833 | 1.133 | 2.374e-09 | no | 0.9179 |
| SPY | 1 | all-model common days | EN | C | 1.751 | 0.9183 | 0.0007588 | no | 2.052 |
| SPY | 1 | all-model common days | RF | C | 0.7007 | 1.304 | 3.405e-08 | yes | 0.8212 |
| SPY | 1 | all-model common days | EN | D | 0.7055 | 0.8287 | 4.243e-05 | yes | 0.8268 |
| SPY | 1 | all-model common days | RF | D | 0.6738 | 0.7886 | 3.087e-08 | yes | 0.7896 |
| SPY | 1 | sets A-C common days | PER | A | 0.9369 | 1.006 | 0.1616 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 1.067 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 1 | 2.373e-08 | no | 1.067 |
| SPY | 1 | sets A-C common days | RF | A | 0.8393 | 1.083 | 1.112e-11 | no | 0.8958 |
| SPY | 1 | sets A-C common days | EN | C | 3.067 | 0.9835 | 8.586e-08 | no | 3.273 |
| SPY | 1 | sets A-C common days | RF | C | 0.7522 | 1.183 | 1.28e-15 | yes | 0.8029 |
| SPY | 5 | all-model common days | PER | A | 1.005 | 1.26 | 0.969 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9948 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 1.484e-06 | yes | 0.9949 |
| SPY | 5 | all-model common days | RF | A | 0.9017 | 1.473 | 0.0338 | yes | 0.8971 |
| SPY | 5 | all-model common days | EN | C | 1.373 | 1.038 | 0.05636 | yes | 1.366 |
| SPY | 5 | all-model common days | RF | C | 0.9325 | 1.117 | 0.07863 | yes | 0.9277 |
| SPY | 5 | all-model common days | EN | D | 0.8321 | 0.851 | 0.00031 | yes | 0.8278 |
| SPY | 5 | all-model common days | RF | D | 0.853 | 0.9174 | 0.000151 | yes | 0.8486 |
| SPY | 5 | sets A-C common days | PER | A | 1.038 | 1.287 | 0.6246 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9637 |
| SPY | 5 | sets A-C common days | EN | A | 1 | 0.9998 | 0.1402 | yes | 0.9638 |
| SPY | 5 | sets A-C common days | RF | A | 0.9022 | 1.482 | 0.00507 | yes | 0.8694 |
| SPY | 5 | sets A-C common days | EN | C | 3.262 | 1.135 | 7.657e-07 | no | 3.143 |
| SPY | 5 | sets A-C common days | RF | C | 0.8873 | 1.061 | 0.0002793 | yes | 0.855 |
| SPY | 22 | all-model common days | PER | A | 0.7575 | 1.024 | 0.3214 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.32 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.0002547 | yes | 1.32 |
| SPY | 22 | all-model common days | RF | A | 0.8734 | 1.425 | 0.1515 | yes | 1.153 |
| SPY | 22 | all-model common days | EN | C | 0.925 | 1.072 | 0.3684 | yes | 1.221 |
| SPY | 22 | all-model common days | RF | C | 1.236 | 1.764 | 0.1752 | yes | 1.631 |
| SPY | 22 | all-model common days | EN | D | 0.8766 | 0.7686 | 0.3312 | yes | 1.157 |
| SPY | 22 | all-model common days | RF | D | 1.041 | 0.8186 | 0.7476 | yes | 1.375 |
| SPY | 22 | sets A-C common days | PER | A | 1.048 | 1.097 | 0.7965 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9545 |
| SPY | 22 | sets A-C common days | EN | A | 1.006 | 0.9791 | 0.4677 | yes | 0.9602 |
| SPY | 22 | sets A-C common days | RF | A | 0.9767 | 1.722 | 0.7842 | yes | 0.9322 |
| SPY | 22 | sets A-C common days | EN | C | 4.006 | 1.312 | 0.01369 | no | 3.824 |
| SPY | 22 | sets A-C common days | RF | C | 1.18 | 1.483 | 0.09808 | yes | 1.127 |

