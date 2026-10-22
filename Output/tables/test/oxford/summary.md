# Results: test period, scenario "oxford"

Generated 2026-10-21 23:43 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2021-12-31, n = 970)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 970 | 0.3264 | 3.209 | 0.5207 | 0.5732 | 1.266 | 1.195 | -3.842 | 0.0001301 | 0.9999 | -1.374 | 0.1697 | yes | 0.1186 | yes | 0.4536 | 0 | 1 | NaN |
| HAR | A | 970 | 0.2578 | 2.684 | 0.5086 | 0.6429 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.1186 | yes | 0.714 | 0 | 0.7899 | 6.505e-05 |
| EN | A | 970 | 0.2578 | 2.685 | 0.5086 | 0.6429 | 1 | 1 | -2.494 | 0.01281 | 0.9936 | -1.32 | 0.1872 | yes | 0.1186 | yes | 0.714 | 0 | 0.7899 | 6.509e-05 |
| RF | A | 970 | 0.2487 | 3.318 | 0.5344 | 0.5586 | 0.9648 | 1.236 | 1.039 | 0.2991 | 0.1495 | -0.759 | 0.4481 | yes | 0.1186 | yes | 0.4912 | 0 | 0.7621 | 9.564e-09 |
| EN | C | 970 | 0.4506 | 2.897 | 0.5109 | 0.6146 | 1.748 | 1.079 | -2.514 | 0.01209 | 0.994 | -0.469 | 0.6392 | yes | 0.1186 | yes | 0.714 | 2.371 | 1.381 | 0.9421 |
| RF | C | 970 | 0.2365 | 2.035 | 0.5121 | 0.7294 | 0.9173 | 0.7579 | 1.923 | 0.05479 | 0.0274 | 1.223 | 0.2215 | yes | 0.1186 | yes | 1 | 0 | 0.7246 | 6.471e-07 |
| EN | COM | 970 | 0.3533 | 2.814 | 0.5009 | 0.6257 | 1.371 | 1.048 | -2.208 | 0.02749 | 0.9863 | -0.3336 | 0.7388 | yes | 0.1186 | yes | 0.714 | 0.9278 | 1.083 | 0.7172 |
| RF | COM | 970 | 0.2232 | 2.634 | 0.4969 | 0.6497 | 0.8659 | 0.981 | 4.046 | 5.631e-05 | 2.816e-05 | 0.1856 | 0.8528 | yes | 1 | yes | 0.714 | 0 | 0.684 | 7.644e-10 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2120 | 0.7649 | 6.317 | 3.236e-10 | 1.618e-10 | 0.7947 | 1.487 | 0.1371 | 0.06854 | 0.3416 | 0.4744 |
| EN_A vs PER_A | 2120 | 0.7653 | 6.301 | 3.598e-10 | 1.799e-10 | 0.7946 | 1.487 | 0.137 | 0.06852 | 0.3208 | 1 |
| RF_A vs PER_A | 2120 | 0.7509 | 8.471 | 4.491e-17 | 2.245e-17 | 0.8741 | 0.6106 | 0.5415 | 0.2707 | 1 | 0.4744 |
| EN_A vs HAR_A | 2120 | 1.001 | -1.625 | 0.1043 | 0.9478 | 1 | 1.026 | 0.3049 | 0.1524 | 0.3208 | 1 |
| RF_A vs HAR_A | 2120 | 0.9817 | 0.8287 | 0.4074 | 0.2037 | 1.1 | -0.5643 | 0.5726 | 0.7137 | 1 | 0.4744 |
| RF_A vs EN_A | 2120 | 0.9812 | 0.8514 | 0.3947 | 0.1973 | 1.1 | -0.5645 | 0.5725 | 0.7138 | 1 | 0.4744 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2120 | -0.0778 | -33.02 | 0.03216 | 13.91 | 0.11 | 2.976 | 0.001476 | 0.002952 |
| A->C | MSE | 2120 | 0.07397 | 3.25 | 0.9331 | 37.27 | 0.8591 | 1.115 | 0.1324 | 0.2648 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_COM | RF_COM |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 723 | 0.2668 | 1.307 | 1 | 1 | 0.9688 | 2.002 | 0.9113 | 1.516 | 0.8665 |
| High RV (monthly RV > threshold) | 247 | 0.2315 | 1.129 | 1 | 1 | 0.9515 | 0.8908 | 0.9377 | 0.88 | 0.864 |
| Normal days (target <= Q3 + 1.5 IQR) | 870 | 0.2315 | 1.353 | 1 | 1 | 0.9918 | 2.032 | 1.025 | 1.556 | 0.9396 |
| Extreme days (target > Q3 + 1.5 IQR) | 100 | 0.4869 | 0.9043 | 1 | 1 | 0.8534 | 0.5727 | 0.4704 | 0.6038 | 0.5612 |
| Feb 2018 Volmageddon | 17 | 0.1429 | 1.456 | 1 | 1 | 1.643 | 0.7109 | 1.168 | 0.7525 | 1.152 |
| COVID 2020 | 70 | 0.329 | 0.9173 | 1 | 1 | 0.8225 | 0.7466 | 0.7208 | 0.7681 | 0.7195 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.267 | 4 |
| HAR | A | 3.499 | 4 |
| EN | A | 3.499 | 4 |
| RF | A | 3.489 | 4 |
| EN | C | 2.975 | 4 |
| RF | C | 3.559 | 4 |
| EN | COM | 3.25 | 4 |
| RF | COM | 3.571 | 4 |

