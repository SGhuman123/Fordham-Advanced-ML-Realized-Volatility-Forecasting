# Results: dev period, scenario "holdrop"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2047 | 1.937 | 0.3223 | 0.08515 | 0.9381 | 1.237 | 0.8677 | 0.3858 | 0.1929 | -1.154 | 0.2487 | no | 0.0778 | yes | 0.4314 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2183 | 1.566 | 0.334 | 0.2602 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0028 | yes | 0.4314 | 0 | 1.066 | 0.8071 |
| EN | A | 755 | 0.2238 | 1.567 | 0.3372 | 0.2597 | 1.025 | 1.001 | -6.17 | 1.113e-09 | 1 | -4.802 | 1.892e-06 | no | 0.0016 | yes | 0.4314 | 0 | 1.093 | 0.8814 |
| RF | A | 755 | 0.1893 | 1.503 | 0.3193 | 0.2901 | 0.8673 | 0.9596 | 2.421 | 0.01571 | 0.007857 | 0.2913 | 0.7709 | no | 0.0778 | yes | 0.4314 | 0 | 0.9245 | 0.04264 |
| EN | C | 755 | 0.1732 | 1.328 | 0.3264 | 0.3729 | 0.7934 | 0.8477 | 2.386 | 0.01728 | 0.00864 | 0.9989 | 0.3181 | no | 0.0778 | yes | 0.4314 | 0 | 0.8458 | 0.1153 |
| RF | C | 755 | 0.1348 | 1.13 | 0.2831 | 0.4661 | 0.6176 | 0.7216 | 3.775 | 0.0001725 | 8.627e-05 | 1.13 | 0.2589 | yes | 0.4632 | yes | 1 | 0 | 0.6583 | 0.009118 |
| EN | D | 755 | 0.1624 | 1.297 | 0.3074 | 0.3871 | 0.7441 | 0.8284 | 3.159 | 0.001645 | 0.0008224 | 1.111 | 0.2671 | no | 0.0778 | yes | 0.4314 | 0 | 0.7933 | 0.04869 |
| RF | D | 755 | 0.1321 | 1.197 | 0.2793 | 0.4347 | 0.6051 | 0.7642 | 3.955 | 8.367e-05 | 4.183e-05 | 1.222 | 0.2222 | yes | 1 | yes | 0.552 | 0 | 0.645 | 0.007403 |

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
| A->C | QLIKE | 755 | 0.05064 | 22.63 | 0.0545 | 28.79 | 0.003851 | 0.2546 | 0.3996 | 0.7991 |
| A->C | MSE | 755 | 0.2395 | 15.28 | 0.3727 | 24.8 | 0.1332 | 1.131 | 0.1291 | 0.2583 |
| A->D | QLIKE | 755 | 0.06139 | 27.43 | 0.05722 | 30.23 | -0.004169 | -0.2647 | 0.6043 | 0.7913 |
| A->D | MSE | 755 | 0.2697 | 17.21 | 0.306 | 20.36 | 0.03639 | 0.2038 | 0.4193 | 0.8386 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.234 | 0.9278 | 1 | 1.027 | 0.8453 | 0.7884 | 0.6014 | 0.7394 | 0.587 |
| High RV (monthly RV > threshold) | 100 | 0.1154 | 1.075 | 1 | 1 | 1.159 | 0.8601 | 0.8318 | 0.8073 | 0.845 |
| Normal days (target <= Q3 + 1.5 IQR) | 674 | 0.1771 | 0.844 | 1 | 1.036 | 0.7689 | 0.8997 | 0.7058 | 0.8306 | 0.6938 |
| Extreme days (target > Q3 + 1.5 IQR) | 81 | 0.5611 | 1.185 | 1 | 0.9974 | 1.125 | 0.5144 | 0.386 | 0.5172 | 0.372 |
| Aug 2015 devaluation | 54 | 0.3925 | 0.9359 | 1 | 1 | 0.8087 | 0.5448 | 0.4397 | 0.613 | 0.5274 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.52 | 4 |
| HAR | A | 3.56 | 4 |
| EN | A | 3.552 | 4 |
| RF | A | 3.591 | 4 |
| EN | C | 3.671 | 4 |
| RF | C | 3.741 | 4 |
| EN | D | 3.685 | 4 |
| RF | D | 3.746 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix9d_spread | 0.06373 | 1 |
| es_rsn_d | 0.06187 | 1 |
| parkinson_d | 0.05733 | 1 |
| es_rk_d | 0.05414 | 1 |
| es_C_d | 0.05398 | 1 |
| rv_d | 0.05262 | 1 |
| overnight_d | 0.045 | 1 |
| negret_d | -0.04488 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2163 |
| es_rsn_d | 0.1069 |
| es_rk_d | 0.08154 |
| rv_d | 0.07293 |
| es_C_d | 0.06105 |
| log_vxn | 0.03808 |
| log_vix | 0.03384 |
| parkinson_d | 0.0333 |

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
| PER | A | 755 | 0.265 | 1.142 | 0.3722 | -0.0153 | 0.9015 | 1.375 | 0.9607 | 0.337 | 0.1685 | -1.211 | 0.2262 | yes | 0.337 | yes | 0.3514 | 0 | 1 | NaN |
| HAR | A | 755 | 0.294 | 0.8303 | 0.394 | 0.2615 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0012 | yes | 0.3514 | 0 | 1.109 | 0.8315 |
| EN | A | 755 | 0.2993 | 0.8321 | 0.3977 | 0.26 | 1.018 | 1.002 | -5.908 | 5.24e-09 | 1 | -6.15 | 1.259e-09 | no | 0.001 | yes | 0.3514 | 0 | 1.129 | 0.8681 |
| RF | A | 755 | 0.233 | 0.7619 | 0.3306 | 0.3224 | 0.7925 | 0.9176 | 4.122 | 4.18e-05 | 2.09e-05 | 0.8266 | 0.4087 | yes | 0.5098 | yes | 0.3514 | 0 | 0.8791 | 0.0655 |
| EN | C | 755 | 0.2171 | 0.6681 | 0.3359 | 0.4058 | 0.7384 | 0.8047 | 3.887 | 0.0001103 | 5.514e-05 | 1.369 | 0.1713 | yes | 0.5098 | yes | 1 | 0 | 0.8191 | 0.09519 |
| RF | C | 755 | 0.2452 | 0.6873 | 0.3501 | 0.3887 | 0.8338 | 0.8278 | 2.666 | 0.007837 | 0.003918 | 1.245 | 0.2134 | yes | 0.337 | yes | 0.5472 | 0 | 0.9249 | 0.2822 |
| EN | D | 755 | 0.2088 | 0.674 | 0.3255 | 0.4006 | 0.7102 | 0.8117 | 4.682 | 3.367e-06 | 1.684e-06 | 1.51 | 0.1314 | yes | 1 | yes | 0.8582 | 0 | 0.7878 | 0.04977 |
| RF | D | 755 | 0.2093 | 0.6822 | 0.3155 | 0.3933 | 0.7117 | 0.8216 | 5.122 | 3.841e-07 | 1.921e-07 | 1.308 | 0.1913 | yes | 0.9716 | yes | 0.8582 | 0 | 0.7895 | 0.03103 |

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
| A->C | QLIKE | 755 | 0.08225 | 27.48 | -0.01215 | -5.216 | -0.09441 | -4.414 | 1 | 1.163e-05 |
| A->C | MSE | 755 | 0.1639 | 19.7 | 0.07462 | 9.794 | -0.08931 | -1.051 | 0.8533 | 0.2934 |
| A->D | QLIKE | 755 | 0.09054 | 30.25 | 0.02374 | 10.19 | -0.0668 | -4.155 | 1 | 3.629e-05 |
| A->D | MSE | 755 | 0.1581 | 19 | 0.07972 | 10.46 | -0.07836 | -1.082 | 0.8602 | 0.2796 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3219 | 0.8951 | 1 | 1.019 | 0.794 | 0.7353 | 0.8391 | 0.71 | 0.7098 |
| High RV (monthly RV > threshold) | 100 | 0.1114 | 1.022 | 1 | 1 | 0.7625 | 0.7967 | 0.7331 | 0.7125 | 0.7474 |
| Normal days (target <= Q3 + 1.5 IQR) | 664 | 0.2213 | 0.6954 | 1 | 1.027 | 0.6464 | 0.7484 | 0.8163 | 0.6987 | 0.6215 |
| Extreme days (target > Q3 + 1.5 IQR) | 91 | 0.8249 | 1.305 | 1 | 1 | 1.078 | 0.7187 | 0.868 | 0.7326 | 0.8883 |
| Aug 2015 devaluation | 54 | 0.9245 | 1.182 | 1 | 1 | 1.001 | 0.8204 | 1.031 | 0.8486 | 0.9979 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.377 | 4 |
| HAR | A | 3.406 | 4 |
| EN | A | 3.399 | 4 |
| RF | A | 3.486 | 4 |
| EN | C | 3.555 | 4 |
| RF | C | 3.49 | 4 |
| EN | D | 3.566 | 4 |
| RF | D | 3.545 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.04915 | 1 |
| iv_atm_1m | 0.04419 | 1 |
| vix9d_spread | 0.04115 | 1 |
| iv_skew_1m | 0.04034 | 1 |
| negret_w | -0.03994 | 1 |
| log_vxn | 0.03572 | 1 |
| es_rsn_d | 0.03448 | 1 |
| vix3m_spread | -0.03441 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1268 |
| log_vxn | 0.1086 |
| iv_skew_1m | 0.1003 |
| iv_atm_1m | 0.07221 |
| parkinson_w | 0.06887 |
| log_vix | 0.06768 |
| es_rsn_d | 0.06296 |
| es_C_d | 0.05842 |

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
| PER | A | 755 | 0.3041 | 0.6097 | 0.4301 | -0.000879 | 0.9362 | 1.33 | 0.2707 | 0.7867 | 0.3933 | -1.399 | 0.1623 | yes | 0.916 | yes | 0.2854 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3248 | 0.4585 | 0.4667 | 0.2474 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.664 | yes | 0.5904 | 0 | 1.068 | 0.6067 |
| EN | A | 755 | 0.385 | 0.5023 | 0.5194 | 0.1755 | 1.185 | 1.095 | -3.277 | 0.001096 | 0.9995 | -3.2 | 0.001433 | yes | 0.2906 | no | 0.0716 | 0 | 1.266 | 0.8155 |
| RF | A | 755 | 0.2976 | 0.4431 | 0.428 | 0.2727 | 0.916 | 0.9663 | 1.395 | 0.1634 | 0.08171 | 0.5656 | 0.5718 | yes | 1 | yes | 0.8488 | 0 | 0.9785 | 0.4587 |
| EN | C | 755 | 0.3626 | 0.421 | 0.4299 | 0.3089 | 1.116 | 0.9182 | -0.9814 | 0.3267 | 0.8367 | 1.086 | 0.2779 | yes | 0.2906 | yes | 0.8904 | 0 | 1.192 | 0.8245 |
| RF | C | 755 | 0.3599 | 0.4282 | 0.462 | 0.2971 | 1.108 | 0.9339 | -1.878 | 0.06071 | 0.9696 | 0.8177 | 0.4138 | yes | 0.2906 | yes | 0.8596 | 0 | 1.184 | 0.7577 |
| EN | D | 755 | 0.3751 | 0.4312 | 0.4293 | 0.2922 | 1.155 | 0.9405 | -1.011 | 0.3121 | 0.8439 | 0.8754 | 0.3816 | yes | 0.2906 | yes | 0.8596 | 0 | 1.233 | 0.8938 |
| RF | D | 755 | 0.3427 | 0.4182 | 0.4409 | 0.3135 | 1.055 | 0.9122 | -1.187 | 0.2355 | 0.8822 | 1.13 | 0.2589 | yes | 0.3276 | yes | 1 | 0 | 1.127 | 0.694 |

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
| A->C | QLIKE | 755 | 0.02234 | 5.803 | -0.06238 | -20.96 | -0.08472 | -1.529 | 0.9366 | 0.1267 |
| A->C | MSE | 755 | 0.08127 | 16.18 | 0.01488 | 3.359 | -0.06639 | -1.883 | 0.97 | 0.06007 |
| A->D | QLIKE | 755 | 0.009858 | 2.561 | -0.04513 | -15.17 | -0.05499 | -0.8742 | 0.8089 | 0.3823 |
| A->D | MSE | 755 | 0.07104 | 14.14 | 0.02483 | 5.603 | -0.04621 | -1.368 | 0.9142 | 0.1716 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3471 | 0.8714 | 1 | 1.201 | 0.9309 | 1.158 | 1.142 | 1.2 | 1.089 |
| High RV (monthly RV > threshold) | 100 | 0.1791 | 1.759 | 1 | 0.9888 | 0.7277 | 0.5854 | 0.681 | 0.5754 | 0.6281 |
| Normal days (target <= Q3 + 1.5 IQR) | 668 | 0.2681 | 0.627 | 1 | 1.253 | 0.835 | 0.9983 | 1.124 | 0.9873 | 1.042 |
| Extreme days (target > Q3 + 1.5 IQR) | 87 | 0.7604 | 1.773 | 1 | 1 | 1.135 | 1.436 | 1.064 | 1.608 | 1.09 |
| Aug 2015 devaluation | 54 | 0.3479 | 1.937 | 1 | 1 | 0.6611 | 0.9415 | 0.7932 | 1.078 | 0.8374 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.31 | 4 |
| HAR | A | 3.387 | 4 |
| EN | A | 3.303 | 4 |
| RF | A | 3.406 | 4 |
| EN | C | 3.278 | 4 |
| RF | C | 3.328 | 4 |
| EN | D | 3.236 | 4 |
| RF | D | 3.35 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 71.84 | 3.615 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 22.97 | 1.077 | 25.54 | 1.22 | 0.7205 | 0.05353 | 0.8397 |
| HAR_A | 755 | 22.67 | 1.563 | 28.04 | 1.968 | 0.5179 | 0.2776 | 0.6 |
| EN_A | 755 | 9.441 | 0.5812 | 13.86 | 0.8409 | 0.449 | 0.2549 | 0.5285 |
| RF_A | 755 | 45.62 | 3.681 | 49.48 | 4.213 | 0.6636 | 0.2394 | 0.7536 |
| EN_C | 755 | 22.66 | 1.007 | 29.65 | 1.32 | 0.5483 | 0.3457 | 0.657 |
| RF_C | 755 | 6.951 | 0.3093 | 12.8 | 0.569 | 0.4755 | 0.3573 | 0.5656 |
| EN_D | 755 | 22.69 | 1.018 | 30.1 | 1.361 | 0.5497 | 0.3116 | 0.6609 |
| RF_D | 755 | 15.96 | 0.7659 | 22.6 | 1.091 | 0.5152 | 0.3583 | 0.6079 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.03791 | 1 |
| iv_skew_1m | 0.02749 | 1 |
| vix3m_spread | -0.02528 | 1 |
| rv_m | 0.02484 | 1 |
| es_C_m | 0.02483 | 1 |
| iv_term | -0.02353 | 1 |
| vix9d_spread | 0.02204 | 1 |
| es_J_m | 0.02105 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.04859 |
| iv_term | 0.03906 |
| rv_w | 0.03702 |
| rv_d | 0.03682 |
| es_rsp_w | 0.03503 |
| log_vxn | 0.03364 |
| overnight_w | 0.03246 |
| log_vix | 0.03119 |

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
| ES | 1 | RF_D | 0.6051 | 4.183e-05 | yes | yes | 0.645 | yes | HAR_A EN_A EN_C | NaN | NaN |
| ES | 5 | EN_D | 0.7102 | 1.684e-06 | yes | yes | 0.7878 | yes | HAR_A EN_A RF_A EN_C RF_C | NaN | NaN |
| ES | 22 | RF_A | 0.916 | 0.08171 | yes | no | 0.9785 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 49.48 | 0.2394 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 0.9381 | 1.237 | 0.3858 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.066 |
| ES | 1 | all-model common days | EN | A | 1.025 | 1.001 | 1.113e-09 | no | 1.093 |
| ES | 1 | all-model common days | RF | A | 0.8673 | 0.9596 | 0.01571 | no | 0.9245 |
| ES | 1 | all-model common days | EN | C | 0.7934 | 0.8477 | 0.01728 | no | 0.8458 |
| ES | 1 | all-model common days | RF | C | 0.6176 | 0.7216 | 0.0001725 | yes | 0.6583 |
| ES | 1 | all-model common days | EN | D | 0.7441 | 0.8284 | 0.001645 | no | 0.7933 |
| ES | 1 | all-model common days | RF | D | 0.6051 | 0.7642 | 8.367e-05 | yes | 0.645 |
| ES | 5 | all-model common days | PER | A | 0.9015 | 1.375 | 0.337 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.109 |
| ES | 5 | all-model common days | EN | A | 1.018 | 1.002 | 5.24e-09 | no | 1.129 |
| ES | 5 | all-model common days | RF | A | 0.7925 | 0.9176 | 4.18e-05 | yes | 0.8791 |
| ES | 5 | all-model common days | EN | C | 0.7384 | 0.8047 | 0.0001103 | yes | 0.8191 |
| ES | 5 | all-model common days | RF | C | 0.8338 | 0.8278 | 0.007837 | yes | 0.9249 |
| ES | 5 | all-model common days | EN | D | 0.7102 | 0.8117 | 3.367e-06 | yes | 0.7878 |
| ES | 5 | all-model common days | RF | D | 0.7117 | 0.8216 | 3.841e-07 | yes | 0.7895 |
| ES | 22 | all-model common days | PER | A | 0.9362 | 1.33 | 0.7867 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.068 |
| ES | 22 | all-model common days | EN | A | 1.185 | 1.095 | 0.001096 | yes | 1.266 |
| ES | 22 | all-model common days | RF | A | 0.916 | 0.9663 | 0.1634 | yes | 0.9785 |
| ES | 22 | all-model common days | EN | C | 1.116 | 0.9182 | 0.3267 | yes | 1.192 |
| ES | 22 | all-model common days | RF | C | 1.108 | 0.9339 | 0.06071 | yes | 1.184 |
| ES | 22 | all-model common days | EN | D | 1.155 | 0.9405 | 0.3121 | yes | 1.233 |
| ES | 22 | all-model common days | RF | D | 1.055 | 0.9122 | 0.2355 | yes | 1.127 |

