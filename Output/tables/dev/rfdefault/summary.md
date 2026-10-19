# Results: dev period, scenario "rfdefault"

Generated 2026-10-16 16:01 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.006527 | 0.952 | 1.497 | 0.577 | 0.5641 | 0.2821 | -0.9708 | 0.3319 | no | 0.015 | yes | 0.423 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2537 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.015 | yes | 0.423 | 0 | 1.05 | 0.7179 |
| RF | A | 755 | 0.2182 | 0.7928 | 0.2027 | 0.372 | 0.8598 | 0.9465 | 2.883 | 0.004051 | 0.002026 | 1.045 | 0.2965 | no | 0.015 | yes | 0.423 | 0 | 0.9031 | 0.03678 |
| RF | C | 755 | 0.1816 | 0.714 | 0.1857 | 0.4344 | 0.7157 | 0.8524 | 3.25 | 0.001206 | 0.0006032 | 1.208 | 0.2275 | yes | 0.1324 | yes | 0.5978 | 0 | 0.7518 | 1.402e-05 |
| RF | D | 755 | 0.1729 | 0.6222 | 0.1879 | 0.5072 | 0.6813 | 0.7428 | 2.933 | 0.003458 | 0.001729 | 1.072 | 0.284 | yes | 1 | yes | 1 | 0 | 0.7157 | 4.703e-05 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.292 | 1.06 | 1.291 | -1.075 | 0.2824 | 0.8588 | -1.173 | 0.2411 | no | 0.002 | yes | 0.246 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2143 | 0.7915 | 0.2676 | 0.4518 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.002 | yes | 0.4262 | 0 | 0.9433 | 0.1412 |
| RF | A | 2013 | 0.1979 | 0.7562 | 0.2501 | 0.4762 | 0.9232 | 0.9554 | 2.843 | 0.004514 | 0.002257 | 1.247 | 0.2127 | no | 0.002 | yes | 0.5594 | 0 | 0.8708 | 0.00162 |
| RF | C | 2013 | 0.1667 | 0.7187 | 0.2415 | 0.5022 | 0.7779 | 0.908 | 5.181 | 2.423e-07 | 1.212e-07 | 0.8442 | 0.3987 | yes | 1 | yes | 1 | 0 | 0.7338 | 2.036e-10 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2618 | 0.9412 | 1 | 0.8594 | 0.7079 | 0.6667 |
| High RV (monthly RV > threshold) | 62 | 0.1643 | 1.145 | 1 | 0.8665 | 0.8557 | 0.9411 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2184 | 0.9515 | 1 | 0.848 | 0.7607 | 0.76 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5739 | 0.9539 | 1 | 0.9006 | 0.5605 | 0.4098 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.7111 | 0.4616 | 0.368 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2237 | 1.059 | 1 | 0.9252 | 0.7718 |
| High RV (monthly RV > threshold) | 236 | 0.1441 | 1.072 | 1 | 0.8999 | 0.8487 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1893 | 1.07 | 1 | 0.8991 | 0.8 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4776 | 1.018 | 1 | 1.023 | 0.6856 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 | 0.9919 | 0.8664 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.7111 | 0.4616 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.509 | 4 |
| RF | A | 3.571 | 4 |
| RF | C | 3.654 | 4 |
| RF | D | 3.678 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.1057 |
| es_rsn_d | 0.08575 |
| negret_w | 0.06467 |
| rv_d | 0.05755 |
| es_C_d | 0.05533 |
| iv_skew_1m | 0.04898 |
| es_rk_d | 0.04584 |
| log_vxn | 0.03718 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3184 | 1.078 | 1.313 | -0.6157 | 0.5383 | 0.7309 | -1.05 | 0.2941 | yes | 0.7754 | yes | 0.5782 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7754 | yes | 0.5782 | 0 | 0.9278 | 0.2691 |
| RF | A | 755 | 0.2718 | 0.3579 | 0.2179 | 0.5025 | 1.035 | 0.9585 | -0.3163 | 0.7519 | 0.6241 | 0.4211 | 0.6738 | yes | 0.7754 | yes | 0.5782 | 0 | 0.9602 | 0.3542 |
| RF | C | 755 | 0.2781 | 0.3436 | 0.2166 | 0.5222 | 1.059 | 0.9204 | -0.6824 | 0.4952 | 0.7524 | 0.9928 | 0.3211 | yes | 0.7754 | yes | 0.5782 | 0 | 0.9822 | 0.4412 |
| RF | D | 755 | 0.2489 | 0.2936 | 0.2024 | 0.5918 | 0.9478 | 0.7863 | 0.6621 | 0.5081 | 0.254 | 1.003 | 0.3161 | yes | 1 | yes | 1 | 0 | 0.8794 | 0.1371 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.3815 | 1.092 | 1.328 | -1.185 | 0.2363 | 0.8818 | -1.881 | 0.06007 | yes | 0.2388 | yes | 0.128 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2035 | 0.4381 | 0.2663 | 0.5344 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8956 | yes | 1 | 0 | 0.9159 | 0.1182 |
| RF | A | 2013 | 0.2041 | 0.4614 | 0.2612 | 0.5097 | 1.003 | 1.053 | -0.04703 | 0.9625 | 0.5188 | -1.046 | 0.2956 | yes | 0.8956 | yes | 0.3436 | 0 | 0.9185 | 0.1022 |
| RF | C | 2013 | 0.1968 | 0.4404 | 0.2617 | 0.532 | 0.9668 | 1.005 | 0.6814 | 0.4957 | 0.2479 | -0.0762 | 0.9393 | yes | 1 | yes | 0.9366 | 0 | 0.8854 | 0.0599 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2747 | 1.073 | 1 | 1.038 | 1.063 | 0.9469 |
| High RV (monthly RV > threshold) | 62 | 0.1276 | 1.192 | 1 | 0.9519 | 0.9612 | 0.9704 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2033 | 0.945 | 1 | 0.8652 | 0.9787 | 0.8358 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.8005 | 1.384 | 1 | 1.426 | 1.243 | 1.206 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1.348 | 1.193 | 1.147 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2164 | 1.082 | 1 | 0.9952 | 0.9641 |
| High RV (monthly RV > threshold) | 236 | 0.1068 | 1.238 | 1 | 1.12 | 1.007 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1613 | 1.024 | 1 | 0.8853 | 0.9362 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5865 | 1.26 | 1 | 1.296 | 1.043 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 | 1.004 | 0.9312 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1.348 | 1.193 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.47 | 4 |
| RF | A | 3.397 | 4 |
| RF | C | 3.415 | 4 |
| RF | D | 3.46 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.09638 |
| iv_skew_1m | 0.07451 |
| log_vxn | 0.05752 |
| stlfsi4 | 0.05372 |
| es_rsn_d | 0.05234 |
| iv_term | 0.04646 |
| rv_w | 0.04058 |
| es_rk_d | 0.03333 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.5782 | 0.8839 | 0.9874 | 0.3614 | 0.7179 | 0.359 | 0.08394 | 0.9331 | yes | 1 | yes | 1 | 0 | 1 | NaN |
| HAR | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.788 | yes | 0.9344 | 0 | 1.131 | 0.641 |
| RF | A | 755 | 0.2979 | 0.2751 | 0.2704 | 0.464 | 0.94 | 1.255 | 0.4255 | 0.6706 | 0.3353 | -1.219 | 0.2231 | yes | 0.788 | yes | 0.7668 | 0 | 1.063 | 0.6183 |
| RF | C | 755 | 0.4167 | 0.2755 | 0.3878 | 0.4631 | 1.315 | 1.257 | -2.153 | 0.03162 | 0.9842 | -0.9152 | 0.3604 | yes | 0.1048 | yes | 0.7496 | 0 | 1.487 | 0.8798 |
| RF | D | 755 | 0.4634 | 0.2519 | 0.3744 | 0.5092 | 1.462 | 1.149 | -3.127 | 0.001833 | 0.9991 | -0.4738 | 0.6357 | no | 0.0004 | yes | 0.7668 | 0 | 1.654 | 0.9748 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5549 | 1.104 | 1.066 | -0.4934 | 0.6218 | 0.6891 | -0.7686 | 0.4422 | yes | 0.7394 | yes | 0.5582 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2566 | 0.2897 | 0.3456 | 0.5824 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.9056 | 0.3109 |
| RF | A | 2013 | 0.2655 | 0.4696 | 0.3395 | 0.323 | 1.035 | 1.621 | -0.3359 | 0.737 | 0.6315 | -1.907 | 0.05669 | yes | 0.757 | yes | 0.163 | 0 | 0.9372 | 0.2805 |
| RF | C | 2013 | 0.3019 | 0.332 | 0.3949 | 0.5214 | 1.177 | 1.146 | -1.921 | 0.05482 | 0.9726 | -1.381 | 0.1674 | yes | 0.6236 | yes | 0.5582 | 0 | 1.066 | 0.6156 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3271 | 0.8501 | 1 | 0.9377 | 1.357 | 1.522 |
| High RV (monthly RV > threshold) | 62 | 0.2035 | 1.491 | 1 | 0.9823 | 0.5471 | 0.3942 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.2782 | 0.4056 | 1 | 0.7167 | 1.416 | 1.43 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5894 | 2.472 | 1 | 1.681 | 0.9775 | 1.567 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1.454 | 0.8379 | 0.9384 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2727 | 1.09 | 1 | 1.025 | 1.205 |
| High RV (monthly RV > threshold) | 236 | 0.1352 | 1.325 | 1 | 1.183 | 0.7438 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2181 | 0.6466 | 1 | 0.7832 | 1.272 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5721 | 2.533 | 1 | 1.821 | 0.8796 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 | 1.232 | 1.198 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1.454 | 0.8379 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.419 | 4 |
| RF | A | 3.391 | 4 |
| RF | C | 3.28 | 4 |
| RF | D | 3.157 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.08539 | 0.4252 |
| RF_A | 755 | 33.8 | 1.666 | 30.02 | 1.636 | 0.6623 | -0.1463 | 0.7656 |
| RF_C | 755 | 26.43 | 1.29 | 26.43 | 1.251 | 0.4636 | 0.2064 | 0.4159 |
| RF_D | 755 | -5.347 | -0.2357 | -6.279 | -0.281 | 0.3947 | 0.2462 | 0.453 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1811 |
| stlfsi4 | 0.07527 |
| iv_skew_1m | 0.07345 |
| nfci | 0.04672 |
| es_J_m | 0.03428 |
| log_vxn | 0.03312 |
| parkinson_w | 0.03274 |
| ciss | 0.03261 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2045 | 1.936 | 0.3236 | 0.09341 | 0.9427 | 1.238 | 0.7869 | 0.4316 | 0.2158 | -1.147 | 0.2518 | no | 0.0292 | yes | 0.181 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2169 | 1.564 | 0.3356 | 0.2678 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0006 | yes | 0.2022 | 0 | 1.061 | 0.7842 |
| RF | A | 755 | 0.1975 | 1.45 | 0.3128 | 0.321 | 0.9106 | 0.9273 | 2.103 | 0.03583 | 0.01791 | 0.7377 | 0.4609 | no | 0.0292 | yes | 0.181 | 0 | 0.966 | 0.2775 |
| RF | C | 755 | 0.1371 | 1.017 | 0.2849 | 0.524 | 0.632 | 0.6501 | 3.503 | 0.000488 | 0.000244 | 1.083 | 0.2793 | no | 0.0736 | yes | 1 | 0 | 0.6704 | 0.01208 |
| RF | D | 755 | 0.1304 | 1.056 | 0.2837 | 0.5056 | 0.6012 | 0.6752 | 3.679 | 0.000251 | 0.0001255 | 1.131 | 0.2584 | yes | 1 | yes | 0.5494 | 0 | 0.6378 | 0.007765 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2328 | 0.9324 | 1 | 0.9005 | 0.6178 | 0.5808 |
| High RV (monthly RV > threshold) | 100 | 0.1132 | 1.081 | 1 | 1.046 | 0.8224 | 0.8762 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.1765 | 0.8501 | 1 | 0.8074 | 0.7293 | 0.7019 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.5401 | 1.184 | 1 | 1.18 | 0.3779 | 0.3385 |
| Aug 2015 devaluation | 54 | 0.3909 | 0.9307 | 1 | 1.113 | 0.361 | 0.3932 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.521 | 4 |
| HAR | A | 3.562 | 4 |
| RF | A | 3.57 | 4 |
| RF | C | 3.738 | 4 |
| RF | D | 3.752 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.1347 |
| es_rsn_d | 0.09278 |
| es_rk_d | 0.07573 |
| rv_d | 0.07325 |
| es_C_d | 0.06306 |
| negret_w | 0.04492 |
| log_vxn | 0.04308 |
| parkinson_d | 0.03651 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2615 | 1.148 | 0.3768 | -0.004448 | 0.8945 | 1.373 | 1.053 | 0.2926 | 0.1463 | -1.216 | 0.2245 | yes | 0.3384 | yes | 0.3156 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2923 | 0.8363 | 0.3962 | 0.2685 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0222 | yes | 0.3156 | 0 | 1.118 | 0.8537 |
| RF | A | 755 | 0.2366 | 0.7922 | 0.3363 | 0.307 | 0.8094 | 0.9473 | 3.501 | 0.0004917 | 0.0002458 | 0.62 | 0.5355 | yes | 0.787 | yes | 0.3156 | 0 | 0.9048 | 0.09 |
| RF | C | 755 | 0.233 | 0.67 | 0.3316 | 0.4139 | 0.7972 | 0.8011 | 2.528 | 0.01168 | 0.00584 | 1.302 | 0.1933 | yes | 0.787 | yes | 0.7346 | 0 | 0.8912 | 0.1997 |
| RF | D | 755 | 0.2218 | 0.6672 | 0.323 | 0.4164 | 0.7589 | 0.7978 | 3.271 | 0.00112 | 0.0005598 | 1.294 | 0.196 | yes | 1 | yes | 1 | 0 | 0.8483 | 0.1042 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3199 | 0.8882 | 1 | 0.8129 | 0.8012 | 0.7595 |
| High RV (monthly RV > threshold) | 100 | 0.1117 | 1.014 | 1 | 0.7436 | 0.7234 | 0.7463 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2185 | 0.683 | 1 | 0.6468 | 0.7152 | 0.6645 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.8375 | 1.302 | 1 | 1.123 | 0.9553 | 0.9408 |
| Aug 2015 devaluation | 54 | 0.9256 | 1.179 | 1 | 1.024 | 1.137 | 1.095 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.386 | 4 |
| HAR | A | 3.409 | 4 |
| RF | A | 3.474 | 4 |
| RF | C | 3.494 | 4 |
| RF | D | 3.514 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1036 |
| iv_term | 0.08739 |
| log_vxn | 0.06511 |
| iv_skew_1m | 0.06112 |
| es_rsn_d | 0.0502 |
| iv_atm_1m | 0.04873 |
| log_vix | 0.0486 |
| parkinson_w | 0.0428 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.3064 | 0.6277 | 0.4368 | -0.005359 | 0.9416 | 1.336 | 0.2479 | 0.8043 | 0.4022 | -1.422 | 0.1554 | yes | 0.5528 | yes | 0.4416 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3253 | 0.4697 | 0.4715 | 0.2477 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5054 | yes | 0.483 | 0 | 1.062 | 0.5978 |
| RF | A | 755 | 0.2721 | 0.4456 | 0.4094 | 0.2862 | 0.8365 | 0.9488 | 2.2 | 0.02813 | 0.01406 | 0.6767 | 0.4988 | yes | 1 | yes | 1 | 0 | 0.8883 | 0.2874 |
| RF | C | 755 | 0.44 | 0.629 | 0.585 | -0.007396 | 1.352 | 1.339 | -3.254 | 0.001187 | 0.9994 | -1.781 | 0.0753 | no | 0.0064 | yes | 0.4416 | 0 | 1.436 | 0.9333 |
| RF | D | 755 | 0.4709 | 0.6688 | 0.6178 | -0.0712 | 1.447 | 1.424 | -3.773 | 0.0001741 | 0.9999 | -2.088 | 0.03711 | no | 0.002 | yes | 0.2492 | 0 | 1.537 | 0.9575 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3473 | 0.8758 | 1 | 0.8472 | 1.406 | 1.498 |
| High RV (monthly RV > threshold) | 100 | 0.1817 | 1.766 | 1 | 0.7023 | 0.6772 | 0.8186 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2681 | 0.6301 | 1 | 0.7388 | 1.449 | 1.58 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7482 | 1.766 | 1 | 1.095 | 1.097 | 1.096 |
| Aug 2015 devaluation | 54 | 0.3513 | 1.937 | 1 | 0.6723 | 0.7367 | 0.8742 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.304 | 4 |
| HAR | A | 3.385 | 4 |
| RF | A | 3.449 | 4 |
| RF | C | 3.217 | 4 |
| RF | D | 3.175 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 21.07 | 0.9744 | 24.85 | 1.18 | 0.7192 | 0.0442 | 0.8384 |
| HAR_A | 755 | 18.27 | 1.249 | 24.44 | 1.702 | 0.5007 | 0.2678 | 0.5828 |
| RF_A | 755 | 55.08 | 5.643 | 55.83 | 5.908 | 0.7377 | 0.2264 | 0.8172 |
| RF_C | 755 | 1.676 | 0.07884 | 6.861 | 0.3161 | 0.4318 | 0.2714 | 0.4795 |
| RF_D | 755 | -10.39 | -0.477 | -3.994 | -0.1804 | 0.4 | 0.2591 | 0.4556 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1921 |
| iv_skew_1m | 0.08639 |
| stlfsi4 | 0.05677 |
| log_vix | 0.04931 |
| nfci | 0.04858 |
| parkinson_w | 0.03716 |
| log_vxn | 0.03589 |
| es_J_m | 0.03436 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_D | 0.6813 | 0.001729 | yes | yes | 0.7157 | yes | HAR_A | NaN | NaN |
| SPY | 5 | RF_D | 0.9478 | 0.254 | yes | no | 0.8794 | no | HAR_A RF_A RF_C RF_D | NaN | NaN |
| SPY | 22 | RF_A | 0.94 | 0.3353 | yes | no | 1.063 | no | HAR_A RF_A RF_C RF_D | 30.02 | -0.1463 |
| ES | 1 | RF_D | 0.6012 | 0.0001255 | yes | yes | 0.6378 | yes | HAR_A RF_A | NaN | NaN |
| ES | 5 | RF_D | 0.7589 | 0.0005598 | yes | yes | 0.8483 | no | HAR_A RF_A RF_C RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.8365 | 0.01406 | yes | yes | 0.8883 | no | HAR_A RF_A RF_C RF_D | 55.83 | 0.2264 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.952 | 1.497 | 0.5641 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.05 |
| SPY | 1 | all-model common days | RF | A | 0.8598 | 0.9465 | 0.004051 | no | 0.9031 |
| SPY | 1 | all-model common days | RF | C | 0.7157 | 0.8524 | 0.001206 | yes | 0.7518 |
| SPY | 1 | all-model common days | RF | D | 0.6813 | 0.7428 | 0.003458 | yes | 0.7157 |
| SPY | 1 | sets A-C common days | PER | A | 1.06 | 1.291 | 0.2824 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.9433 |
| SPY | 1 | sets A-C common days | RF | A | 0.9232 | 0.9554 | 0.004514 | no | 0.8708 |
| SPY | 1 | sets A-C common days | RF | C | 0.7779 | 0.908 | 2.423e-07 | yes | 0.7338 |
| SPY | 5 | all-model common days | PER | A | 1.078 | 1.313 | 0.5383 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9278 |
| SPY | 5 | all-model common days | RF | A | 1.035 | 0.9585 | 0.7519 | yes | 0.9602 |
| SPY | 5 | all-model common days | RF | C | 1.059 | 0.9204 | 0.4952 | yes | 0.9822 |
| SPY | 5 | all-model common days | RF | D | 0.9478 | 0.7863 | 0.5081 | yes | 0.8794 |
| SPY | 5 | sets A-C common days | PER | A | 1.092 | 1.328 | 0.2363 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9159 |
| SPY | 5 | sets A-C common days | RF | A | 1.003 | 1.053 | 0.9625 | yes | 0.9185 |
| SPY | 5 | sets A-C common days | RF | C | 0.9668 | 1.005 | 0.4957 | yes | 0.8854 |
| SPY | 22 | all-model common days | PER | A | 0.8839 | 0.9874 | 0.7179 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.131 |
| SPY | 22 | all-model common days | RF | A | 0.94 | 1.255 | 0.6706 | yes | 1.063 |
| SPY | 22 | all-model common days | RF | C | 1.315 | 1.257 | 0.03162 | yes | 1.487 |
| SPY | 22 | all-model common days | RF | D | 1.462 | 1.149 | 0.001833 | no | 1.654 |
| SPY | 22 | sets A-C common days | PER | A | 1.104 | 1.066 | 0.6218 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9056 |
| SPY | 22 | sets A-C common days | RF | A | 1.035 | 1.621 | 0.737 | yes | 0.9372 |
| SPY | 22 | sets A-C common days | RF | C | 1.177 | 1.146 | 0.05482 | yes | 1.066 |
| ES | 1 | all-model common days | PER | A | 0.9427 | 1.238 | 0.4316 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.061 |
| ES | 1 | all-model common days | RF | A | 0.9106 | 0.9273 | 0.03583 | no | 0.966 |
| ES | 1 | all-model common days | RF | C | 0.632 | 0.6501 | 0.000488 | no | 0.6704 |
| ES | 1 | all-model common days | RF | D | 0.6012 | 0.6752 | 0.000251 | yes | 0.6378 |
| ES | 5 | all-model common days | PER | A | 0.8945 | 1.373 | 0.2926 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.118 |
| ES | 5 | all-model common days | RF | A | 0.8094 | 0.9473 | 0.0004917 | yes | 0.9048 |
| ES | 5 | all-model common days | RF | C | 0.7972 | 0.8011 | 0.01168 | yes | 0.8912 |
| ES | 5 | all-model common days | RF | D | 0.7589 | 0.7978 | 0.00112 | yes | 0.8483 |
| ES | 22 | all-model common days | PER | A | 0.9416 | 1.336 | 0.8043 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.062 |
| ES | 22 | all-model common days | RF | A | 0.8365 | 0.9488 | 0.02813 | yes | 0.8883 |
| ES | 22 | all-model common days | RF | C | 1.352 | 1.339 | 0.001187 | no | 1.436 |
| ES | 22 | all-model common days | RF | D | 1.447 | 1.424 | 0.0001741 | no | 1.537 |