### Elastic net on set COM: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.2469 | 1 |
| negret_w | -0.1364 | 1 |
| iv_term | -0.1233 | 1 |
| parkinson_w | 0.1223 | 1 |
| om_C_w | 0.117 | 1 |
| rv_w | 0.1081 | 1 |
| om_rsn_w | 0.1044 | 1 |
| negret_d | -0.08788 | 1 |

### Random forest on set COM: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.3548 |
| om_C_d | 0.1468 |
| log_vxn | 0.0861 |
| rv_d | 0.07666 |
| negret_w | 0.07228 |
| parkinson_d | 0.03552 |
| iv_atm_1m | 0.03166 |
| parkinson_w | 0.03016 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_COM | iv_atm_3m | 0 | 0.025 | 0.1 | 0.5 | 0.9978 |
| EN_COM | iv_atm_1y | 0 | 0.15 | 0.2 | 0.75 | 0.9845 |
| EN_COM | t10y3m | 0.25 | 0.25 | 0.25 | 1 | 0.9708 |
| EN_COM | dgs10 | 0.25 | 0.3 | 0.3 | 1 | 0.9656 |
| EN_COM | ciss | 0 | 0.025 | 0.1 | 0.5 | 0.9986 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 27.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2021-12-31, n = 974)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 974 | 0.34 | 2.823 | 0.5529 | 0.5371 | 1.351 | 1.097 | -3.62 | 0.0003098 | 0.9998 | -0.3917 | 0.6954 | no | 0.02 | yes | 0.8174 | 0 | 1 | NaN |
| HAR | A | 974 | 0.2516 | 2.573 | 0.5381 | 0.5781 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.825 | yes | 1 | 0 | 0.7402 | 0.0001549 |
| EN | A | 974 | 0.2517 | 2.573 | 0.5381 | 0.5781 | 1 | 1 | -1.386 | 0.1661 | 0.917 | -0.3325 | 0.7396 | yes | 0.7912 | yes | 0.8174 | 0 | 0.7402 | 0.0001554 |
| RF | A | 974 | 0.2701 | 3.21 | 0.5688 | 0.4737 | 1.073 | 1.248 | -1.425 | 0.1544 | 0.9228 | -0.7658 | 0.444 | yes | 0.1568 | yes | 0.691 | 0 | 0.7945 | 0.0006775 |
| EN | C | 974 | 0.7364 | 3.102 | 0.5982 | 0.4913 | 2.926 | 1.206 | -3.467 | 0.0005494 | 0.9997 | -0.8068 | 0.42 | no | 0.02 | yes | 0.691 | 2.875 | 2.166 | 0.998 |
| RF | C | 974 | 0.2446 | 3.291 | 0.5965 | 0.4604 | 0.9719 | 1.279 | 0.3781 | 0.7054 | 0.3527 | -0.8148 | 0.4154 | yes | 1 | yes | 0.691 | 0 | 0.7194 | 0.002298 |
| EN | COM | 974 | 0.7369 | 2.785 | 0.5756 | 0.5435 | 2.928 | 1.082 | -3.582 | 0.0003576 | 0.9998 | -0.5052 | 0.6135 | no | 0.009 | yes | 0.8174 | 2.669 | 2.168 | 0.9986 |
| RF | COM | 974 | 0.2465 | 2.984 | 0.603 | 0.5108 | 0.9795 | 1.16 | 0.2851 | 0.7756 | 0.3878 | -0.9108 | 0.3626 | yes | 0.825 | yes | 0.691 | 0 | 0.725 | 0.002234 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2135 | 0.732 | 4.993 | 6.427e-07 | 3.214e-07 | 0.8303 | 1.036 | 0.3004 | 0.1502 | 0.348 | 0.4588 |
| EN_A vs PER_A | 2135 | 0.7316 | 4.998 | 6.25e-07 | 3.125e-07 | 0.8298 | 1.039 | 0.2991 | 0.1495 | 1 | 1 |
| RF_A vs PER_A | 2135 | 0.7694 | 4.611 | 4.237e-06 | 2.119e-06 | 0.9614 | 0.1545 | 0.8772 | 0.4386 | 0.0822 | 0.4588 |
| EN_A vs HAR_A | 2135 | 0.9994 | 0.7614 | 0.4465 | 0.2232 | 0.9994 | 1.582 | 0.1137 | 0.05686 | 1 | 1 |
| RF_A vs HAR_A | 2135 | 1.051 | -1.461 | 0.1443 | 0.9279 | 1.158 | -0.7517 | 0.4523 | 0.7738 | 0.0822 | 0.4588 |
| RF_A vs EN_A | 2135 | 1.052 | -1.476 | 0.1401 | 0.9299 | 1.158 | -0.7544 | 0.4507 | 0.7747 | 0.0822 | 0.4588 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2135 | -0.2094 | -97.46 | 0.02595 | 11.48 | 0.2354 | 3.586 | 0.0001715 | 0.0003429 |
| A->C | MSE | 2135 | -0.07148 | -3.87 | 0.1047 | 4.894 | 0.1762 | 0.6296 | 0.2645 | 0.529 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_COM | RF_COM |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 726 | 0.2684 | 1.41 | 1 | 1 | 1.062 | 3.333 | 0.9297 | 3.293 | 0.9266 |
| High RV (monthly RV > threshold) | 248 | 0.2026 | 1.122 | 1 | 1 | 1.119 | 1.35 | 1.135 | 1.515 | 1.184 |
| Normal days (target <= Q3 + 1.5 IQR) | 894 | 0.1886 | 1.436 | 1 | 1 | 1.115 | 3.825 | 1.101 | 3.72 | 1.102 |
| Extreme days (target > Q3 + 1.5 IQR) | 80 | 0.9562 | 1.164 | 1 | 1 | 0.9816 | 0.9472 | 0.6862 | 1.184 | 0.7084 |
| Feb 2018 Volmageddon | 15 | 0.1518 | 1.6 | 1 | 1 | 1.149 | 0.5131 | 1.19 | 0.6732 | 1.321 |
| COVID 2020 | 70 | 0.6643 | 1.039 | 1 | 1 | 0.9749 | 1.01 | 0.878 | 0.9605 | 0.9497 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.217 | 4 |
| HAR | A | 3.476 | 4 |
| EN | A | 3.476 | 4 |
| RF | A | 3.412 | 4 |
| EN | C | 2.092 | 4 |
| RF | C | 3.509 | 4 |
| EN | COM | 2.079 | 4 |
| RF | COM | 3.503 | 4 |

