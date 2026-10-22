# Results: test period, scenario "rfdefault"

Generated 2026-10-21 23:43 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2118)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2118 | 0.3079 | 2.867 | 0.4628 | 0.4065 | 1.308 | 1.258 | -6.324 | 3.109e-10 | 1 | -1.487 | 0.1371 | no | 0 | yes | 0.2872 | 0 | 1 | NaN |
| HAR | A | 2118 | 0.2354 | 2.278 | 0.4408 | 0.5284 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0022 | yes | 0.6652 | 0 | 0.7646 | 1.554e-10 |
| RF | A | 2118 | 0.2351 | 2.193 | 0.4379 | 0.5461 | 0.9984 | 0.9626 | 0.08039 | 0.9359 | 0.468 | 0.7121 | 0.4765 | no | 0.0022 | yes | 0.6652 | 0 | 0.7633 | 2.436e-17 |
| RF | C | 2118 | 0.2042 | 1.584 | 0.4139 | 0.6722 | 0.8674 | 0.6951 | 3.957 | 7.843e-05 | 3.922e-05 | 1.705 | 0.08832 | yes | 1 | yes | 1 | 0 | 0.6632 | 2.311e-16 |
| RF | D | 2118 | 0.2044 | 2.336 | 0.4257 | 0.5164 | 0.8681 | 1.025 | 4.055 | 5.199e-05 | 2.599e-05 | -0.08828 | 0.9297 | yes | 0.9648 | yes | 0.6652 | 0 | 0.6637 | 3.926e-18 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1608 | 0.2388 | 1.356 | 1 | 1.003 | 0.9016 | 0.8921 |
| High RV (monthly RV > threshold) | 510 | 0.2247 | 1.147 | 1 | 0.983 | 0.7529 | 0.7877 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2035 | 1.388 | 1 | 1.015 | 0.9779 | 0.9451 |
| Extreme days (target > Q3 + 1.5 IQR) | 183 | 0.5736 | 1.01 | 1 | 0.9379 | 0.4529 | 0.5792 |
| Feb 2018 Volmageddon | 17 | 0.1429 | 1.456 | 1 | 1.208 | 1.202 | 1.27 |
| COVID 2020 | 70 | 0.329 | 0.9173 | 1 | 0.94 | 0.7051 | 0.856 |
| 2022 bear market | 203 | 0.1593 | 1.295 | 1 | 1.009 | 0.6515 | 0.7565 |
| Apr 2025 tariffs | 42 | 0.4742 | 0.7318 | 1 | 0.858 | 0.4024 | 0.4055 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.307 | 4 |
| HAR | A | 3.54 | 4 |
| RF | A | 3.517 | 4 |
| RF | C | 3.621 | 4 |
| RF | D | 3.609 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.173 |
| negret_w | 0.121 |
| es_C_d | 0.06883 |
| es_rsn_d | 0.0635 |
| overnight_d | 0.04713 |
| es_rk_d | 0.04661 |
| rv_d | 0.04333 |
| vrp | 0.03618 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 27.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2135)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2135 | 0.2937 | 2.226 | 0.4699 | 0.3714 | 1.366 | 1.204 | -4.993 | 6.427e-07 | 1 | -1.036 | 0.3004 | no | 0.0004 | yes | 0.6452 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.215 | 1.848 | 0.4443 | 0.4781 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.3598 | yes | 0.7354 | 0 | 0.732 | 3.214e-07 |
| RF | A | 2135 | 0.2266 | 1.824 | 0.4473 | 0.4849 | 1.054 | 0.9869 | -1.616 | 0.1063 | 0.9469 | 0.1594 | 0.8734 | yes | 0.1836 | yes | 0.756 | 0 | 0.7716 | 4.847e-07 |
| RF | C | 2135 | 0.2023 | 1.715 | 0.4789 | 0.5156 | 0.9408 | 0.9281 | 1.026 | 0.305 | 0.1525 | 0.4811 | 0.6305 | yes | 1 | yes | 1 | 0 | 0.6887 | 2.461e-05 |
| RF | D | 2135 | 0.2429 | 2.776 | 0.5462 | 0.2161 | 1.13 | 1.502 | -1.454 | 0.1461 | 0.927 | -1.092 | 0.275 | yes | 0.1836 | yes | 0.6452 | 0 | 0.8271 | 0.03418 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1619 | 0.2056 | 1.437 | 1 | 1.07 | 0.9564 | 1.051 |
| High RV (monthly RV > threshold) | 516 | 0.2446 | 1.178 | 1 | 1.012 | 0.8998 | 1.338 |
| Normal days (target <= Q3 + 1.5 IQR) | 1950 | 0.1575 | 1.461 | 1 | 1.107 | 1.099 | 1.256 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.8215 | 1.174 | 1 | 0.9465 | 0.6216 | 0.8746 |
| Feb 2018 Volmageddon | 15 | 0.1518 | 1.6 | 1 | 1.101 | 0.9873 | 1.053 |
| COVID 2020 | 70 | 0.6643 | 1.039 | 1 | 0.8043 | 0.7585 | 1.579 |
| 2022 bear market | 206 | 0.1373 | 1.221 | 1 | 0.9658 | 0.8004 | 1.041 |
| Apr 2025 tariffs | 42 | 1.029 | 1.104 | 1 | 1.005 | 0.6824 | 0.6685 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.323 | 4 |
| HAR | A | 3.549 | 4 |
| RF | A | 3.508 | 4 |
| RF | C | 3.602 | 4 |
| RF | D | 3.518 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.1031 |
| vix9d_spread | 0.08032 |
| iv_term | 0.06975 |
| es_J_w | 0.06184 |
| log_vxn | 0.04818 |
| es_rsn_d | 0.04234 |
| vrp | 0.03968 |
| vix3m_spread | 0.03942 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 9.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-09-01, n = 2109)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2109 | 0.5021 | 3.151 | 0.6183 | -0.4123 | 1.508 | 1.55 | -1.78 | 0.07526 | 0.9624 | -1.315 | 0.1886 | no | 0.0946 | yes | 0.5558 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3329 | 2.032 | 0.5384 | 0.08907 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 0.61 | 0 | 0.6631 | 0.03763 |
| RF | A | 2109 | 0.359 | 1.882 | 0.5385 | 0.1565 | 1.078 | 0.926 | -1.774 | 0.07619 | 0.9619 | 0.5388 | 0.5901 | no | 0.0946 | yes | 1 | 0 | 0.7151 | 0.06111 |
| RF | C | 2109 | 0.4573 | 2.842 | 0.7401 | -0.2739 | 1.373 | 1.399 | -3.42 | 0.0006389 | 0.9997 | -1.691 | 0.09106 | no | 0.0946 | yes | 0.5558 | 0 | 0.9108 | 0.2821 |
| RF | D | 2109 | 0.5174 | 2.524 | 0.7385 | -0.1313 | 1.554 | 1.242 | -3.628 | 0.0002927 | 0.9999 | -1.486 | 0.1373 | no | 0.0304 | yes | 0.5558 | 0 | 1.031 | 0.5776 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1593 | 0.3501 | 1.543 | 1 | 1.097 | 1.341 | 1.551 |
| High RV (monthly RV > threshold) | 516 | 0.2799 | 1.372 | 1 | 1.006 | 1.5 | 1.565 |
| Normal days (target <= Q3 + 1.5 IQR) | 1966 | 0.1733 | 1.441 | 1 | 1.17 | 1.556 | 1.83 |
| Extreme days (target > Q3 + 1.5 IQR) | 143 | 2.528 | 1.571 | 1 | 0.9921 | 1.201 | 1.294 |
| Feb 2018 Volmageddon | 14 | 0.08687 | 0.8673 | 1 | 1.522 | 2.672 | 1.637 |
| COVID 2020 | 70 | 1.563 | 2.027 | 1 | 0.7821 | 1.398 | 1.477 |
| 2022 bear market | 206 | 0.1656 | 1.48 | 1 | 1.138 | 1.049 | 1.207 |
| Apr 2025 tariffs | 42 | 0.5158 | 1.618 | 1 | 1.252 | 0.9135 | 0.7355 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.701 | 4 |
| HAR | A | 3.209 | 4 |
| RF | A | 3.135 | 4 |
| RF | C | 2.957 | 4 |
| RF | D | 2.849 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 89.01 | 1.842 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 47.51 | 0.9904 | 37.52 | 0.5713 | 0.7321 | -0.1066 | 0.8241 |
| HAR_A | 2109 | 54.46 | 1.543 | 52.42 | 1.198 | 0.6652 | 0.09609 | 0.7506 |
| RF_A | 2109 | 80.85 | 3.631 | 90.22 | 3.309 | 0.7022 | 0.2459 | 0.7961 |
| RF_C | 2109 | -16.69 | -0.3522 | -34.91 | -0.5115 | 0.5851 | -0.05151 | 0.7065 |
| RF_D | 2109 | 7.781 | 0.1613 | -15.75 | -0.2343 | 0.5699 | 0.03278 | 0.6676 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.09047 |
| news_sent | 0.07286 |
| vix3m_spread | 0.05746 |
| dgs10 | 0.05244 |
| log_vxn | 0.0466 |
| negret_w | 0.04316 |
| stlfsi4 | 0.03355 |
| es_J_w | 0.03139 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.2339 | 6.124 | 0.7095 | 0.5804 | 1.211 | 1.124 | -6.009 | 2.181e-09 | 1 | -0.8842 | 0.3767 | no | 0.0002 | yes | 0.6704 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.1931 | 5.45 | 0.6783 | 0.6266 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.079 | yes | 1 | 0 | 0.8257 | 1.091e-09 |
| RF | A | 2197 | 0.2038 | 8.909 | 0.7592 | 0.3895 | 1.055 | 1.635 | -1.732 | 0.08336 | 0.9583 | -1.15 | 0.2504 | no | 0.0114 | yes | 0.2596 | 0 | 0.8713 | 0.0001621 |
| RF | C | 2197 | 0.1789 | 7.26 | 0.6919 | 0.5025 | 0.9265 | 1.332 | 1.897 | 0.05792 | 0.02896 | -0.7065 | 0.4799 | yes | 0.2756 | yes | 0.6548 | 0 | 0.7649 | 4.122e-08 |
| RF | D | 2197 | 0.1761 | 7.139 | 0.6888 | 0.5108 | 0.912 | 1.31 | 2.646 | 0.008192 | 0.004096 | -0.7036 | 0.4817 | yes | 1 | yes | 0.6704 | 0 | 0.753 | 2.019e-10 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1459 | 0.1946 | 1.237 | 1 | 1.028 | 0.9492 | 0.9304 |
| High RV (monthly RV > threshold) | 738 | 0.1901 | 1.159 | 1 | 1.11 | 0.8804 | 0.8746 |
| Normal days (target <= Q3 + 1.5 IQR) | 2007 | 0.161 | 1.296 | 1 | 1.057 | 1.018 | 0.9864 |
| Extreme days (target > Q3 + 1.5 IQR) | 190 | 0.5323 | 0.9405 | 1 | 1.049 | 0.6337 | 0.6741 |
| Feb 2018 Volmageddon | 43 | 0.3864 | 0.9705 | 1 | 1.004 | 0.8072 | 0.8953 |
| COVID 2020 | 70 | 0.222 | 0.7914 | 1 | 1.899 | 1.322 | 1.25 |
| 2022 bear market | 209 | 0.1659 | 1.179 | 1 | 0.9573 | 0.6494 | 0.7364 |
| Apr 2025 tariffs | 42 | 0.4398 | 0.9456 | 1 | 1.132 | 0.5231 | 0.544 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.478 | 4 |
| HAR | A | 3.605 | 4 |
| RF | A | 3.573 | 4 |
| RF | C | 3.651 | 4 |
| RF | D | 3.652 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.1616 |
| negret_w | 0.1363 |
| es_rsn_d | 0.07008 |
| es_C_d | 0.06293 |
| rv_d | 0.05873 |
| es_rk_d | 0.05679 |
| overnight_d | 0.04793 |
| iv_term | 0.03918 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-23, n = 2193)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2193 | 0.2813 | 6.394 | 0.7824 | 0.4566 | 1.304 | 1.128 | -4.267 | 2.064e-05 | 1 | -0.5137 | 0.6075 | no | 0.0968 | yes | 0.5398 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.2157 | 5.668 | 0.7286 | 0.5183 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.7667 | 1.032e-05 |
| RF | A | 2193 | 0.2453 | 9.349 | 0.818 | 0.2056 | 1.137 | 1.649 | -1.944 | 0.05208 | 0.974 | -1.308 | 0.1911 | yes | 0.3594 | yes | 0.3418 | 0 | 0.8719 | 0.04481 |
| RF | C | 2193 | 0.2517 | 8.882 | 0.8984 | 0.2453 | 1.167 | 1.567 | -1.926 | 0.05423 | 0.9729 | -1.174 | 0.2407 | yes | 0.3594 | yes | 0.5398 | 0 | 0.8949 | 0.1302 |
| RF | D | 2193 | 0.254 | 9.478 | 0.9584 | 0.1946 | 1.177 | 1.672 | -2.072 | 0.03839 | 0.9808 | -1.405 | 0.1601 | yes | 0.2716 | yes | 0.1828 | 0 | 0.9028 | 0.1525 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1455 | 0.222 | 1.393 | 1 | 1.061 | 1.101 | 1.1 |
| High RV (monthly RV > threshold) | 738 | 0.2033 | 1.112 | 1 | 1.301 | 1.309 | 1.345 |
| Normal days (target <= Q3 + 1.5 IQR) | 1994 | 0.1471 | 1.425 | 1 | 1.134 | 1.326 | 1.364 |
| Extreme days (target > Q3 + 1.5 IQR) | 199 | 0.9028 | 1.107 | 1 | 1.142 | 0.9082 | 0.8727 |
| Feb 2018 Volmageddon | 43 | 1.018 | 1.307 | 1 | 1.067 | 1.076 | 0.9889 |
| COVID 2020 | 70 | 0.7078 | 0.9768 | 1 | 1.71 | 1.553 | 1.476 |
| 2022 bear market | 209 | 0.1553 | 1.004 | 1 | 0.8745 | 0.6441 | 0.9151 |
| Apr 2025 tariffs | 42 | 0.6073 | 1.221 | 1 | 1.202 | 1.008 | 0.9173 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.346 | 4 |
| HAR | A | 3.533 | 4 |
| RF | A | 3.451 | 4 |
| RF | C | 3.485 | 4 |
| RF | D | 3.488 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.123 |
| iv_term | 0.08795 |
| es_J_w | 0.06649 |
| log_vxn | 0.05514 |
| overnight_d | 0.0479 |
| vix9d_spread | 0.0472 |
| es_rsn_d | 0.0438 |
| log_vix | 0.04251 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-08-28, n = 2176)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2176 | 0.6032 | 10.5 | 1.079 | -0.3754 | 1.559 | 1.664 | -2.029 | 0.04261 | 0.9787 | -1.233 | 0.2179 | no | 0.086 | yes | 0.5906 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.3869 | 6.309 | 0.874 | 0.1736 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.6415 | 0.0213 |
| RF | A | 2176 | 0.441 | 6.911 | 0.8791 | 0.09486 | 1.14 | 1.095 | -1.553 | 0.1206 | 0.9397 | -1.023 | 0.3063 | no | 0.086 | yes | 0.5906 | 0 | 0.7311 | 0.02911 |
| RF | C | 2176 | 0.5655 | 8.017 | 1.214 | -0.05005 | 1.462 | 1.271 | -3.451 | 0.0005683 | 0.9997 | -2.194 | 0.02836 | no | 0.086 | yes | 0.5906 | 0 | 0.9376 | 0.3289 |
| RF | D | 2176 | 0.5856 | 8.413 | 1.286 | -0.1019 | 1.514 | 1.333 | -3.61 | 0.0003136 | 0.9998 | -2.585 | 0.0098 | no | 0.0268 | yes | 0.5906 | 0 | 0.9709 | 0.417 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1438 | 0.4426 | 1.662 | 1 | 1.124 | 1.5 | 1.568 |
| High RV (monthly RV > threshold) | 738 | 0.2784 | 1.238 | 1 | 1.188 | 1.342 | 1.346 |
| Normal days (target <= Q3 + 1.5 IQR) | 2049 | 0.1925 | 1.79 | 1 | 1.293 | 1.829 | 1.965 |
| Extreme days (target > Q3 + 1.5 IQR) | 127 | 3.523 | 1.355 | 1 | 1.005 | 1.138 | 1.116 |
| Feb 2018 Volmageddon | 43 | 0.3806 | 3.019 | 1 | 1.417 | 1.222 | 1.379 |
| COVID 2020 | 70 | 2.273 | 1.535 | 1 | 1.133 | 1.205 | 1.139 |
| 2022 bear market | 209 | 0.2293 | 1.114 | 1 | 0.9258 | 0.7714 | 0.8605 |
| Apr 2025 tariffs | 42 | 0.2363 | 2.917 | 1 | 1.799 | 1.42 | 1.453 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.398 | 4 |
| HAR | A | 3.044 | 4 |
| RF | A | 2.886 | 4 |
| RF | C | 2.695 | 4 |
| RF | D | 2.663 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 89.76 | 1.772 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 31.55 | 0.6043 | 24.81 | 0.3841 | 0.7413 | -0.1283 | 0.8497 |
| HAR_A | 2176 | 59.66 | 1.271 | 45.56 | 0.756 | 0.7105 | 0.05298 | 0.8309 |
| RF_A | 2176 | 68.89 | 1.506 | 51.88 | 0.8937 | 0.7353 | 0.1042 | 0.8695 |
| RF_C | 2176 | 14.03 | 0.2756 | -4.291 | -0.06547 | 0.597 | 0.03828 | 0.7192 |
| RF_D | 2176 | 1.948 | 0.03863 | -15.25 | -0.2338 | 0.5786 | 0.02832 | 0.7008 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.08584 |
| news_sent | 0.0806 |
| dgs10 | 0.04721 |
| vix3m_spread | 0.04531 |
| log_vxn | 0.04166 |
| iv_term | 0.0416 |
| negret_w | 0.03876 |
| es_J_w | 0.03287 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_C | 0.8674 | 3.922e-05 | yes | yes | 0.6632 | yes |  | NaN | NaN |
| SPY | 5 | RF_C | 0.9408 | 0.1525 | yes | no | 0.6887 | yes |  | NaN | NaN |
| SPY | 22 | RF_A | 1.078 | 0.9619 | no | no | 0.7151 | no | RF_A RF_C RF_D | 90.22 | 0.2459 |
| ES | 1 | RF_D | 0.912 | 0.004096 | yes | yes | 0.753 | yes |  | NaN | NaN |
| ES | 5 | RF_A | 1.137 | 0.974 | yes | no | 0.8719 | yes | RF_C RF_D | NaN | NaN |
| ES | 22 | RF_A | 1.14 | 0.9397 | no | no | 0.7311 | yes | RF_C RF_D | 51.88 | 0.1042 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.308 | 1.258 | 3.109e-10 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.7646 |
| SPY | 1 | all-model common days | RF | A | 0.9984 | 0.9626 | 0.9359 | no | 0.7633 |
| SPY | 1 | all-model common days | RF | C | 0.8674 | 0.6951 | 7.843e-05 | yes | 0.6632 |
| SPY | 1 | all-model common days | RF | D | 0.8681 | 1.025 | 5.199e-05 | yes | 0.6637 |
| SPY | 5 | all-model common days | PER | A | 1.366 | 1.204 | 6.427e-07 | no | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.732 |
| SPY | 5 | all-model common days | RF | A | 1.054 | 0.9869 | 0.1063 | yes | 0.7716 |
| SPY | 5 | all-model common days | RF | C | 0.9408 | 0.9281 | 0.305 | yes | 0.6887 |
| SPY | 5 | all-model common days | RF | D | 1.13 | 1.502 | 0.1461 | yes | 0.8271 |
| SPY | 22 | all-model common days | PER | A | 1.508 | 1.55 | 0.07526 | no | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6631 |
| SPY | 22 | all-model common days | RF | A | 1.078 | 0.926 | 0.07619 | no | 0.7151 |
| SPY | 22 | all-model common days | RF | C | 1.373 | 1.399 | 0.0006389 | no | 0.9108 |
| SPY | 22 | all-model common days | RF | D | 1.554 | 1.242 | 0.0002927 | no | 1.031 |
| ES | 1 | all-model common days | PER | A | 1.211 | 1.124 | 2.181e-09 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.8257 |
| ES | 1 | all-model common days | RF | A | 1.055 | 1.635 | 0.08336 | no | 0.8713 |
| ES | 1 | all-model common days | RF | C | 0.9265 | 1.332 | 0.05792 | yes | 0.7649 |
| ES | 1 | all-model common days | RF | D | 0.912 | 1.31 | 0.008192 | yes | 0.753 |
| ES | 5 | all-model common days | PER | A | 1.304 | 1.128 | 2.064e-05 | no | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7667 |
| ES | 5 | all-model common days | RF | A | 1.137 | 1.649 | 0.05208 | yes | 0.8719 |
| ES | 5 | all-model common days | RF | C | 1.167 | 1.567 | 0.05423 | yes | 0.8949 |
| ES | 5 | all-model common days | RF | D | 1.177 | 1.672 | 0.03839 | yes | 0.9028 |
| ES | 22 | all-model common days | PER | A | 1.559 | 1.664 | 0.04261 | no | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6415 |
| ES | 22 | all-model common days | RF | A | 1.14 | 1.095 | 0.1206 | no | 0.7311 |
| ES | 22 | all-model common days | RF | C | 1.462 | 1.271 | 0.0005683 | no | 0.9376 |
| ES | 22 | all-model common days | RF | D | 1.514 | 1.333 | 0.0003136 | no | 0.9709 |

