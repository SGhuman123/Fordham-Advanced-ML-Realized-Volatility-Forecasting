# Results: dev period, scenario "rfdefault"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.006527 | 0.952 | 1.497 | 0.577 | 0.5641 | 0.2821 | -0.9708 | 0.3319 | no | 0.0134 | yes | 0.4382 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2537 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0134 | yes | 0.4382 | 0 | 1.05 | 0.7179 |
| RF | A | 755 | 0.2182 | 0.7928 | 0.2027 | 0.372 | 0.8598 | 0.9465 | 2.883 | 0.004051 | 0.002026 | 1.045 | 0.2965 | no | 0.0134 | yes | 0.4382 | 0 | 0.9031 | 0.03678 |
| RF | C | 755 | 0.1806 | 0.7053 | 0.1861 | 0.4413 | 0.7116 | 0.842 | 3.193 | 0.001465 | 0.0007323 | 1.182 | 0.2376 | yes | 0.1476 | yes | 0.6042 | 0 | 0.7475 | 1.448e-05 |
| RF | D | 755 | 0.1732 | 0.635 | 0.1897 | 0.497 | 0.6827 | 0.7581 | 2.945 | 0.003325 | 0.001662 | 1.051 | 0.2934 | yes | 1 | yes | 1 | 0 | 0.7171 | 3.959e-05 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.292 | 1.06 | 1.291 | -1.075 | 0.2824 | 0.8588 | -1.173 | 0.2411 | no | 0.002 | yes | 0.248 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2143 | 0.7915 | 0.2676 | 0.4518 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.002 | yes | 0.413 | 0 | 0.9433 | 0.1412 |
| RF | A | 2013 | 0.1979 | 0.7562 | 0.2501 | 0.4762 | 0.9232 | 0.9554 | 2.843 | 0.004514 | 0.002257 | 1.247 | 0.2127 | no | 0.002 | yes | 0.5326 | 0 | 0.8708 | 0.00162 |
| RF | C | 2013 | 0.1667 | 0.7154 | 0.2417 | 0.5045 | 0.7776 | 0.9039 | 5.054 | 4.717e-07 | 2.358e-07 | 0.8656 | 0.3868 | yes | 1 | yes | 1 | 0 | 0.7336 | 2.609e-10 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2618 | 0.9412 | 1 | 0.8594 | 0.7031 | 0.6657 |
| High RV (monthly RV > threshold) | 62 | 0.1643 | 1.145 | 1 | 0.8665 | 0.8637 | 0.9847 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2184 | 0.9515 | 1 | 0.848 | 0.7552 | 0.7541 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5739 | 0.9539 | 1 | 0.9006 | 0.5611 | 0.4362 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.7111 | 0.4486 | 0.3886 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2237 | 1.059 | 1 | 0.9252 | 0.7714 |
| High RV (monthly RV > threshold) | 236 | 0.1441 | 1.072 | 1 | 0.8999 | 0.8511 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1893 | 1.07 | 1 | 0.8991 | 0.8003 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4776 | 1.018 | 1 | 1.023 | 0.6835 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 | 0.9919 | 0.8665 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.7111 | 0.4486 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.509 | 4 |
| RF | A | 3.571 | 4 |
| RF | C | 3.656 | 4 |
| RF | D | 3.676 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.09741 |
| es_rsn_d | 0.08335 |
| es_C_d | 0.05996 |
| rv_d | 0.05649 |
| negret_w | 0.05403 |
| vix3m_spread | 0.04888 |
| es_rk_d | 0.0479 |
| iv_skew_1m | 0.04349 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3184 | 1.078 | 1.313 | -0.6157 | 0.5383 | 0.7309 | -1.05 | 0.2941 | yes | 0.8292 | yes | 0.5866 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8292 | yes | 0.5866 | 0 | 0.9278 | 0.2691 |
| RF | A | 755 | 0.2718 | 0.3579 | 0.2179 | 0.5025 | 1.035 | 0.9585 | -0.3163 | 0.7519 | 0.6241 | 0.4211 | 0.6738 | yes | 0.8292 | yes | 0.5866 | 0 | 0.9602 | 0.3542 |
| RF | C | 755 | 0.2746 | 0.3486 | 0.217 | 0.5153 | 1.046 | 0.9337 | -0.5647 | 0.5724 | 0.7138 | 0.9116 | 0.3623 | yes | 0.8292 | yes | 0.5866 | 0 | 0.97 | 0.4013 |
| RF | D | 755 | 0.2477 | 0.2934 | 0.2036 | 0.592 | 0.9432 | 0.786 | 0.7611 | 0.4468 | 0.2234 | 0.999 | 0.3181 | yes | 1 | yes | 1 | 0 | 0.8751 | 0.1322 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.3815 | 1.092 | 1.328 | -1.185 | 0.2363 | 0.8818 | -1.881 | 0.06007 | yes | 0.2346 | yes | 0.1294 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2035 | 0.4381 | 0.2663 | 0.5344 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8798 | yes | 1 | 0 | 0.9159 | 0.1182 |
| RF | A | 2013 | 0.2041 | 0.4614 | 0.2612 | 0.5097 | 1.003 | 1.053 | -0.04703 | 0.9625 | 0.5188 | -1.046 | 0.2956 | yes | 0.8798 | yes | 0.375 | 0 | 0.9185 | 0.1022 |
| RF | C | 2013 | 0.1961 | 0.4421 | 0.2624 | 0.5302 | 0.9635 | 1.009 | 0.786 | 0.432 | 0.216 | -0.1348 | 0.8927 | yes | 1 | yes | 0.8892 | 0 | 0.8825 | 0.05511 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2747 | 1.073 | 1 | 1.038 | 1.048 | 0.9412 |
| High RV (monthly RV > threshold) | 62 | 0.1276 | 1.192 | 1 | 0.9519 | 0.9943 | 0.9907 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2033 | 0.945 | 1 | 0.8652 | 0.966 | 0.8437 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.8005 | 1.384 | 1 | 1.426 | 1.228 | 1.172 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1.348 | 1.167 | 1.118 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2164 | 1.082 | 1 | 0.9952 | 0.96 |
| High RV (monthly RV > threshold) | 236 | 0.1068 | 1.238 | 1 | 1.12 | 1.017 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1613 | 1.024 | 1 | 0.8853 | 0.9358 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5865 | 1.26 | 1 | 1.296 | 1.033 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 | 1.004 | 0.9293 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1.348 | 1.167 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.47 | 4 |
| RF | A | 3.397 | 4 |
| RF | C | 3.423 | 4 |
| RF | D | 3.467 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.09417 |
| iv_skew_1m | 0.06651 |
| stlfsi4 | 0.05522 |
| log_vxn | 0.0536 |
| es_rsn_d | 0.04748 |
| iv_term | 0.04708 |
| rv_w | 0.04531 |
| log_vix | 0.0354 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.5782 | 0.8839 | 0.9874 | 0.3614 | 0.7179 | 0.359 | 0.08394 | 0.9331 | yes | 1 | yes | 1 | 0 | 1 | NaN |
| HAR | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.788 | yes | 0.9344 | 0 | 1.131 | 0.641 |
| RF | A | 755 | 0.2979 | 0.2751 | 0.2704 | 0.464 | 0.94 | 1.255 | 0.4255 | 0.6706 | 0.3353 | -1.219 | 0.2231 | yes | 0.788 | yes | 0.7624 | 0 | 1.063 | 0.6183 |
| RF | C | 755 | 0.4243 | 0.2801 | 0.3951 | 0.4542 | 1.339 | 1.278 | -2.166 | 0.03062 | 0.9847 | -0.9624 | 0.3361 | yes | 0.1012 | yes | 0.6922 | 0 | 1.514 | 0.8853 |
| RF | D | 755 | 0.4564 | 0.2504 | 0.3723 | 0.5121 | 1.44 | 1.142 | -3.03 | 0.002532 | 0.9987 | -0.4519 | 0.6514 | no | 0.0012 | yes | 0.7752 | 0 | 1.629 | 0.9687 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5549 | 1.104 | 1.066 | -0.4934 | 0.6218 | 0.6891 | -0.7686 | 0.4422 | yes | 0.7394 | yes | 0.5164 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2566 | 0.2897 | 0.3456 | 0.5824 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.9056 | 0.3109 |
| RF | A | 2013 | 0.2655 | 0.4696 | 0.3395 | 0.323 | 1.035 | 1.621 | -0.3359 | 0.737 | 0.6315 | -1.907 | 0.05669 | yes | 0.757 | yes | 0.1696 | 0 | 0.9372 | 0.2805 |
| RF | C | 2013 | 0.306 | 0.3348 | 0.399 | 0.5173 | 1.193 | 1.156 | -2.01 | 0.04451 | 0.9777 | -1.451 | 0.147 | yes | 0.572 | yes | 0.5164 | 0 | 1.08 | 0.6379 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3271 | 0.8501 | 1 | 0.9377 | 1.381 | 1.497 |
| High RV (monthly RV > threshold) | 62 | 0.2035 | 1.491 | 1 | 0.9823 | 0.5693 | 0.414 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.2782 | 0.4056 | 1 | 0.7167 | 1.452 | 1.415 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5894 | 2.472 | 1 | 1.681 | 0.9622 | 1.523 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1.454 | 0.79 | 0.8952 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2727 | 1.09 | 1 | 1.025 | 1.222 |
| High RV (monthly RV > threshold) | 236 | 0.1352 | 1.325 | 1 | 1.183 | 0.7525 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2181 | 0.6466 | 1 | 0.7832 | 1.296 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5721 | 2.533 | 1 | 1.821 | 0.8692 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 | 1.232 | 1.201 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1.454 | 0.79 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.419 | 4 |
| RF | A | 3.391 | 4 |
| RF | C | 3.273 | 4 |
| RF | D | 3.171 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.08539 | 0.4252 |
| RF_A | 755 | 33.8 | 1.666 | 30.02 | 1.636 | 0.6623 | -0.1463 | 0.7656 |
| RF_C | 755 | 29.39 | 1.348 | 29.79 | 1.303 | 0.4848 | 0.2053 | 0.4318 |
| RF_D | 755 | -3.331 | -0.1456 | -4.339 | -0.1923 | 0.404 | 0.2425 | 0.4596 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1752 |
| iv_skew_1m | 0.07242 |
| stlfsi4 | 0.07058 |
| nfci | 0.04872 |
| log_vxn | 0.03523 |
| parkinson_w | 0.03219 |
| ciss | 0.03162 |
| rv_m | 0.03067 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2045 | 1.936 | 0.3236 | 0.09341 | 0.9427 | 1.238 | 0.7869 | 0.4316 | 0.2158 | -1.147 | 0.2518 | no | 0.0288 | yes | 0.1696 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2169 | 1.564 | 0.3356 | 0.2678 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0006 | yes | 0.1878 | 0 | 1.061 | 0.7842 |
| RF | A | 755 | 0.1975 | 1.45 | 0.3128 | 0.321 | 0.9106 | 0.9273 | 2.103 | 0.03583 | 0.01791 | 0.7377 | 0.4609 | no | 0.0288 | yes | 0.1696 | 0 | 0.966 | 0.2775 |
| RF | C | 755 | 0.1372 | 1.059 | 0.2879 | 0.5041 | 0.6325 | 0.6773 | 3.516 | 0.0004643 | 0.0002321 | 1.076 | 0.2822 | no | 0.0558 | yes | 1 | 0 | 0.671 | 0.01213 |
| RF | D | 755 | 0.1314 | 1.062 | 0.2812 | 0.5029 | 0.6058 | 0.6789 | 3.702 | 0.0002294 | 0.0001147 | 1.128 | 0.2595 | yes | 1 | yes | 0.9092 | 0 | 0.6427 | 0.007574 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2328 | 0.9324 | 1 | 0.9005 | 0.6155 | 0.5867 |
| High RV (monthly RV > threshold) | 100 | 0.1132 | 1.081 | 1 | 1.046 | 0.8618 | 0.8636 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.1765 | 0.8501 | 1 | 0.8074 | 0.7255 | 0.7002 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.5401 | 1.184 | 1 | 1.18 | 0.3898 | 0.3596 |
| Aug 2015 devaluation | 54 | 0.3909 | 0.9307 | 1 | 1.113 | 0.3805 | 0.3882 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.521 | 4 |
| HAR | A | 3.562 | 4 |
| RF | A | 3.57 | 4 |
| RF | C | 3.737 | 4 |
| RF | D | 3.748 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.1273 |
| es_rsn_d | 0.08797 |
| es_rk_d | 0.08226 |
| rv_d | 0.07574 |
| es_C_d | 0.06218 |
| vix3m_spread | 0.04276 |
| negret_w | 0.04099 |
| log_vxn | 0.03775 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2615 | 1.148 | 0.3768 | -0.004448 | 0.8945 | 1.373 | 1.053 | 0.2926 | 0.1463 | -1.216 | 0.2245 | yes | 0.3308 | yes | 0.3156 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2923 | 0.8363 | 0.3962 | 0.2685 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.025 | yes | 0.3156 | 0 | 1.118 | 0.8537 |
| RF | A | 755 | 0.2366 | 0.7922 | 0.3363 | 0.307 | 0.8094 | 0.9473 | 3.501 | 0.0004917 | 0.0002458 | 0.62 | 0.5355 | yes | 0.781 | yes | 0.3156 | 0 | 0.9048 | 0.09 |
| RF | C | 755 | 0.2324 | 0.6682 | 0.331 | 0.4155 | 0.795 | 0.799 | 2.443 | 0.01479 | 0.007395 | 1.306 | 0.1921 | yes | 0.781 | yes | 0.7954 | 0 | 0.8887 | 0.1985 |
| RF | D | 755 | 0.2225 | 0.6662 | 0.3238 | 0.4172 | 0.7612 | 0.7967 | 3.091 | 0.002066 | 0.001033 | 1.296 | 0.1954 | yes | 1 | yes | 1 | 0 | 0.8509 | 0.112 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3199 | 0.8882 | 1 | 0.8129 | 0.798 | 0.7628 |
| High RV (monthly RV > threshold) | 100 | 0.1117 | 1.014 | 1 | 0.7436 | 0.7386 | 0.7312 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2185 | 0.683 | 1 | 0.6468 | 0.7098 | 0.6661 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.8375 | 1.302 | 1 | 1.123 | 0.9594 | 0.9446 |
| Aug 2015 devaluation | 54 | 0.9256 | 1.179 | 1 | 1.024 | 1.149 | 1.114 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.386 | 4 |
| HAR | A | 3.409 | 4 |
| RF | A | 3.474 | 4 |
| RF | C | 3.494 | 4 |
| RF | D | 3.511 | 4 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1009 |
| iv_term | 0.0867 |
| log_vxn | 0.07249 |
| iv_skew_1m | 0.06364 |
| log_vix | 0.0458 |
| iv_atm_1m | 0.04338 |
| es_rsn_d | 0.03884 |
| stlfsi4 | 0.03564 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.3064 | 0.6277 | 0.4368 | -0.005359 | 0.9416 | 1.336 | 0.2479 | 0.8043 | 0.4022 | -1.422 | 0.1554 | yes | 0.5528 | yes | 0.3122 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3253 | 0.4697 | 0.4715 | 0.2477 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5054 | yes | 0.483 | 0 | 1.062 | 0.5978 |
| RF | A | 755 | 0.2721 | 0.4456 | 0.4094 | 0.2862 | 0.8365 | 0.9488 | 2.2 | 0.02813 | 0.01406 | 0.6767 | 0.4988 | yes | 1 | yes | 1 | 0 | 0.8883 | 0.2874 |
| RF | C | 755 | 0.4569 | 0.6608 | 0.6139 | -0.05838 | 1.405 | 1.407 | -3.355 | 0.0008325 | 0.9996 | -1.987 | 0.04732 | no | 0.0064 | yes | 0.3122 | 0 | 1.492 | 0.9407 |
| RF | D | 755 | 0.4631 | 0.6622 | 0.6137 | -0.06064 | 1.424 | 1.41 | -3.557 | 0.0003993 | 0.9998 | -1.982 | 0.04788 | no | 0.0028 | yes | 0.3122 | 0 | 1.512 | 0.9511 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | RF_A | RF_C | RF_D |
|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3473 | 0.8758 | 1 | 0.8472 | 1.462 | 1.477 |
| High RV (monthly RV > threshold) | 100 | 0.1817 | 1.766 | 1 | 0.7023 | 0.6856 | 0.7564 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2681 | 0.6301 | 1 | 0.7388 | 1.549 | 1.555 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7482 | 1.766 | 1 | 1.095 | 1.022 | 1.075 |
| Aug 2015 devaluation | 54 | 0.3513 | 1.937 | 1 | 0.6723 | 0.7338 | 0.8381 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.304 | 4 |
| HAR | A | 3.385 | 4 |
| RF | A | 3.449 | 4 |
| RF | C | 3.204 | 4 |
| RF | D | 3.188 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 21.07 | 0.9744 | 24.85 | 1.18 | 0.7192 | 0.0442 | 0.8384 |
| HAR_A | 755 | 18.27 | 1.249 | 24.44 | 1.702 | 0.5007 | 0.2678 | 0.5828 |
| RF_A | 755 | 55.08 | 5.643 | 55.83 | 5.908 | 0.7377 | 0.2264 | 0.8172 |
| RF_C | 755 | -3.774 | -0.17 | 0.1271 | 0.005623 | 0.4146 | 0.2633 | 0.4623 |
| RF_D | 755 | -10.58 | -0.4784 | -6.247 | -0.2754 | 0.3947 | 0.2596 | 0.4503 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.1954 |
| iv_skew_1m | 0.08132 |
| stlfsi4 | 0.05173 |
| nfci | 0.04587 |
| log_vix | 0.04577 |
| parkinson_w | 0.04404 |
| log_vxn | 0.03619 |
| es_J_m | 0.03309 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_D | 0.6827 | 0.001662 | yes | yes | 0.7171 | yes | HAR_A | NaN | NaN |
| SPY | 5 | RF_D | 0.9432 | 0.2234 | yes | no | 0.8751 | no | HAR_A RF_A RF_C RF_D | NaN | NaN |
| SPY | 22 | RF_A | 0.94 | 0.3353 | yes | no | 1.063 | no | HAR_A RF_A RF_C RF_D | 30.02 | -0.1463 |
| ES | 1 | RF_D | 0.6058 | 0.0001147 | yes | yes | 0.6427 | yes | HAR_A RF_A | NaN | NaN |
| ES | 5 | RF_D | 0.7612 | 0.001033 | yes | yes | 0.8509 | no | HAR_A RF_A RF_C RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.8365 | 0.01406 | yes | yes | 0.8883 | no | HAR_A RF_A RF_C RF_D | 55.83 | 0.2264 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.952 | 1.497 | 0.5641 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.05 |
| SPY | 1 | all-model common days | RF | A | 0.8598 | 0.9465 | 0.004051 | no | 0.9031 |
| SPY | 1 | all-model common days | RF | C | 0.7116 | 0.842 | 0.001465 | yes | 0.7475 |
| SPY | 1 | all-model common days | RF | D | 0.6827 | 0.7581 | 0.003325 | yes | 0.7171 |
| SPY | 1 | sets A-C common days | PER | A | 1.06 | 1.291 | 0.2824 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.9433 |
| SPY | 1 | sets A-C common days | RF | A | 0.9232 | 0.9554 | 0.004514 | no | 0.8708 |
| SPY | 1 | sets A-C common days | RF | C | 0.7776 | 0.9039 | 4.717e-07 | yes | 0.7336 |
| SPY | 5 | all-model common days | PER | A | 1.078 | 1.313 | 0.5383 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9278 |
| SPY | 5 | all-model common days | RF | A | 1.035 | 0.9585 | 0.7519 | yes | 0.9602 |
| SPY | 5 | all-model common days | RF | C | 1.046 | 0.9337 | 0.5724 | yes | 0.97 |
| SPY | 5 | all-model common days | RF | D | 0.9432 | 0.786 | 0.4468 | yes | 0.8751 |
| SPY | 5 | sets A-C common days | PER | A | 1.092 | 1.328 | 0.2363 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9159 |
| SPY | 5 | sets A-C common days | RF | A | 1.003 | 1.053 | 0.9625 | yes | 0.9185 |
| SPY | 5 | sets A-C common days | RF | C | 0.9635 | 1.009 | 0.432 | yes | 0.8825 |
| SPY | 22 | all-model common days | PER | A | 0.8839 | 0.9874 | 0.7179 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.131 |
| SPY | 22 | all-model common days | RF | A | 0.94 | 1.255 | 0.6706 | yes | 1.063 |
| SPY | 22 | all-model common days | RF | C | 1.339 | 1.278 | 0.03062 | yes | 1.514 |
| SPY | 22 | all-model common days | RF | D | 1.44 | 1.142 | 0.002532 | no | 1.629 |
| SPY | 22 | sets A-C common days | PER | A | 1.104 | 1.066 | 0.6218 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9056 |
| SPY | 22 | sets A-C common days | RF | A | 1.035 | 1.621 | 0.737 | yes | 0.9372 |
| SPY | 22 | sets A-C common days | RF | C | 1.193 | 1.156 | 0.04451 | yes | 1.08 |
| ES | 1 | all-model common days | PER | A | 0.9427 | 1.238 | 0.4316 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.061 |
| ES | 1 | all-model common days | RF | A | 0.9106 | 0.9273 | 0.03583 | no | 0.966 |
| ES | 1 | all-model common days | RF | C | 0.6325 | 0.6773 | 0.0004643 | no | 0.671 |
| ES | 1 | all-model common days | RF | D | 0.6058 | 0.6789 | 0.0002294 | yes | 0.6427 |
| ES | 5 | all-model common days | PER | A | 0.8945 | 1.373 | 0.2926 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.118 |
| ES | 5 | all-model common days | RF | A | 0.8094 | 0.9473 | 0.0004917 | yes | 0.9048 |
| ES | 5 | all-model common days | RF | C | 0.795 | 0.799 | 0.01479 | yes | 0.8887 |
| ES | 5 | all-model common days | RF | D | 0.7612 | 0.7967 | 0.002066 | yes | 0.8509 |
| ES | 22 | all-model common days | PER | A | 0.9416 | 1.336 | 0.8043 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.062 |
| ES | 22 | all-model common days | RF | A | 0.8365 | 0.9488 | 0.02813 | yes | 0.8883 |
| ES | 22 | all-model common days | RF | C | 1.405 | 1.407 | 0.0008325 | no | 1.492 |
| ES | 22 | all-model common days | RF | D | 1.424 | 1.41 | 0.0003993 | no | 1.512 |