### Elastic net on set COM: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_w | 0.214 | 1 |
| negret_w | -0.155 | 1 |
| iv_term | -0.1535 | 1 |
| om_C_d | 0.1319 | 1 |
| parkinson_d | 0.07287 | 1 |
| om_C_w | 0.06485 | 0.75 |
| rv_w | 0.06097 | 0.75 |
| om_rsn_w | 0.05489 | 0.75 |

### Random forest on set COM: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.2031 |
| log_vxn | 0.1107 |
| negret_w | 0.07508 |
| om_C_d | 0.06358 |
| iv_atm_1m | 0.05729 |
| log_vix | 0.05618 |
| negret_m | 0.05471 |
| rv_w | 0.03621 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_COM | iv_atm_3m | 0 | 0.025 | 0.1 | 0.5 | 0.9978 |
| EN_COM | iv_atm_1y | 0 | 0.15 | 0.2 | 0.75 | 0.9845 |
| EN_COM | t10y3m | 0.25 | 0.25 | 0.25 | 1 | 0.9708 |
| EN_COM | dgs10 | 0.25 | 0.3 | 0.3 | 1 | 0.9656 |
| EN_COM | ciss | 0 | 0.025 | 0.1 | 0.5 | 0.9986 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 9.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2021-12-31, n = 960)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 960 | 0.8355 | 6.016 | 0.8596 | -0.4396 | 1.693 | 1.63 | -1.677 | 0.09395 | 0.953 | -1.255 | 0.2098 | yes | 0.223 | yes | 0.3606 | 0 | 1 | NaN |
| HAR | A | 960 | 0.4934 | 3.691 | 0.7034 | 0.1169 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.891 | yes | 0.778 | 0 | 0.5905 | 0.04697 |
| EN | A | 960 | 0.5122 | 3.702 | 0.7239 | 0.1143 | 1.038 | 1.003 | -1.591 | 0.112 | 0.944 | -1.283 | 0.1997 | yes | 0.8444 | yes | 0.7464 | 0 | 0.6131 | 0.05843 |
| RF | A | 960 | 0.5448 | 2.868 | 0.6442 | 0.3137 | 1.104 | 0.7772 | -1.517 | 0.1296 | 0.9352 | 1.065 | 0.2869 | yes | 0.6258 | yes | 1 | 0 | 0.6521 | 0.05556 |
| EN | C | 960 | 0.4868 | 3.472 | 0.7017 | 0.1692 | 0.9866 | 0.9408 | 0.1419 | 0.8872 | 0.4436 | 0.4241 | 0.6716 | yes | 1 | yes | 0.778 | 0 | 0.5826 | 0.07668 |
| RF | C | 960 | 0.5024 | 3.399 | 0.6784 | 0.1866 | 1.018 | 0.9211 | -0.3171 | 0.7512 | 0.6244 | 0.5753 | 0.5652 | yes | 0.8638 | yes | 0.778 | 0 | 0.6013 | 0.05657 |
| EN | COM | 960 | 0.5114 | 3.375 | 0.6842 | 0.1924 | 1.036 | 0.9145 | -0.5914 | 0.5544 | 0.7228 | 0.598 | 0.55 | yes | 0.8444 | yes | 0.778 | 0 | 0.612 | 0.07355 |
| RF | COM | 960 | 0.5065 | 3.367 | 0.6789 | 0.1943 | 1.027 | 0.9124 | -0.5889 | 0.5561 | 0.7219 | 0.6302 | 0.5287 | yes | 0.8638 | yes | 0.778 | 0 | 0.6062 | 0.05124 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2109 | 0.6631 | 1.78 | 0.07526 | 0.03763 | 0.645 | 1.315 | 0.1886 | 0.09432 | 1 | 0.3748 |
| EN_A vs PER_A | 2109 | 0.6785 | 1.688 | 0.09161 | 0.04581 | 0.6461 | 1.311 | 0.1901 | 0.09505 | 0.2286 | 0.3616 |
| RF_A vs PER_A | 2109 | 0.7197 | 1.665 | 0.09609 | 0.04804 | 0.5295 | 1.284 | 0.1994 | 0.09971 | 0.2046 | 1 |
| EN_A vs HAR_A | 2109 | 1.023 | -1.286 | 0.1985 | 0.9008 | 1.002 | -0.5703 | 0.5685 | 0.7157 | 0.2286 | 0.3616 |
| RF_A vs HAR_A | 2109 | 1.085 | -1.729 | 0.08394 | 0.958 | 0.8209 | 1.034 | 0.3013 | 0.1507 | 0.2046 | 1 |
| RF_A vs EN_A | 2109 | 1.061 | -1.12 | 0.263 | 0.8685 | 0.8195 | 1.044 | 0.2967 | 0.1483 | 0.2046 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2109 | 0.01213 | 3.561 | 0.01408 | 3.897 | 0.001949 | 0.1108 | 0.4559 | 0.9118 |
| A->C | MSE | 2109 | 0.1745 | 8.572 | -0.1633 | -9.788 | -0.3378 | -0.9703 | 0.834 | 0.332 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_COM | RF_COM |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 712 | 0.5794 | 1.679 | 1 | 1.043 | 1.141 | 0.9555 | 0.9888 | 1.024 | 1.008 |
| High RV (monthly RV > threshold) | 248 | 0.2464 | 1.792 | 1 | 1.008 | 0.8571 | 1.197 | 1.217 | 1.122 | 1.152 |
| Normal days (target <= Q3 + 1.5 IQR) | 900 | 0.2092 | 1.663 | 1 | 1.096 | 1.173 | 1.169 | 1.051 | 1.185 | 1.021 |
| Extreme days (target > Q3 + 1.5 IQR) | 60 | 4.756 | 1.714 | 1 | 1 | 1.059 | 0.866 | 0.9965 | 0.9384 | 1.03 |
| Feb 2018 Volmageddon | 14 | 0.08687 | 0.8673 | 1 | 1 | 1.548 | 2.063 | 3.282 | 2.432 | 2.457 |
| COVID 2020 | 70 | 1.563 | 2.027 | 1 | 1 | 0.8466 | 0.9804 | 0.9182 | 0.9795 | 0.9333 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 1.715 | 4 |
| HAR | A | 2.748 | 4 |
| EN | A | 2.723 | 4 |
| RF | A | 2.575 | 4 |
| EN | C | 2.822 | 4 |
| RF | C | 2.73 | 4 |
| EN | COM | 2.73 | 4 |
| RF | COM | 2.716 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 960 | 93.25 | 0.93 | 34.47 | 0.2367 | NaN | NaN | 1 |
| PER_A | 960 | 11.39 | 0.1098 | -30.78 | -0.2148 | 0.7229 | -0.1376 | 0.8448 |
| HAR_A | 960 | 58.45 | 0.8241 | 44.48 | 0.4833 | 0.7156 | 0.1258 | 0.8208 |
| EN_A | 960 | 42.24 | 0.6009 | 23.23 | 0.2545 | 0.6448 | 0.1182 | 0.7354 |
| RF_A | 960 | 130 | 1.961 | 113.8 | 1.445 | 0.7406 | 0.3727 | 0.8417 |
| EN_C | 960 | 40.71 | 0.4328 | -12.16 | -0.08514 | 0.6833 | 0.1039 | 0.8052 |
| RF_C | 960 | 71.6 | 0.72 | 10.38 | 0.07163 | 0.7594 | 0.1297 | 0.9375 |
| EN_COM | 960 | 60.55 | 0.6887 | 13.83 | 0.1053 | 0.7292 | 0.1245 | 0.8594 |
| RF_COM | 960 | 80.52 | 0.8682 | 25.68 | 0.1936 | 0.7594 | 0.1381 | 0.925 |

