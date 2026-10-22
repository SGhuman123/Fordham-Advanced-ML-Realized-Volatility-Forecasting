# Results: dev period, scenario "ffdlags"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.006527 | 0.952 | 1.497 | 0.577 | 0.5641 | 0.2821 | -0.9708 | 0.3319 | no | 0.019 | yes | 0.679 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2537 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.019 | yes | 0.679 | 0 | 1.05 | 0.7179 |
| EN | AL | 755 | 0.5288 | 0.8818 | 0.4301 | 0.3015 | 2.084 | 1.053 | -10.4 | 9.529e-24 | 1 | -0.5064 | 0.6127 | no | 0 | yes | 0.679 | 1.06 | 2.189 | 1 |
| RF | AL | 755 | 0.216 | 0.8711 | 0.2129 | 0.31 | 0.8511 | 1.04 | 1.96 | 0.05032 | 0.02516 | -0.6476 | 0.5174 | no | 0.019 | yes | 0.679 | 0 | 0.8939 | 0.01498 |
| EN | BL | 755 | 0.387 | 0.7054 | 0.2431 | 0.4412 | 1.525 | 0.8422 | -3.066 | 0.002246 | 0.9989 | 0.9117 | 0.3622 | no | 0.003 | yes | 0.679 | 9.669 | 1.602 | 1 |
| RF | BL | 755 | 0.1738 | 0.7895 | 0.1842 | 0.3746 | 0.6851 | 0.9425 | 3.882 | 0.0001128 | 5.641e-05 | 1.177 | 0.2395 | yes | 0.7772 | yes | 0.679 | 0 | 0.7196 | 4.403e-08 |
| EN | CL | 755 | 0.4174 | 0.7115 | 0.2501 | 0.4364 | 1.645 | 0.8495 | -3.459 | 0.0005724 | 0.9997 | 0.8955 | 0.3708 | no | 0.0014 | yes | 0.679 | 10.46 | 1.728 | 1 |
| RF | CL | 755 | 0.1803 | 0.7339 | 0.1848 | 0.4186 | 0.7106 | 0.8762 | 3.517 | 0.0004618 | 0.0002309 | 1.247 | 0.2127 | no | 0.0236 | yes | 0.679 | 0 | 0.7464 | 1.822e-06 |
| EN | DL | 755 | 0.2393 | 0.7328 | 0.1889 | 0.4195 | 0.943 | 0.8748 | 0.5198 | 0.6034 | 0.3017 | 1.228 | 0.2198 | no | 0.019 | yes | 0.679 | 2.119 | 0.9906 | 0.4594 |
| RF | DL | 755 | 0.1726 | 0.6894 | 0.1861 | 0.4539 | 0.6803 | 0.823 | 3.39 | 0.0007365 | 0.0003683 | 1.072 | 0.284 | yes | 1 | yes | 1 | 0 | 0.7146 | 1.263e-06 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2618 | 0.9412 | 1 | 2.141 | 0.8367 | 1.556 | 0.674 | 1.682 | 0.7014 | 0.9567 | 0.6642 |
| High RV (monthly RV > threshold) | 62 | 0.1643 | 1.145 | 1 | 1.061 | 1.106 | 0.9789 | 0.8828 | 0.9879 | 0.8742 | 0.6999 | 0.9662 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2184 | 0.9515 | 1 | 2.572 | 0.8714 | 1.85 | 0.7053 | 2.006 | 0.7418 | 1.057 | 0.7274 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5739 | 0.9539 | 1 | 0.3978 | 0.7808 | 0.4054 | 0.6153 | 0.3977 | 0.6027 | 0.5483 | 0.5177 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.7496 | 0.6113 | 0.4681 | 0.5018 | 0.4852 | 0.4963 | 0.575 | 0.4728 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.509 | 4 |
| EN | AL | 3.153 | 4 |
| RF | AL | 3.589 | 4 |
| EN | BL | 3.151 | 4 |
| RF | BL | 3.659 | 4 |
| EN | CL | 3.079 | 4 |
| RF | CL | 3.651 | 4 |
| EN | DL | 3.482 | 4 |
| RF | DL | 3.668 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06188 | 1 |
| vix9d_spread | 0.05465 | 1 |
| es_rsn_d | 0.04722 | 1 |
| vrp | 0.0458 | 1 |
| es_rk_d | 0.04199 | 1 |
| negret_d | -0.0388 | 1 |
| negret_w | -0.03526 | 1 |
| es_C_d | 0.0347 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.09613 |
| es_C_d | 0.0877 |
| es_rsn_d | 0.087 |
| vix3m_spread | 0.08534 |
| log_rv | 0.06953 |
| es_rk_d | 0.05287 |
| iv_skew_1m | 0.05177 |
| log_vxn | 0.05008 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_DL | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_DL | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_DL | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_DL | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_DL | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_DL | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_DL | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3184 | 1.078 | 1.313 | -0.6157 | 0.5383 | 0.7309 | -1.05 | 0.2941 | yes | 0.7314 | yes | 0.629 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7314 | yes | 0.693 | 0 | 0.9278 | 0.2691 |
| EN | AL | 755 | 0.4994 | 0.4067 | 0.4069 | 0.4346 | 1.901 | 1.089 | -4.926 | 1.033e-06 | 1 | -0.3575 | 0.7208 | no | 0.0004 | yes | 0.629 | 4.371 | 1.764 | 0.9997 |
| RF | AL | 755 | 0.2582 | 0.4368 | 0.2343 | 0.3927 | 0.9832 | 1.17 | 0.3814 | 0.703 | 0.3515 | -1.397 | 0.1627 | yes | 0.7314 | yes | 0.6122 | 0 | 0.9122 | 0.2331 |
| EN | BL | 755 | 0.2877 | 0.3236 | 0.2706 | 0.5501 | 1.095 | 0.8667 | -0.7388 | 0.4603 | 0.7699 | 0.6068 | 0.5441 | yes | 0.7314 | yes | 0.7332 | 1.325 | 1.016 | 0.5379 |
| RF | BL | 755 | 0.2405 | 0.3333 | 0.2071 | 0.5365 | 0.9157 | 0.8928 | 1.661 | 0.0971 | 0.04855 | 1.006 | 0.3149 | yes | 0.9226 | yes | 0.7332 | 0 | 0.8496 | 0.09231 |
| EN | CL | 755 | 0.3911 | 0.3207 | 0.2714 | 0.5541 | 1.489 | 0.8589 | -2.498 | 0.0127 | 0.9937 | 0.6461 | 0.5184 | yes | 0.107 | yes | 0.7332 | 5.695 | 1.382 | 0.9716 |
| RF | CL | 755 | 0.319 | 0.326 | 0.244 | 0.5467 | 1.215 | 0.8733 | -3.391 | 0.0007317 | 0.9996 | 0.8378 | 0.4024 | yes | 0.107 | yes | 0.693 | 0 | 1.127 | 0.8311 |
| EN | DL | 755 | 0.2382 | 0.2915 | 0.1995 | 0.5948 | 0.907 | 0.7807 | 2.124 | 0.03397 | 0.01698 | 1.154 | 0.2488 | yes | 0.9536 | yes | 1 | 0 | 0.8415 | 0.0987 |
| RF | DL | 755 | 0.2375 | 0.2944 | 0.2001 | 0.5907 | 0.9042 | 0.7885 | 1.853 | 0.06429 | 0.03215 | 1.07 | 0.2849 | yes | 1 | yes | 0.7428 | 0 | 0.8389 | 0.07224 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2747 | 1.073 | 1 | 1.946 | 0.9718 | 1.093 | 0.9125 | 1.506 | 1.223 | 0.9186 | 0.9076 |
| High RV (monthly RV > threshold) | 62 | 0.1276 | 1.192 | 1 | 0.8391 | 1.258 | 1.147 | 0.9929 | 1.072 | 1.016 | 0.627 | 0.8221 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2033 | 0.945 | 1 | 2.535 | 0.9371 | 1.319 | 0.8368 | 1.887 | 1.257 | 0.8882 | 0.8324 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.8005 | 1.384 | 1 | 0.4425 | 1.089 | 0.5802 | 1.097 | 0.572 | 1.117 | 0.9502 | 1.069 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 0.5572 | 0.9972 | 0.6548 | 1.058 | 0.6587 | 1.059 | 0.8857 | 1.043 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.47 | 4 |
| EN | AL | 3.084 | 4 |
| RF | AL | 3.465 | 4 |
| EN | BL | 3.433 | 4 |
| RF | BL | 3.49 | 4 |
| EN | CL | 3.157 | 4 |
| RF | CL | 3.371 | 4 |
| EN | DL | 3.508 | 4 |
| RF | DL | 3.494 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.02436 | 1 |
| iv_term | -0.02291 | 1 |
| iv_skew_1m | 0.02254 | 1 |
| vix3m_spread | -0.02096 | 1 |
| vrp | 0.02065 | 1 |
| iv_atm_1m | 0.02034 | 1 |
| parkinson_d | 0.01913 | 1 |
| log_rv | 0.01822 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.07547 |
| es_rsn_d | 0.06994 |
| iv_term | 0.06568 |
| parkinson_w | 0.06405 |
| log_vxn | 0.05315 |
| es_rk_d | 0.05163 |
| iv_atm_1m | 0.05133 |
| es_C_d | 0.04985 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_DL | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_DL | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_DL | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_DL | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_DL | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_DL | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_DL | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## SPY target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.5782 | 0.8839 | 0.9874 | 0.3614 | 0.7179 | 0.359 | 0.08394 | 0.9331 | yes | 0.8682 | yes | 0.6996 | 0 | 1 | NaN |
| HAR | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5166 | yes | 0.6996 | 0 | 1.131 | 0.641 |
| EN | AL | 755 | 0.5252 | 0.3081 | 0.4959 | 0.3995 | 1.657 | 1.406 | -3.847 | 0.0001298 | 0.9999 | -1.044 | 0.297 | no | 0.0232 | yes | 0.4812 | 0 | 1.875 | 0.944 |
| RF | AL | 755 | 0.2996 | 0.3643 | 0.2951 | 0.2901 | 0.9453 | 1.662 | 0.9447 | 0.3451 | 0.1726 | -1.573 | 0.1161 | yes | 0.6626 | yes | 0.4812 | 0 | 1.069 | 0.5885 |
| EN | BL | 755 | 0.2644 | 0.1979 | 0.3053 | 0.6144 | 0.8342 | 0.9027 | 1.632 | 0.1031 | 0.05154 | 0.4335 | 0.6648 | yes | 1 | yes | 0.6996 | 0 | 0.9437 | 0.4415 |
| RF | BL | 755 | 0.3262 | 0.3131 | 0.2857 | 0.3899 | 1.029 | 1.428 | -0.221 | 0.8252 | 0.5874 | -1.029 | 0.3038 | yes | 0.41 | yes | 0.6156 | 0 | 1.164 | 0.754 |
| EN | CL | 755 | 0.2973 | 0.1797 | 0.2933 | 0.6498 | 0.9379 | 0.82 | 0.7579 | 0.4488 | 0.2244 | 0.7453 | 0.4563 | yes | 0.7068 | yes | 0.6996 | 0.5298 | 1.061 | 0.5642 |
| RF | CL | 755 | 0.4606 | 0.3457 | 0.432 | 0.3264 | 1.453 | 1.577 | -2.247 | 0.02496 | 0.9875 | -1.221 | 0.2225 | no | 0.0748 | yes | 0.4812 | 0 | 1.644 | 0.9105 |
| EN | DL | 755 | 0.3298 | 0.1528 | 0.2456 | 0.7022 | 1.04 | 0.6972 | -0.2549 | 0.7988 | 0.6006 | 1.261 | 0.2077 | yes | 0.5166 | yes | 1 | 0 | 1.177 | 0.7911 |
| RF | DL | 755 | 0.3424 | 0.1558 | 0.2676 | 0.6964 | 1.08 | 0.7108 | -0.9034 | 0.3666 | 0.8167 | 1.101 | 0.2713 | no | 0.095 | yes | 0.7536 | 0 | 1.222 | 0.7698 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3271 | 0.8501 | 1 | 1.699 | 0.9374 | 0.8194 | 1.032 | 0.9373 | 1.508 | 1.079 | 1.119 |
| High RV (monthly RV > threshold) | 62 | 0.2035 | 1.491 | 1 | 0.9022 | 1.088 | 1.101 | 0.9741 | 0.9502 | 0.4642 | 0.3535 | 0.3867 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.2782 | 0.4056 | 1 | 2.033 | 0.8301 | 0.8608 | 0.8416 | 0.9859 | 1.613 | 0.8195 | 0.9871 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5894 | 2.472 | 1 | 0.4098 | 1.328 | 0.7458 | 1.652 | 0.7788 | 0.9234 | 1.774 | 1.39 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 0.7889 | 0.9989 | 0.853 | 1.137 | 0.8719 | 0.5072 | 0.9707 | 0.8715 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.419 | 4 |
| EN | AL | 3.167 | 4 |
| RF | AL | 3.426 | 4 |
| EN | BL | 3.52 | 4 |
| RF | BL | 3.352 | 4 |
| EN | CL | 3.431 | 4 |
| RF | CL | 3.237 | 4 |
| EN | DL | 3.322 | 4 |
| RF | DL | 3.341 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.08539 | 0.4252 |
| EN_AL | 755 | -27.02 | -0.9927 | -31.67 | -1.221 | 0.2066 | 0.3477 | 0.1272 |
| RF_AL | 755 | 30.38 | 2.567 | 26.07 | 2.322 | 0.5709 | -0.08828 | 0.6477 |
| EN_BL | 755 | 17.32 | 0.8035 | 2.751 | 0.1327 | 0.506 | 0.1221 | 0.4821 |
| RF_BL | 755 | 22.13 | 0.8963 | 19.81 | 0.8483 | 0.5841 | -0.1537 | 0.6768 |
| EN_CL | 755 | 39.18 | 1.9 | 24.41 | 1.197 | 0.5444 | 0.2562 | 0.5417 |
| RF_CL | 755 | 38.12 | 1.324 | 36.26 | 1.299 | 0.498 | 0.2219 | 0.4742 |
| EN_DL | 755 | 35.45 | 1.581 | 35.18 | 1.654 | 0.5894 | 0.368 | 0.6874 |
| RF_DL | 755 | 17.49 | 0.7968 | 15.2 | 0.7187 | 0.4768 | 0.3805 | 0.5536 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01958 | 1 |
| iv_skew_1m | 0.01476 | 1 |
| es_C_m | 0.01406 | 1 |
| vix3m_spread | -0.01377 | 1 |
| es_J_m | 0.01264 | 1 |
| iv_term | -0.01233 | 1 |
| log_rv | 0.01179 | 1 |
| parkinson_w | 0.01169 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_C_d | 0.0501 |
| es_J_m | 0.04989 |
| es_rsn_w | 0.04748 |
| log_vxn | 0.04542 |
| es_rk_d | 0.04449 |
| iv_skew_1m | 0.04394 |
| iv_atm_1m | 0.0403 |
| log_vix | 0.03583 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_DL | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_DL | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_DL | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_DL | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_DL | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_DL | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_DL | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2045 | 1.936 | 0.3236 | 0.09341 | 0.9427 | 1.238 | 0.7869 | 0.4316 | 0.2158 | -1.147 | 0.2518 | yes | 0.1372 | yes | 0.3682 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2169 | 1.564 | 0.3356 | 0.2678 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0146 | yes | 0.3682 | 0 | 1.061 | 0.7842 |
| EN | AL | 755 | 0.2911 | 1.65 | 0.434 | 0.2272 | 1.342 | 1.055 | -4.567 | 5.767e-06 | 1 | -1.753 | 0.08007 | no | 0 | yes | 0.1666 | 6.49 | 1.424 | 0.9999 |
| RF | AL | 755 | 0.2051 | 1.46 | 0.3209 | 0.3165 | 0.9453 | 0.9335 | 1.171 | 0.2418 | 0.1209 | 0.5343 | 0.5933 | no | 0.0564 | yes | 0.2022 | 0 | 1.003 | 0.5235 |
| EN | BL | 755 | 0.1744 | 1.345 | 0.3307 | 0.3699 | 0.8038 | 0.8605 | 2.011 | 0.04468 | 0.02234 | 0.9712 | 0.3317 | yes | 0.1372 | yes | 0.3682 | 1.589 | 0.8527 | 0.1315 |
| RF | BL | 755 | 0.1399 | 1.132 | 0.283 | 0.4698 | 0.6449 | 0.7241 | 3.41 | 0.0006854 | 0.0003427 | 1.151 | 0.2503 | yes | 0.1612 | yes | 0.4934 | 0 | 0.6842 | 0.01711 |
| EN | CL | 755 | 0.1872 | 1.392 | 0.3437 | 0.3481 | 0.8632 | 0.8903 | 1.502 | 0.1336 | 0.06682 | 0.8601 | 0.39 | no | 0.0558 | yes | 0.3682 | 1.457 | 0.9157 | 0.2518 |
| RF | CL | 755 | 0.1471 | 1.096 | 0.291 | 0.4867 | 0.6782 | 0.701 | 2.994 | 0.002845 | 0.001423 | 1.146 | 0.2522 | yes | 0.1372 | yes | 1 | 0 | 0.7194 | 0.03357 |
| EN | DL | 755 | 0.164 | 1.319 | 0.3107 | 0.3821 | 0.756 | 0.8438 | 2.862 | 0.00433 | 0.002165 | 1.109 | 0.2676 | yes | 0.1372 | yes | 0.3682 | 0.2649 | 0.802 | 0.0556 |
| RF | DL | 755 | 0.1336 | 1.2 | 0.2851 | 0.4382 | 0.6159 | 0.7672 | 3.771 | 0.0001757 | 8.783e-05 | 1.189 | 0.2349 | yes | 1 | yes | 0.4934 | 0 | 0.6534 | 0.008883 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2328 | 0.9324 | 1 | 1.308 | 0.929 | 0.7941 | 0.6312 | 0.8495 | 0.6639 | 0.7496 | 0.5968 |
| High RV (monthly RV > threshold) | 100 | 0.1132 | 1.081 | 1 | 1.804 | 1.164 | 0.9346 | 0.8298 | 1.047 | 0.871 | 0.8423 | 0.8731 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.1765 | 0.8501 | 1 | 1.455 | 0.8889 | 0.9236 | 0.7549 | 0.9729 | 0.8058 | 0.8447 | 0.7104 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.5401 | 1.184 | 1 | 1.047 | 1.093 | 0.491 | 0.3579 | 0.5768 | 0.345 | 0.5243 | 0.3694 |
| Aug 2015 devaluation | 54 | 0.3909 | 0.9307 | 1 | 1.361 | 0.8519 | 0.5317 | 0.4301 | 0.5911 | 0.415 | 0.6461 | 0.5008 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.521 | 4 |
| HAR | A | 3.562 | 4 |
| EN | AL | 3.428 | 4 |
| RF | AL | 3.569 | 4 |
| EN | BL | 3.659 | 4 |
| RF | BL | 3.737 | 4 |
| EN | CL | 3.635 | 4 |
| RF | CL | 3.727 | 4 |
| EN | DL | 3.675 | 4 |
| RF | DL | 3.744 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.06395 | 1 |
| vix9d_spread | 0.0623 | 1 |
| parkinson_d | 0.05883 | 1 |
| es_C_d | 0.05625 | 1 |
| es_rk_d | 0.05624 | 1 |
| overnight_d | 0.04594 | 1 |
| negret_d | -0.04496 | 1 |
| vix3m_spread | -0.04312 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2429 |
| es_rsn_d | 0.09954 |
| log_rv | 0.06667 |
| es_rk_d | 0.06322 |
| es_C_d | 0.06298 |
| log_rvx | 0.05151 |
| log_vxn | 0.0445 |
| vrp | 0.0444 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_DL | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_DL | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_DL | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_DL | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_DL | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_DL | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_DL | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2615 | 1.148 | 0.3768 | -0.004448 | 0.8945 | 1.373 | 1.053 | 0.2926 | 0.1463 | -1.216 | 0.2245 | yes | 0.3926 | yes | 0.4494 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2923 | 0.8363 | 0.3962 | 0.2685 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0086 | yes | 0.4494 | 0 | 1.118 | 0.8537 |
| EN | AL | 755 | 0.2887 | 0.7754 | 0.4302 | 0.3217 | 0.9878 | 0.9272 | 0.1449 | 0.8849 | 0.4424 | 0.6634 | 0.5073 | no | 0.0448 | yes | 0.4494 | 3.179 | 1.104 | 0.7519 |
| RF | AL | 755 | 0.2548 | 0.8076 | 0.3661 | 0.2936 | 0.8716 | 0.9657 | 2.51 | 0.01228 | 0.00614 | 0.3351 | 0.7377 | yes | 0.1078 | yes | 0.4494 | 0 | 0.9743 | 0.3951 |
| EN | BL | 755 | 0.192 | 0.6476 | 0.3249 | 0.4335 | 0.6569 | 0.7743 | 3.979 | 7.585e-05 | 3.792e-05 | 1.408 | 0.1594 | yes | 1 | yes | 1 | 0 | 0.7344 | 0.03636 |
| RF | BL | 755 | 0.2444 | 0.6793 | 0.342 | 0.4058 | 0.8361 | 0.8122 | 2.538 | 0.01133 | 0.005667 | 1.348 | 0.1782 | yes | 0.3926 | yes | 0.8934 | 0 | 0.9346 | 0.3157 |
| EN | CL | 755 | 0.2138 | 0.6749 | 0.3429 | 0.4096 | 0.7316 | 0.807 | 3.621 | 0.0003127 | 0.0001564 | 1.368 | 0.1717 | yes | 0.5184 | yes | 0.8934 | 0 | 0.8179 | 0.1063 |
| RF | CL | 755 | 0.2331 | 0.6792 | 0.3458 | 0.4059 | 0.7974 | 0.8122 | 2.844 | 0.004579 | 0.002289 | 1.305 | 0.1925 | yes | 0.3926 | yes | 0.8934 | 0 | 0.8914 | 0.2056 |
| EN | DL | 755 | 0.2091 | 0.6813 | 0.3319 | 0.4041 | 0.7153 | 0.8146 | 4.452 | 9.783e-06 | 4.892e-06 | 1.454 | 0.1464 | yes | 0.5184 | yes | 0.8934 | 0 | 0.7997 | 0.06036 |
| RF | DL | 755 | 0.2232 | 0.6842 | 0.3261 | 0.4015 | 0.7637 | 0.8181 | 4.704 | 3.037e-06 | 1.518e-06 | 1.327 | 0.1849 | yes | 0.5184 | yes | 0.8934 | 0 | 0.8537 | 0.1029 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3199 | 0.8882 | 1 | 0.9777 | 0.8681 | 0.6499 | 0.8442 | 0.7257 | 0.8015 | 0.7136 | 0.7678 |
| High RV (monthly RV > threshold) | 100 | 0.1117 | 1.014 | 1 | 1.177 | 0.9368 | 0.7891 | 0.6839 | 0.8417 | 0.7204 | 0.7471 | 0.6868 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2185 | 0.683 | 1 | 1.141 | 0.7518 | 0.6767 | 0.8309 | 0.7628 | 0.7709 | 0.7066 | 0.7032 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.8375 | 1.302 | 1 | 0.6917 | 1.102 | 0.6188 | 0.8461 | 0.6715 | 0.8484 | 0.7321 | 0.8804 |
| Aug 2015 devaluation | 54 | 0.9256 | 1.179 | 1 | 0.7054 | 1.059 | 0.7172 | 1.02 | 0.7652 | 1.031 | 0.8379 | 0.9913 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.386 | 4 |
| HAR | A | 3.409 | 4 |
| EN | AL | 3.437 | 4 |
| RF | AL | 3.448 | 4 |
| EN | BL | 3.602 | 4 |
| RF | BL | 3.493 | 4 |
| EN | CL | 3.567 | 4 |
| RF | CL | 3.509 | 4 |
| EN | DL | 3.565 | 4 |
| RF | DL | 3.524 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.04231 | 1 |
| vix9d_spread | 0.037 | 1 |
| iv_atm_1m | 0.03664 | 1 |
| negret_w | -0.03654 | 1 |
| iv_skew_1m | 0.03612 | 1 |
| vix3m_spread | -0.0355 | 1 |
| es_rsn_d | 0.03243 | 1 |
| log_vxn | 0.03207 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.09311 |
| log_vxn | 0.0817 |
| iv_skew_1m | 0.07846 |
| parkinson_w | 0.07658 |
| log_vix | 0.0681 |
| iv_atm_1m | 0.06439 |
| es_C_d | 0.05888 |
| es_rsn_w | 0.05197 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_DL | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_DL | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_DL | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_DL | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_DL | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_DL | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_DL | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.3064 | 0.6277 | 0.4368 | -0.005359 | 0.9416 | 1.336 | 0.2479 | 0.8043 | 0.4022 | -1.422 | 0.1554 | yes | 0.9882 | yes | 0.349 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3253 | 0.4697 | 0.4715 | 0.2477 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6146 | yes | 0.7182 | 0 | 1.062 | 0.5978 |
| EN | AL | 755 | 0.3596 | 0.4459 | 0.4939 | 0.2858 | 1.105 | 0.9494 | -1.339 | 0.181 | 0.9095 | 0.3543 | 0.7232 | yes | 0.5308 | yes | 0.7704 | 0.1325 | 1.174 | 0.7045 |
| RF | AL | 755 | 0.3048 | 0.4623 | 0.4349 | 0.2595 | 0.9368 | 0.9843 | 1.228 | 0.2198 | 0.1099 | 0.1818 | 0.8558 | yes | 0.9882 | yes | 0.7182 | 0 | 0.9948 | 0.4911 |
| EN | BL | 755 | 0.2976 | 0.3926 | 0.4083 | 0.3711 | 0.9148 | 0.8359 | 1.668 | 0.09579 | 0.0479 | 1.856 | 0.0638 | yes | 1 | yes | 1 | 0 | 0.9715 | 0.451 |
| RF | BL | 755 | 0.3377 | 0.4186 | 0.4203 | 0.3295 | 1.038 | 0.8913 | -0.4855 | 0.6274 | 0.6863 | 1.461 | 0.1445 | yes | 0.5308 | yes | 0.7704 | 0 | 1.102 | 0.6736 |
| EN | CL | 755 | 0.3688 | 0.4295 | 0.4357 | 0.3121 | 1.133 | 0.9144 | -1.077 | 0.2818 | 0.8591 | 1.045 | 0.2964 | yes | 0.2218 | yes | 0.7704 | 0 | 1.204 | 0.8378 |
| RF | CL | 755 | 0.3663 | 0.4409 | 0.4665 | 0.2938 | 1.126 | 0.9387 | -2.003 | 0.04552 | 0.9772 | 0.7439 | 0.4572 | yes | 0.1396 | yes | 0.7182 | 0 | 1.196 | 0.7737 |
| EN | DL | 755 | 0.3502 | 0.4277 | 0.4245 | 0.3149 | 1.077 | 0.9107 | -0.6778 | 0.4981 | 0.751 | 1.323 | 0.1863 | yes | 0.5224 | yes | 0.7704 | 0 | 1.143 | 0.7694 |
| RF | DL | 755 | 0.3505 | 0.4353 | 0.4467 | 0.3028 | 1.077 | 0.9267 | -1.278 | 0.2015 | 0.8993 | 0.969 | 0.3328 | yes | 0.2218 | yes | 0.7182 | 0 | 1.144 | 0.73 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3473 | 0.8758 | 1 | 1.131 | 0.9542 | 0.9362 | 1.079 | 1.178 | 1.165 | 1.115 | 1.112 |
| High RV (monthly RV > threshold) | 100 | 0.1817 | 1.766 | 1 | 0.7878 | 0.719 | 0.6464 | 0.5269 | 0.581 | 0.633 | 0.5899 | 0.6382 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2681 | 0.6301 | 1 | 1.23 | 0.8751 | 0.8633 | 0.9541 | 1.017 | 1.133 | 0.9471 | 1.042 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7482 | 1.766 | 1 | 0.774 | 1.1 | 1.051 | 1.26 | 1.442 | 1.107 | 1.419 | 1.172 |
| Aug 2015 devaluation | 54 | 0.3513 | 1.937 | 1 | 0.6084 | 0.8217 | 0.6813 | 0.8316 | 0.9291 | 0.7968 | 0.9548 | 0.8702 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.304 | 4 |
| HAR | A | 3.385 | 4 |
| EN | AL | 3.351 | 4 |
| RF | AL | 3.401 | 4 |
| EN | BL | 3.418 | 4 |
| RF | BL | 3.338 | 4 |
| EN | CL | 3.263 | 4 |
| RF | CL | 3.314 | 4 |
| EN | DL | 3.296 | 4 |
| RF | DL | 3.327 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 21.07 | 0.9744 | 24.85 | 1.18 | 0.7192 | 0.0442 | 0.8384 |
| HAR_A | 755 | 18.27 | 1.249 | 24.44 | 1.702 | 0.5007 | 0.2678 | 0.5828 |
| EN_AL | 755 | 16.32 | 0.7133 | 22.04 | 0.9468 | 0.4159 | 0.4453 | 0.4371 |
| RF_AL | 755 | 42.42 | 3.72 | 45.27 | 3.733 | 0.6318 | 0.2576 | 0.7033 |
| EN_BL | 755 | 39.37 | 1.945 | 49.02 | 2.448 | 0.6397 | 0.4269 | 0.7536 |
| RF_BL | 755 | 29.32 | 1.34 | 38.27 | 1.763 | 0.5815 | 0.3399 | 0.6874 |
| EN_CL | 755 | 22.32 | 0.9675 | 30.24 | 1.314 | 0.547 | 0.3467 | 0.6662 |
| RF_CL | 755 | 5.033 | 0.2226 | 11.58 | 0.5154 | 0.4689 | 0.3683 | 0.5457 |
| EN_DL | 755 | 23.62 | 1.052 | 32.25 | 1.455 | 0.5603 | 0.3349 | 0.6768 |
| RF_DL | 755 | 10.7 | 0.4854 | 19.62 | 0.9003 | 0.5099 | 0.3421 | 0.5921 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.03514 | 1 |
| iv_skew_1m | 0.02726 | 1 |
| es_C_m | 0.02644 | 1 |
| vix3m_spread | -0.0245 | 1 |
| iv_term | -0.02397 | 1 |
| es_J_m | 0.0218 | 1 |
| iv_atm_1m | 0.0215 | 1 |
| log_vix | 0.0212 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.05186 |
| es_rsn_w | 0.04574 |
| iv_skew_1m | 0.04098 |
| es_J_m | 0.03832 |
| log_vxn | 0.03531 |
| log_rvx | 0.0326 |
| log_vix | 0.03196 |
| iv_term | 0.03113 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1m | 0 | 0 | 0.05 | 0.3333 | 0.999 |
| EN_DL | iv_atm_3m | 0 | 0.05 | 0.1 | 0.6667 | 0.995 |
| EN_DL | iv_atm_1y | 0.1 | 0.15 | 0.15 | 1 | 0.9794 |
| EN_DL | t10y3m | 0.15 | 0.2 | 0.25 | 1 | 0.9647 |
| EN_DL | dgs10 | 0.15 | 0.2 | 0.25 | 1 | 0.9645 |
| EN_DL | log_rvx | 0 | 0 | 0.1 | 0.3333 | 0.9955 |
| EN_DL | ciss | 0 | 0 | 0.15 | 0.3333 | 0.9914 |
| EN_DL | stlfsi4 | 0 | 0 | 0.05 | 0.3333 | 0.9992 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_DL | 0.6803 | 0.0003683 | yes | yes | 0.7146 | yes | HAR_A EN_AL EN_BL EN_CL EN_DL | NaN | NaN |
| SPY | 5 | RF_DL | 0.9042 | 0.03215 | yes | yes | 0.8389 | no | HAR_A EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | NaN | NaN |
| SPY | 22 | EN_BL | 0.8342 | 0.05154 | yes | no | 0.9437 | no | HAR_A EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | 2.751 | 0.1221 |
| ES | 1 | RF_DL | 0.6159 | 8.783e-05 | yes | yes | 0.6534 | yes | HAR_A EN_AL RF_AL EN_BL EN_CL EN_DL | NaN | NaN |
| ES | 5 | EN_BL | 0.6569 | 3.792e-05 | yes | yes | 0.7344 | yes | HAR_A EN_AL RF_AL RF_BL EN_CL RF_CL EN_DL RF_DL | NaN | NaN |
| ES | 22 | EN_BL | 0.9148 | 0.0479 | yes | yes | 0.9715 | no | HAR_A EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | 49.02 | 0.4269 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.952 | 1.497 | 0.5641 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.05 |
| SPY | 1 | all-model common days | EN | AL | 2.084 | 1.053 | 9.529e-24 | no | 2.189 |
| SPY | 1 | all-model common days | RF | AL | 0.8511 | 1.04 | 0.05032 | no | 0.8939 |
| SPY | 1 | all-model common days | EN | BL | 1.525 | 0.8422 | 0.002246 | no | 1.602 |
| SPY | 1 | all-model common days | RF | BL | 0.6851 | 0.9425 | 0.0001128 | yes | 0.7196 |
| SPY | 1 | all-model common days | EN | CL | 1.645 | 0.8495 | 0.0005724 | no | 1.728 |
| SPY | 1 | all-model common days | RF | CL | 0.7106 | 0.8762 | 0.0004618 | no | 0.7464 |
| SPY | 1 | all-model common days | EN | DL | 0.943 | 0.8748 | 0.6034 | no | 0.9906 |
| SPY | 1 | all-model common days | RF | DL | 0.6803 | 0.823 | 0.0007365 | yes | 0.7146 |
| SPY | 5 | all-model common days | PER | A | 1.078 | 1.313 | 0.5383 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9278 |
| SPY | 5 | all-model common days | EN | AL | 1.901 | 1.089 | 1.033e-06 | no | 1.764 |
| SPY | 5 | all-model common days | RF | AL | 0.9832 | 1.17 | 0.703 | yes | 0.9122 |
| SPY | 5 | all-model common days | EN | BL | 1.095 | 0.8667 | 0.4603 | yes | 1.016 |
| SPY | 5 | all-model common days | RF | BL | 0.9157 | 0.8928 | 0.0971 | yes | 0.8496 |
| SPY | 5 | all-model common days | EN | CL | 1.489 | 0.8589 | 0.0127 | yes | 1.382 |
| SPY | 5 | all-model common days | RF | CL | 1.215 | 0.8733 | 0.0007317 | yes | 1.127 |
| SPY | 5 | all-model common days | EN | DL | 0.907 | 0.7807 | 0.03397 | yes | 0.8415 |
| SPY | 5 | all-model common days | RF | DL | 0.9042 | 0.7885 | 0.06429 | yes | 0.8389 |
| SPY | 22 | all-model common days | PER | A | 0.8839 | 0.9874 | 0.7179 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.131 |
| SPY | 22 | all-model common days | EN | AL | 1.657 | 1.406 | 0.0001298 | no | 1.875 |
| SPY | 22 | all-model common days | RF | AL | 0.9453 | 1.662 | 0.3451 | yes | 1.069 |
| SPY | 22 | all-model common days | EN | BL | 0.8342 | 0.9027 | 0.1031 | yes | 0.9437 |
| SPY | 22 | all-model common days | RF | BL | 1.029 | 1.428 | 0.8252 | yes | 1.164 |
| SPY | 22 | all-model common days | EN | CL | 0.9379 | 0.82 | 0.4488 | yes | 1.061 |
| SPY | 22 | all-model common days | RF | CL | 1.453 | 1.577 | 0.02496 | no | 1.644 |
| SPY | 22 | all-model common days | EN | DL | 1.04 | 0.6972 | 0.7988 | yes | 1.177 |
| SPY | 22 | all-model common days | RF | DL | 1.08 | 0.7108 | 0.3666 | no | 1.222 |
| ES | 1 | all-model common days | PER | A | 0.9427 | 1.238 | 0.4316 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.061 |
| ES | 1 | all-model common days | EN | AL | 1.342 | 1.055 | 5.767e-06 | no | 1.424 |
| ES | 1 | all-model common days | RF | AL | 0.9453 | 0.9335 | 0.2418 | no | 1.003 |
| ES | 1 | all-model common days | EN | BL | 0.8038 | 0.8605 | 0.04468 | yes | 0.8527 |
| ES | 1 | all-model common days | RF | BL | 0.6449 | 0.7241 | 0.0006854 | yes | 0.6842 |
| ES | 1 | all-model common days | EN | CL | 0.8632 | 0.8903 | 0.1336 | no | 0.9157 |
| ES | 1 | all-model common days | RF | CL | 0.6782 | 0.701 | 0.002845 | yes | 0.7194 |
| ES | 1 | all-model common days | EN | DL | 0.756 | 0.8438 | 0.00433 | yes | 0.802 |
| ES | 1 | all-model common days | RF | DL | 0.6159 | 0.7672 | 0.0001757 | yes | 0.6534 |
| ES | 5 | all-model common days | PER | A | 0.8945 | 1.373 | 0.2926 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.118 |
| ES | 5 | all-model common days | EN | AL | 0.9878 | 0.9272 | 0.8849 | no | 1.104 |
| ES | 5 | all-model common days | RF | AL | 0.8716 | 0.9657 | 0.01228 | yes | 0.9743 |
| ES | 5 | all-model common days | EN | BL | 0.6569 | 0.7743 | 7.585e-05 | yes | 0.7344 |
| ES | 5 | all-model common days | RF | BL | 0.8361 | 0.8122 | 0.01133 | yes | 0.9346 |
| ES | 5 | all-model common days | EN | CL | 0.7316 | 0.807 | 0.0003127 | yes | 0.8179 |
| ES | 5 | all-model common days | RF | CL | 0.7974 | 0.8122 | 0.004579 | yes | 0.8914 |
| ES | 5 | all-model common days | EN | DL | 0.7153 | 0.8146 | 9.783e-06 | yes | 0.7997 |
| ES | 5 | all-model common days | RF | DL | 0.7637 | 0.8181 | 3.037e-06 | yes | 0.8537 |
| ES | 22 | all-model common days | PER | A | 0.9416 | 1.336 | 0.8043 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.062 |
| ES | 22 | all-model common days | EN | AL | 1.105 | 0.9494 | 0.181 | yes | 1.174 |
| ES | 22 | all-model common days | RF | AL | 0.9368 | 0.9843 | 0.2198 | yes | 0.9948 |
| ES | 22 | all-model common days | EN | BL | 0.9148 | 0.8359 | 0.09579 | yes | 0.9715 |
| ES | 22 | all-model common days | RF | BL | 1.038 | 0.8913 | 0.6274 | yes | 1.102 |
| ES | 22 | all-model common days | EN | CL | 1.133 | 0.9144 | 0.2818 | yes | 1.204 |
| ES | 22 | all-model common days | RF | CL | 1.126 | 0.9387 | 0.04552 | yes | 1.196 |
| ES | 22 | all-model common days | EN | DL | 1.077 | 0.9107 | 0.4981 | yes | 1.143 |
| ES | 22 | all-model common days | RF | DL | 1.077 | 0.9267 | 0.2015 | yes | 1.144 |

