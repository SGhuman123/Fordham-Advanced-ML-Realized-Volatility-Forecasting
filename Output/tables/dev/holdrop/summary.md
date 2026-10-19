# Results: dev period, scenario "holdrop"

Generated 2026-10-16 15:54 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2047 | 1.937 | 0.3223 | 0.08515 | 0.9381 | 1.237 | 0.8677 | 0.3858 | 0.1929 | -1.154 | 0.2487 | no | 0.098 | yes | 0.4558 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2183 | 1.566 | 0.334 | 0.2602 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0034 | yes | 0.4558 | 0 | 1.066 | 0.8071 |
| EN | A | 755 | 0.2238 | 1.567 | 0.3372 | 0.2597 | 1.025 | 1.001 | -6.17 | 1.113e-09 | 1 | -4.802 | 1.892e-06 | no | 0.0016 | yes | 0.4558 | 0 | 1.093 | 0.8814 |
| RF | A | 755 | 0.1893 | 1.503 | 0.3193 | 0.2901 | 0.8673 | 0.9596 | 2.421 | 0.01571 | 0.007857 | 0.2913 | 0.7709 | no | 0.098 | yes | 0.4558 | 0 | 0.9245 | 0.04264 |
| EN | C | 755 | 0.1849 | 1.381 | 0.331 | 0.3474 | 0.8473 | 0.8821 | 1.762 | 0.07854 | 0.03927 | 0.9609 | 0.3369 | no | 0.098 | yes | 0.4558 | 0.9272 | 0.9033 | 0.2207 |
| RF | C | 755 | 0.1396 | 1.221 | 0.2809 | 0.4234 | 0.6397 | 0.7794 | 4.593 | 5.122e-06 | 2.561e-06 | 1.06 | 0.2894 | yes | 0.5528 | yes | 0.722 | 0 | 0.682 | 0.002751 |
| EN | D | 755 | 0.1631 | 1.286 | 0.2944 | 0.3923 | 0.7474 | 0.8214 | 2.796 | 0.005299 | 0.00265 | 1.194 | 0.233 | no | 0.098 | yes | 0.5286 | 1.06 | 0.7968 | 0.06125 |
| RF | D | 755 | 0.1348 | 1.202 | 0.281 | 0.4322 | 0.6175 | 0.7675 | 3.852 | 0.0001273 | 6.367e-05 | 1.207 | 0.2279 | yes | 1 | yes | 1 | 0 | 0.6582 | 0.009479 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.066 | -0.8677 | 0.3858 | 0.8071 | 0.8087 | 1.154 | 0.2487 | 0.1244 | 0.185 | 0.7642 |
| EN_A vs PER_A | 755 | 1.093 | -1.183 | 0.2372 | 0.8814 | 0.8092 | 1.151 | 0.25 | 0.125 | 0.091 | 0.7584 |
| RF_A vs PER_A | 755 | 0.9245 | 1.723 | 0.08528 | 0.04264 | 0.776 | 0.8273 | 0.4083 | 0.2042 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.025 | -6.17 | 1.113e-09 | 1 | 1.001 | -4.802 | 1.892e-06 | 1 | 0.091 | 0.7584 |
| RF_A vs HAR_A | 755 | 0.8673 | 2.421 | 0.01571 | 0.007857 | 0.9596 | 0.2913 | 0.7709 | 0.3855 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.8458 | 2.773 | 0.005692 | 0.002846 | 0.959 | 0.2955 | 0.7677 | 0.3838 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.03887 | 17.37 | 0.04966 | 26.24 | 0.01079 | 0.8242 | 0.205 | 0.4101 |
| A->C | MSE | 755 | 0.1856 | 11.84 | 0.2821 | 18.77 | 0.09656 | 0.8493 | 0.198 | 0.396 |
| A->D | QLIKE | 755 | 0.06068 | 27.11 | 0.05452 | 28.8 | -0.006163 | -0.3835 | 0.6493 | 0.7015 |
| A->D | MSE | 755 | 0.2807 | 17.91 | 0.3008 | 20.02 | 0.02015 | 0.1163 | 0.4537 | 0.9074 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.234 | 0.9278 | 1 | 1.027 | 0.8453 | 0.8399 | 0.6254 | 0.7453 | 0.5993 |
| High RV (monthly RV > threshold) | 100 | 0.1154 | 1.075 | 1 | 1 | 1.159 | 0.9464 | 0.8301 | 0.776 | 0.8591 |
| Normal days (target <= Q3 + 1.5 IQR) | 674 | 0.1771 | 0.844 | 1 | 1.036 | 0.7689 | 0.9514 | 0.661 | 0.849 | 0.7146 |
| Extreme days (target > Q3 + 1.5 IQR) | 81 | 0.5611 | 1.185 | 1 | 0.9974 | 1.125 | 0.5741 | 0.584 | 0.4807 | 0.3625 |
| Aug 2015 devaluation | 54 | 0.3925 | 0.9359 | 1 | 1 | 0.8087 | 0.6542 | 0.4799 | 0.6437 | 0.5442 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.52 | 4 |
| HAR | A | 3.56 | 4 |
| EN | A | 3.552 | 4 |
| RF | A | 3.591 | 4 |
| EN | C | 3.632 | 4 |
| RF | C | 3.719 | 4 |
| EN | D | 3.665 | 4 |
| RF | D | 3.743 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix9d_spread | 0.09226 | 1 |
| es_rsn_d | 0.07934 | 1 |
| parkinson_d | 0.07567 | 1 |
| es_rk_d | 0.06723 | 1 |
| es_C_d | 0.06585 | 1 |
| rv_d | 0.06334 | 1 |
| negret_d | -0.05831 | 1 |
| iv_term | -0.05339 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.252 |
| es_rsn_d | 0.1088 |
| rv_d | 0.07745 |
| es_rk_d | 0.07202 |
| es_C_d | 0.05863 |
| parkinson_d | 0.04037 |
| log_vxn | 0.03891 |
| log_vix | 0.03592 |

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
| PER | A | 755 | 0.265 | 1.142 | 0.3722 | -0.0153 | 0.9015 | 1.375 | 0.9607 | 0.337 | 0.1685 | -1.211 | 0.2262 | yes | 0.4342 | yes | 0.3506 | 0 | 1 | NaN |
| HAR | A | 755 | 0.294 | 0.8303 | 0.394 | 0.2615 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.003 | yes | 0.3506 | 0 | 1.109 | 0.8315 |
| EN | A | 755 | 0.2993 | 0.8321 | 0.3977 | 0.26 | 1.018 | 1.002 | -5.908 | 5.24e-09 | 1 | -6.15 | 1.259e-09 | no | 0.0016 | yes | 0.3506 | 0 | 1.129 | 0.8681 |
| RF | A | 755 | 0.233 | 0.7619 | 0.3306 | 0.3224 | 0.7925 | 0.9176 | 4.122 | 4.18e-05 | 2.09e-05 | 0.8266 | 0.4087 | yes | 0.516 | yes | 0.3506 | 0 | 0.8791 | 0.0655 |
| EN | C | 755 | 0.2148 | 0.6775 | 0.3404 | 0.3975 | 0.7307 | 0.8159 | 3.862 | 0.0001219 | 6.096e-05 | 1.38 | 0.168 | yes | 0.6638 | yes | 1 | 0 | 0.8105 | 0.08376 |
| RF | C | 755 | 0.2506 | 0.6923 | 0.3586 | 0.3843 | 0.8525 | 0.8338 | 2.342 | 0.01944 | 0.00972 | 1.164 | 0.2449 | yes | 0.4342 | yes | 0.7738 | 0 | 0.9457 | 0.3377 |
| EN | D | 755 | 0.2121 | 0.6787 | 0.3283 | 0.3964 | 0.7214 | 0.8174 | 4.7 | 3.092e-06 | 1.546e-06 | 1.504 | 0.133 | yes | 1 | yes | 0.9326 | 0 | 0.8003 | 0.05702 |
| RF | D | 755 | 0.231 | 0.6929 | 0.3396 | 0.3838 | 0.7857 | 0.8345 | 4.202 | 2.964e-05 | 1.482e-05 | 1.232 | 0.2182 | yes | 0.516 | yes | 0.7738 | 0 | 0.8716 | 0.1298 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.109 | -0.9607 | 0.337 | 0.8315 | 0.7273 | 1.211 | 0.2262 | 0.1131 | 0.0996 | 0.4076 |
| EN_A vs PER_A | 755 | 1.129 | -1.118 | 0.2637 | 0.8681 | 0.7288 | 1.204 | 0.2288 | 0.1144 | 0.068 | 0.3816 |
| RF_A vs PER_A | 755 | 0.8791 | 1.512 | 0.131 | 0.0655 | 0.6674 | 1.241 | 0.2151 | 0.1076 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.018 | -5.908 | 5.24e-09 | 1 | 1.002 | -6.15 | 1.259e-09 | 1 | 0.068 | 0.3816 |
| RF_A vs HAR_A | 755 | 0.7925 | 4.122 | 4.18e-05 | 2.09e-05 | 0.9176 | 0.8266 | 0.4087 | 0.2044 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.7784 | 4.321 | 1.763e-05 | 8.817e-06 | 0.9157 | 0.8477 | 0.3969 | 0.1984 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.08452 | 28.23 | -0.01765 | -7.574 | -0.1022 | -4.412 | 1 | 1.174e-05 |
| A->C | MSE | 755 | 0.1546 | 18.58 | 0.0696 | 9.134 | -0.085 | -1.135 | 0.8716 | 0.2568 |
| A->D | QLIKE | 755 | 0.08724 | 29.14 | 0.001988 | 0.8531 | -0.08525 | -4.848 | 1 | 1.513e-06 |
| A->D | MSE | 755 | 0.1534 | 18.43 | 0.06906 | 9.063 | -0.08432 | -1.189 | 0.8827 | 0.2347 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3219 | 0.8951 | 1 | 1.019 | 0.794 | 0.7247 | 0.859 | 0.7211 | 0.7903 |
| High RV (monthly RV > threshold) | 100 | 0.1114 | 1.022 | 1 | 1 | 0.7625 | 0.8438 | 0.7298 | 0.728 | 0.6992 |
| Normal days (target <= Q3 + 1.5 IQR) | 664 | 0.2213 | 0.6954 | 1 | 1.027 | 0.6464 | 0.7446 | 0.8411 | 0.7081 | 0.7352 |
| Extreme days (target > Q3 + 1.5 IQR) | 91 | 0.8249 | 1.305 | 1 | 1 | 1.078 | 0.7033 | 0.8749 | 0.7474 | 0.8846 |
| Aug 2015 devaluation | 54 | 0.9245 | 1.182 | 1 | 1 | 1.001 | 0.8015 | 1.038 | 0.8664 | 1.01 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.377 | 4 |
| HAR | A | 3.406 | 4 |
| EN | A | 3.399 | 4 |
| RF | A | 3.486 | 4 |
| EN | C | 3.561 | 4 |
| RF | C | 3.48 | 4 |
| EN | D | 3.559 | 4 |
| RF | D | 3.511 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.05431 | 1 |
| vix9d_spread | 0.0445 | 1 |
| iv_atm_1m | 0.04441 | 1 |
| negret_w | -0.042 | 1 |
| iv_skew_1m | 0.0419 | 1 |
| es_rsn_d | 0.03592 | 1 |
| log_vxn | 0.03581 | 1 |
| parkinson_d | 0.03475 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.09119 |
| iv_atm_1m | 0.07004 |
| iv_skew_1m | 0.0694 |
| log_vxn | 0.06153 |
| parkinson_w | 0.05605 |
| es_rsn_w | 0.05261 |
| log_vix | 0.0446 |
| es_rk_d | 0.04325 |

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
| PER | A | 755 | 0.3041 | 0.6097 | 0.4301 | -0.000879 | 0.9362 | 1.33 | 0.2707 | 0.7867 | 0.3933 | -1.399 | 0.1623 | yes | 0.916 | yes | 0.3142 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3248 | 0.4585 | 0.4667 | 0.2474 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.664 | yes | 0.7534 | 0 | 1.068 | 0.6067 |
| EN | A | 755 | 0.385 | 0.5023 | 0.5194 | 0.1755 | 1.185 | 1.095 | -3.277 | 0.001096 | 0.9995 | -3.2 | 0.001433 | yes | 0.386 | yes | 0.1256 | 0 | 1.266 | 0.8155 |
| RF | A | 755 | 0.2976 | 0.4431 | 0.428 | 0.2727 | 0.916 | 0.9663 | 1.395 | 0.1634 | 0.08171 | 0.5656 | 0.5718 | yes | 1 | yes | 0.8698 | 0 | 0.9785 | 0.4587 |
| EN | C | 755 | 0.3526 | 0.4147 | 0.4238 | 0.3193 | 1.085 | 0.9044 | -0.752 | 0.4523 | 0.7739 | 1.287 | 0.1986 | yes | 0.386 | yes | 1 | 0 | 1.16 | 0.7873 |
| RF | C | 755 | 0.3653 | 0.4297 | 0.4572 | 0.2947 | 1.125 | 0.9372 | -1.807 | 0.07116 | 0.9644 | 0.8222 | 0.4112 | yes | 0.386 | yes | 0.8698 | 0 | 1.201 | 0.7897 |
| EN | D | 755 | 0.3818 | 0.4375 | 0.4391 | 0.2819 | 1.175 | 0.9542 | -1.199 | 0.2308 | 0.8846 | 0.6689 | 0.5038 | yes | 0.386 | yes | 0.8698 | 0 | 1.256 | 0.9044 |
| RF | D | 755 | 0.3646 | 0.4464 | 0.4645 | 0.2673 | 1.122 | 0.9735 | -2.059 | 0.03979 | 0.9801 | 0.3418 | 0.7326 | yes | 0.386 | yes | 0.7534 | 0 | 1.199 | 0.7933 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.068 | -0.2707 | 0.7867 | 0.6067 | 0.752 | 1.399 | 0.1623 | 0.08117 | 0.664 | 0.561 |
| EN_A vs PER_A | 755 | 1.266 | -0.8988 | 0.3691 | 0.8155 | 0.8237 | 0.9384 | 0.3483 | 0.1742 | 0.0836 | 0.2322 |
| RF_A vs PER_A | 755 | 0.9785 | 0.1038 | 0.9174 | 0.4587 | 0.7266 | 1.41 | 0.159 | 0.07949 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.185 | -3.277 | 0.001096 | 0.9995 | 1.095 | -3.2 | 0.001433 | 0.9993 | 0.0836 | 0.2322 |
| RF_A vs HAR_A | 755 | 0.916 | 1.395 | 0.1634 | 0.08171 | 0.9663 | 0.5656 | 0.5718 | 0.2859 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.773 | 2.516 | 0.01208 | 0.006038 | 0.8821 | 1.8 | 0.07219 | 0.03609 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.03236 | 8.406 | -0.06773 | -22.76 | -0.1001 | -1.922 | 0.9725 | 0.05503 |
| A->C | MSE | 755 | 0.08758 | 17.44 | 0.01338 | 3.02 | -0.0742 | -2.119 | 0.9828 | 0.0344 |
| A->D | QLIKE | 755 | 0.003147 | 0.8174 | -0.06703 | -22.52 | -0.07017 | -1.229 | 0.8902 | 0.2196 |
| A->D | MSE | 755 | 0.06478 | 12.9 | -0.003294 | -0.7434 | -0.06807 | -1.978 | 0.9759 | 0.04825 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3471 | 0.8714 | 1 | 1.201 | 0.9309 | 1.124 | 1.162 | 1.221 | 1.157 |
| High RV (monthly RV > threshold) | 100 | 0.1791 | 1.759 | 1 | 0.9888 | 0.7277 | 0.6004 | 0.6433 | 0.5902 | 0.688 |
| Normal days (target <= Q3 + 1.5 IQR) | 668 | 0.2681 | 0.627 | 1 | 1.253 | 0.835 | 0.9654 | 1.114 | 1.029 | 1.107 |
| Extreme days (target > Q3 + 1.5 IQR) | 87 | 0.7604 | 1.773 | 1 | 1 | 1.135 | 1.411 | 1.153 | 1.573 | 1.165 |
| Aug 2015 devaluation | 54 | 0.3479 | 1.937 | 1 | 1 | 0.6611 | 0.9701 | 0.8362 | 1.107 | 0.8758 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.31 | 4 |
| HAR | A | 3.387 | 4 |
| EN | A | 3.303 | 4 |
| RF | A | 3.406 | 4 |
| EN | C | 3.296 | 4 |
| RF | C | 3.31 | 4 |
| EN | D | 3.232 | 4 |
| RF | D | 3.31 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 71.84 | 3.615 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 22.97 | 1.077 | 25.54 | 1.22 | 0.7205 | 0.05353 | 0.8397 |
| HAR_A | 755 | 22.67 | 1.563 | 28.04 | 1.968 | 0.5179 | 0.2776 | 0.6 |
| EN_A | 755 | 9.441 | 0.5812 | 13.86 | 0.8409 | 0.449 | 0.2549 | 0.5285 |
| RF_A | 755 | 45.62 | 3.681 | 49.48 | 4.213 | 0.6636 | 0.2394 | 0.7536 |
| EN_C | 755 | 23.27 | 1.061 | 30.02 | 1.374 | 0.551 | 0.3605 | 0.6596 |
| RF_C | 755 | 6.744 | 0.3001 | 12.71 | 0.566 | 0.4755 | 0.3433 | 0.5603 |
| EN_D | 755 | 17.14 | 0.7619 | 23.81 | 1.06 | 0.5245 | 0.3115 | 0.6305 |
| RF_D | 755 | 4.397 | 0.2024 | 12.31 | 0.5699 | 0.4742 | 0.3332 | 0.5245 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_atm_1m | 0.08039 | 1 |
| iv_skew_1m | 0.0475 | 1 |
| parkinson_w | 0.03689 | 1 |
| news_sent | -0.03273 | 0.6667 |
| iv_term | -0.02106 | 0.6667 |
| es_C_m | 0.02016 | 0.6667 |
| vix9d_spread | 0.02015 | 0.6667 |
| rv_m | 0.0201 | 0.6667 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.0966 |
| news_sent | 0.0808 |
| nfci | 0.04743 |
| parkinson_w | 0.04301 |
| log_vix | 0.03948 |
| log_vxn | 0.03739 |
| rv_d | 0.03546 |
| es_rsn_w | 0.03155 |

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
| ES | 1 | RF_D | 0.6175 | 6.367e-05 | yes | yes | 0.6582 | yes | HAR_A EN_A EN_C EN_D | NaN | NaN |
| ES | 5 | EN_D | 0.7214 | 1.546e-06 | yes | yes | 0.8003 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.916 | 0.08171 | yes | no | 0.9785 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 49.48 | 0.2394 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 0.9381 | 1.237 | 0.3858 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.066 |
| ES | 1 | all-model common days | EN | A | 1.025 | 1.001 | 1.113e-09 | no | 1.093 |
| ES | 1 | all-model common days | RF | A | 0.8673 | 0.9596 | 0.01571 | no | 0.9245 |
| ES | 1 | all-model common days | EN | C | 0.8473 | 0.8821 | 0.07854 | no | 0.9033 |
| ES | 1 | all-model common days | RF | C | 0.6397 | 0.7794 | 5.122e-06 | yes | 0.682 |
| ES | 1 | all-model common days | EN | D | 0.7474 | 0.8214 | 0.005299 | no | 0.7968 |
| ES | 1 | all-model common days | RF | D | 0.6175 | 0.7675 | 0.0001273 | yes | 0.6582 |
| ES | 5 | all-model common days | PER | A | 0.9015 | 1.375 | 0.337 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.109 |
| ES | 5 | all-model common days | EN | A | 1.018 | 1.002 | 5.24e-09 | no | 1.129 |
| ES | 5 | all-model common days | RF | A | 0.7925 | 0.9176 | 4.18e-05 | yes | 0.8791 |
| ES | 5 | all-model common days | EN | C | 0.7307 | 0.8159 | 0.0001219 | yes | 0.8105 |
| ES | 5 | all-model common days | RF | C | 0.8525 | 0.8338 | 0.01944 | yes | 0.9457 |
| ES | 5 | all-model common days | EN | D | 0.7214 | 0.8174 | 3.092e-06 | yes | 0.8003 |
| ES | 5 | all-model common days | RF | D | 0.7857 | 0.8345 | 2.964e-05 | yes | 0.8716 |
| ES | 22 | all-model common days | PER | A | 0.9362 | 1.33 | 0.7867 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.068 |
| ES | 22 | all-model common days | EN | A | 1.185 | 1.095 | 0.001096 | yes | 1.266 |
| ES | 22 | all-model common days | RF | A | 0.916 | 0.9663 | 0.1634 | yes | 0.9785 |
| ES | 22 | all-model common days | EN | C | 1.085 | 0.9044 | 0.4523 | yes | 1.16 |
| ES | 22 | all-model common days | RF | C | 1.125 | 0.9372 | 0.07116 | yes | 1.201 |
| ES | 22 | all-model common days | EN | D | 1.175 | 0.9542 | 0.2308 | yes | 1.256 |
| ES | 22 | all-model common days | RF | D | 1.122 | 0.9735 | 0.03979 | yes | 1.199 |