### Elastic net on set COM: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_w | 0.04562 | 1 |
| ads | -0.04506 | 1 |
| rv_w | 0.04367 | 1 |
| om_C_w | 0.04352 | 1 |
| om_rsn_w | 0.04232 | 1 |
| iv_term | -0.04221 | 1 |
| rv_m | 0.03979 | 1 |
| negret_w | -0.03975 | 1 |

### Random forest on set COM: impurity importance (share)

| feature | mean_importance |
|---|---|
| ads | 0.1268 |
| news_sent | 0.09109 |
| nfci | 0.07379 |
| om_C_m | 0.05112 |
| log_vxn | 0.04542 |
| parkinson_w | 0.04485 |
| rv_w | 0.03959 |
| iv_atm_1y | 0.03688 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_COM | iv_atm_3m | 0 | 0.025 | 0.1 | 0.5 | 0.9978 |
| EN_COM | iv_atm_1y | 0 | 0.15 | 0.2 | 0.75 | 0.9845 |
| EN_COM | t10y3m | 0.25 | 0.25 | 0.25 | 1 | 0.9708 |
| EN_COM | dgs10 | 0.25 | 0.3 | 0.3 | 1 | 0.9656 |
| EN_COM | ciss | 0 | 0.025 | 0.1 | 0.5 | 0.9986 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_COM | 0.8659 | 2.816e-05 | yes | yes | 0.684 | yes | EN_C EN_COM | NaN | NaN |
| SPY | 5 | RF_C | 0.9719 | 0.3527 | yes | no | 0.7194 | yes | EN_C EN_COM | NaN | NaN |
| SPY | 22 | EN_C | 0.9866 | 0.4436 | yes | no | 0.5826 | no | EN_A RF_A EN_C RF_C EN_COM RF_COM | -12.16 | 0.1039 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.266 | 1.195 | 0.0001301 | yes | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7899 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 0.01281 | yes | 0.7899 |
| SPY | 1 | all-model common days | RF | A | 0.9648 | 1.236 | 0.2991 | yes | 0.7621 |
| SPY | 1 | all-model common days | EN | C | 1.748 | 1.079 | 0.01209 | yes | 1.381 |
| SPY | 1 | all-model common days | RF | C | 0.9173 | 0.7579 | 0.05479 | yes | 0.7246 |
| SPY | 1 | all-model common days | EN | COM | 1.371 | 1.048 | 0.02749 | yes | 1.083 |
| SPY | 1 | all-model common days | RF | COM | 0.8659 | 0.981 | 5.631e-05 | yes | 0.684 |
| SPY | 5 | all-model common days | PER | A | 1.351 | 1.097 | 0.0003098 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7402 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 0.1661 | yes | 0.7402 |
| SPY | 5 | all-model common days | RF | A | 1.073 | 1.248 | 0.1544 | yes | 0.7945 |
| SPY | 5 | all-model common days | EN | C | 2.926 | 1.206 | 0.0005494 | no | 2.166 |
| SPY | 5 | all-model common days | RF | C | 0.9719 | 1.279 | 0.7054 | yes | 0.7194 |
| SPY | 5 | all-model common days | EN | COM | 2.928 | 1.082 | 0.0003576 | no | 2.168 |
| SPY | 5 | all-model common days | RF | COM | 0.9795 | 1.16 | 0.7756 | yes | 0.725 |
| SPY | 22 | all-model common days | PER | A | 1.693 | 1.63 | 0.09395 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.5905 |
| SPY | 22 | all-model common days | EN | A | 1.038 | 1.003 | 0.112 | yes | 0.6131 |
| SPY | 22 | all-model common days | RF | A | 1.104 | 0.7772 | 0.1296 | yes | 0.6521 |
| SPY | 22 | all-model common days | EN | C | 0.9866 | 0.9408 | 0.8872 | yes | 0.5826 |
| SPY | 22 | all-model common days | RF | C | 1.018 | 0.9211 | 0.7512 | yes | 0.6013 |
| SPY | 22 | all-model common days | EN | COM | 1.036 | 0.9145 | 0.5544 | yes | 0.612 |
| SPY | 22 | all-model common days | RF | COM | 1.027 | 0.9124 | 0.5561 | yes | 0.6062 |

