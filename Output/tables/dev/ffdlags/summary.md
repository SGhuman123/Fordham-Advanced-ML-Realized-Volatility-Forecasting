# Results: dev period, scenario "ffdlags"

Generated 2026-10-16 16:04 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.006527 | 0.952 | 1.497 | 0.577 | 0.5641 | 0.2821 | -0.9708 | 0.3319 | no | 0.0186 | yes | 0.6342 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2537 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0186 | yes | 0.6342 | 0 | 1.05 | 0.7179 |
| EN | AL | 755 | 0.5288 | 0.8818 | 0.4301 | 0.3015 | 2.084 | 1.053 | -10.4 | 9.529e-24 | 1 | -0.5064 | 0.6127 | no | 0 | yes | 0.6342 | 1.06 | 2.189 | 1 |
| RF | AL | 755 | 0.216 | 0.8711 | 0.2129 | 0.31 | 0.8511 | 1.04 | 1.96 | 0.05032 | 0.02516 | -0.6476 | 0.5174 | no | 0.0186 | yes | 0.6342 | 0 | 0.8939 | 0.01498 |
| EN | BL | 755 | 0.387 | 0.7054 | 0.2431 | 0.4412 | 1.525 | 0.8422 | -3.066 | 0.002246 | 0.9989 | 0.9117 | 0.3622 | no | 0.0024 | yes | 1 | 9.669 | 1.602 | 1 |
| RF | BL | 755 | 0.1744 | 0.8185 | 0.1885 | 0.3516 | 0.6875 | 0.9772 | 3.966 | 8.004e-05 | 4.002e-05 | 0.5356 | 0.5924 | yes | 0.7524 | yes | 0.6654 | 0 | 0.7221 | 3.032e-08 |
| EN | CL | 755 | 0.4174 | 0.7115 | 0.2501 | 0.4364 | 1.645 | 0.8495 | -3.459 | 0.0005724 | 0.9997 | 0.8955 | 0.3708 | no | 0.0014 | yes | 0.9254 | 10.46 | 1.728 | 1 |
| RF | CL | 755 | 0.1738 | 0.7095 | 0.1776 | 0.438 | 0.6847 | 0.8471 | 3.696 | 0.0002347 | 0.0001174 | 1.25 | 0.2116 | yes | 1 | yes | 0.9254 | 0 | 0.7193 | 1.728e-07 |
| EN | DL | 755 | 0.2369 | 0.736 | 0.1903 | 0.417 | 0.9337 | 0.8787 | 0.6551 | 0.5126 | 0.2563 | 1.239 | 0.2156 | no | 0.0186 | yes | 0.7252 | 1.987 | 0.9808 | 0.4114 |
| RF | DL | 755 | 0.1779 | 0.7094 | 0.1864 | 0.438 | 0.7009 | 0.847 | 3.402 | 0.0007037 | 0.0003519 | 1.067 | 0.2863 | yes | 0.3716 | yes | 0.9254 | 0 | 0.7363 | 5.239e-06 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2618 | 0.9412 | 1 | 2.141 | 0.8367 | 1.556 | 0.6768 | 1.682 | 0.6755 | 0.9476 | 0.6835 |
| High RV (monthly RV > threshold) | 62 | 0.1643 | 1.145 | 1 | 1.061 | 1.106 | 0.9789 | 0.877 | 0.9879 | 0.8487 | 0.6868 | 1.011 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2184 | 0.9515 | 1 | 2.572 | 0.8714 | 1.85 | 0.7061 | 2.006 | 0.7101 | 1.042 | 0.7492 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5739 | 0.9539 | 1 | 0.3978 | 0.7808 | 0.4054 | 0.6231 | 0.3977 | 0.5972 | 0.5615 | 0.5345 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.7496 | 0.6113 | 0.4681 | 0.5108 | 0.4852 | 0.4767 | 0.6015 | 0.5205 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.509 | 4 |
| EN | AL | 3.153 | 4 |
| RF | AL | 3.589 | 4 |
| EN | BL | 3.151 | 4 |
| RF | BL | 3.658 | 4 |
| EN | CL | 3.079 | 4 |
| RF | CL | 3.661 | 4 |
| EN | DL | 3.492 | 4 |
| RF | DL | 3.659 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06325 | 1 |
| vix9d_spread | 0.05865 | 1 |
| es_rsn_d | 0.04894 | 1 |
| vrp | 0.0471 | 1 |
| es_rk_d | 0.04349 | 1 |
| negret_d | -0.04094 | 1 |
| negret_w | -0.03776 | 1 |
| es_C_d | 0.03612 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_C_d | 0.1278 |
| negret_w | 0.1276 |
| iv_term | 0.09408 |
| log_rv | 0.07071 |
| es_rsn_d | 0.06949 |
| iv_skew_1m | 0.05357 |
| log_vxn | 0.05275 |
| log_rvx | 0.03808 |

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
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3184 | 1.078 | 1.313 | -0.6157 | 0.5383 | 0.7309 | -1.05 | 0.2941 | yes | 0.7636 | yes | 0.6324 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7636 | yes | 0.6796 | 0 | 0.9278 | 0.2691 |
| EN | AL | 755 | 0.4994 | 0.4067 | 0.4069 | 0.4346 | 1.901 | 1.089 | -4.926 | 1.033e-06 | 1 | -0.3575 | 0.7208 | no | 0.0002 | yes | 0.6324 | 4.371 | 1.764 | 0.9997 |
| RF | AL | 755 | 0.2582 | 0.4368 | 0.2343 | 0.3927 | 0.9832 | 1.17 | 0.3814 | 0.703 | 0.3515 | -1.397 | 0.1627 | yes | 0.7636 | yes | 0.582 | 0 | 0.9122 | 0.2331 |
| EN | BL | 755 | 0.2877 | 0.3236 | 0.2706 | 0.5501 | 1.095 | 0.8667 | -0.7388 | 0.4603 | 0.7699 | 0.6068 | 0.5441 | yes | 0.7636 | yes | 0.7314 | 1.325 | 1.016 | 0.5379 |
| RF | BL | 755 | 0.2252 | 0.325 | 0.1984 | 0.5481 | 0.8573 | 0.8705 | 2.822 | 0.004904 | 0.002452 | 1.064 | 0.2875 | yes | 1 | yes | 0.77 | 0 | 0.7954 | 0.03326 |
| EN | CL | 755 | 0.3911 | 0.3207 | 0.2714 | 0.5541 | 1.489 | 0.8589 | -2.498 | 0.0127 | 0.9937 | 0.6461 | 0.5184 | no | 0.0812 | yes | 0.77 | 5.695 | 1.382 | 0.9716 |
| RF | CL | 755 | 0.2681 | 0.3146 | 0.2172 | 0.5626 | 1.021 | 0.8427 | -0.3547 | 0.7229 | 0.6385 | 1.012 | 0.3117 | yes | 0.7636 | yes | 0.77 | 0 | 0.9471 | 0.3276 |
| EN | DL | 755 | 0.2342 | 0.2918 | 0.198 | 0.5943 | 0.8917 | 0.7815 | 2.496 | 0.01278 | 0.006389 | 1.168 | 0.243 | yes | 0.7636 | yes | 1 | 0 | 0.8274 | 0.08338 |
| RF | DL | 755 | 0.2423 | 0.2945 | 0.2022 | 0.5905 | 0.9226 | 0.7889 | 1.532 | 0.1259 | 0.06297 | 1.066 | 0.2869 | yes | 0.7636 | yes | 0.77 | 0 | 0.856 | 0.0996 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2747 | 1.073 | 1 | 1.946 | 0.9718 | 1.093 | 0.8494 | 1.506 | 1.022 | 0.9021 | 0.9266 |
| High RV (monthly RV > threshold) | 62 | 0.1276 | 1.192 | 1 | 0.8391 | 1.258 | 1.147 | 1.047 | 1.072 | 0.9821 | 0.6416 | 0.8266 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2033 | 0.945 | 1 | 2.535 | 0.9371 | 1.319 | 0.7507 | 1.887 | 0.9727 | 0.8777 | 0.8602 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.8005 | 1.384 | 1 | 0.4425 | 1.089 | 0.5802 | 1.103 | 0.572 | 1.132 | 0.924 | 1.066 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 0.5572 | 0.9972 | 0.6548 | 1.056 | 0.6587 | 1.076 | 0.8644 | 1.044 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.47 | 4 |
| EN | AL | 3.084 | 4 |
| RF | AL | 3.465 | 4 |
| EN | BL | 3.433 | 4 |
| RF | BL | 3.512 | 4 |
| EN | CL | 3.157 | 4 |
| RF | CL | 3.443 | 4 |
| EN | DL | 3.518 | 4 |
| RF | DL | 3.488 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.03026 | 1 |
| negret_w | -0.02984 | 1 |
| iv_skew_1m | 0.02884 | 1 |
| vrp | 0.0245 | 1 |
| iv_atm_1m | 0.02369 | 1 |
| parkinson_d | 0.02169 | 1 |
| parkinson_w | 0.0205 | 1 |
| log_rv | 0.01998 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.07998 |
| iv_skew_1m | 0.06674 |
| es_rsn_d | 0.05523 |
| log_vxn | 0.0537 |
| log_rvx | 0.05064 |
| iv_atm_1m | 0.05044 |
| es_rsn_w | 0.04789 |
| es_C_d | 0.04399 |

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
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.5782 | 0.8839 | 0.9874 | 0.3614 | 0.7179 | 0.359 | 0.08394 | 0.9331 | yes | 1 | yes | 0.6896 | 0 | 1 | NaN |
| HAR | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7882 | yes | 0.6896 | 0 | 1.131 | 0.641 |
| EN | AL | 755 | 0.5252 | 0.3081 | 0.4959 | 0.3995 | 1.657 | 1.406 | -3.847 | 0.0001298 | 0.9999 | -1.044 | 0.297 | no | 0.0236 | yes | 0.3858 | 0 | 1.875 | 0.944 |
| RF | AL | 755 | 0.2996 | 0.3643 | 0.2951 | 0.2901 | 0.9453 | 1.662 | 0.9447 | 0.3451 | 0.1726 | -1.573 | 0.1161 | yes | 0.88 | yes | 0.3858 | 0 | 1.069 | 0.5885 |
| EN | BL | 755 | 0.3409 | 0.1965 | 0.3008 | 0.6172 | 1.076 | 0.8963 | -0.6976 | 0.4856 | 0.7572 | 0.4622 | 0.6441 | yes | 0.782 | yes | 0.6896 | 2.914 | 1.217 | 0.6988 |
| RF | BL | 755 | 0.3004 | 0.2735 | 0.2675 | 0.467 | 0.9477 | 1.248 | 0.3712 | 0.7106 | 0.3553 | -0.9329 | 0.3512 | yes | 0.859 | yes | 0.6484 | 0 | 1.072 | 0.627 |
| EN | CL | 755 | 0.2973 | 0.1797 | 0.2933 | 0.6498 | 0.9379 | 0.82 | 0.7579 | 0.4488 | 0.2244 | 0.7453 | 0.4563 | yes | 0.88 | yes | 0.6896 | 0.5298 | 1.061 | 0.5642 |
| RF | CL | 755 | 0.4371 | 0.3496 | 0.4309 | 0.3188 | 1.379 | 1.595 | -1.868 | 0.06217 | 0.9689 | -1.41 | 0.159 | yes | 0.253 | yes | 0.2892 | 0 | 1.56 | 0.8696 |
| EN | DL | 755 | 0.3277 | 0.1524 | 0.2457 | 0.7031 | 1.034 | 0.6951 | -0.2202 | 0.8258 | 0.5871 | 1.268 | 0.2054 | yes | 0.782 | yes | 1 | 0 | 1.17 | 0.7777 |
| RF | DL | 755 | 0.3434 | 0.1563 | 0.2672 | 0.6955 | 1.084 | 0.7129 | -0.839 | 0.4017 | 0.7991 | 1.141 | 0.2543 | yes | 0.253 | yes | 0.6896 | 0 | 1.226 | 0.7839 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3271 | 0.8501 | 1 | 1.699 | 0.9374 | 1.074 | 0.9456 | 0.9373 | 1.426 | 1.072 | 1.119 |
| High RV (monthly RV > threshold) | 62 | 0.2035 | 1.491 | 1 | 0.9022 | 1.088 | 1.101 | 0.9865 | 0.9502 | 0.5343 | 0.3482 | 0.4511 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.2782 | 0.4056 | 1 | 2.033 | 0.8301 | 1.175 | 0.7267 | 0.9859 | 1.575 | 0.8195 | 0.9695 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5894 | 2.472 | 1 | 0.4098 | 1.328 | 0.7458 | 1.681 | 0.7788 | 0.7292 | 1.746 | 1.462 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 0.7889 | 0.9989 | 0.853 | 1.129 | 0.8719 | 0.6776 | 0.992 | 0.8919 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.419 | 4 |
| EN | AL | 3.167 | 4 |
| RF | AL | 3.426 | 4 |
| EN | BL | 3.311 | 4 |
| RF | BL | 3.389 | 4 |
| EN | CL | 3.431 | 4 |
| RF | CL | 3.288 | 4 |
| EN | DL | 3.329 | 4 |
| RF | DL | 3.334 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.08539 | 0.4252 |
| EN_AL | 755 | -27.02 | -0.9927 | -31.67 | -1.221 | 0.2066 | 0.3477 | 0.1272 |
| RF_AL | 755 | 30.38 | 2.567 | 26.07 | 2.322 | 0.5709 | -0.08828 | 0.6477 |
| EN_BL | 755 | 20.81 | 0.9542 | 6.732 | 0.318 | 0.5298 | 0.09188 | 0.506 |
| RF_BL | 755 | 34.76 | 1.41 | 32.69 | 1.421 | 0.6728 | -0.1472 | 0.7762 |
| EN_CL | 755 | 39.18 | 1.9 | 24.41 | 1.197 | 0.5444 | 0.2562 | 0.5417 |
| RF_CL | 755 | 47.46 | 1.887 | 46.54 | 1.862 | 0.5325 | 0.2016 | 0.4874 |
| EN_DL | 755 | 32.84 | 1.464 | 31.54 | 1.488 | 0.5735 | 0.3741 | 0.6689 |
| RF_DL | 755 | 19.38 | 0.8502 | 16.63 | 0.7583 | 0.4914 | 0.3726 | 0.5841 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01952 | 1 |
| iv_skew_1m | 0.01527 | 1 |
| es_C_m | 0.01445 | 1 |
| iv_term | -0.01377 | 1 |
| es_J_m | 0.01263 | 1 |
| vix9d_spread | 0.01233 | 1 |
| log_rv | 0.01222 | 1 |
| parkinson_w | 0.0121 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_rsn_w | 0.04244 |
| news_sent | 0.03862 |
| es_C_w | 0.03776 |
| iv_skew_1m | 0.03664 |
| es_C_d | 0.03655 |
| log_vxn | 0.03608 |
| es_rsn_d | 0.03525 |
| iv_atm_1m | 0.03488 |

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
| PER | A | 755 | 0.2045 | 1.936 | 0.3236 | 0.09341 | 0.9427 | 1.238 | 0.7869 | 0.4316 | 0.2158 | -1.147 | 0.2518 | yes | 0.1122 | yes | 0.3566 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2169 | 1.564 | 0.3356 | 0.2678 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0118 | yes | 0.3566 | 0 | 1.061 | 0.7842 |
| EN | AL | 755 | 0.2911 | 1.65 | 0.434 | 0.2272 | 1.342 | 1.055 | -4.567 | 5.767e-06 | 1 | -1.753 | 0.08007 | no | 0 | yes | 0.1742 | 6.49 | 1.424 | 0.9999 |
| RF | AL | 755 | 0.2051 | 1.46 | 0.3209 | 0.3165 | 0.9453 | 0.9335 | 1.171 | 0.2418 | 0.1209 | 0.5343 | 0.5933 | no | 0.048 | yes | 0.2792 | 0 | 1.003 | 0.5235 |
| EN | BL | 755 | 0.1755 | 1.361 | 0.3347 | 0.3628 | 0.809 | 0.8702 | 2.102 | 0.0359 | 0.01795 | 0.9566 | 0.3391 | yes | 0.1122 | yes | 0.3566 | 1.589 | 0.8582 | 0.1329 |
| RF | BL | 755 | 0.138 | 1.108 | 0.2832 | 0.4814 | 0.6362 | 0.7083 | 3.606 | 0.0003319 | 0.0001659 | 1.115 | 0.2652 | yes | 1 | yes | 1 | 0 | 0.6749 | 0.01162 |
| EN | CL | 755 | 0.1918 | 1.411 | 0.3495 | 0.3393 | 0.884 | 0.9023 | 1.383 | 0.167 | 0.08349 | 0.8198 | 0.4126 | no | 0.0162 | yes | 0.3566 | 1.589 | 0.9378 | 0.3045 |
| RF | CL | 755 | 0.1397 | 1.176 | 0.2868 | 0.4494 | 0.644 | 0.752 | 3.675 | 0.0002551 | 0.0001276 | 1.134 | 0.2574 | yes | 0.5242 | yes | 0.3566 | 0 | 0.6832 | 0.01224 |
| EN | DL | 755 | 0.1608 | 1.316 | 0.3087 | 0.384 | 0.7413 | 0.8413 | 3.055 | 0.002327 | 0.001163 | 1.167 | 0.2435 | yes | 0.1178 | yes | 0.3566 | 0.2649 | 0.7864 | 0.04708 |
| RF | DL | 755 | 0.1542 | 1.221 | 0.2929 | 0.4282 | 0.7108 | 0.7809 | 3.443 | 0.0006078 | 0.0003039 | 1.098 | 0.2725 | yes | 0.1178 | yes | 0.3566 | 0 | 0.7541 | 0.02574 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2328 | 0.9324 | 1 | 1.308 | 0.929 | 0.7974 | 0.6229 | 0.8684 | 0.6317 | 0.7345 | 0.6997 |
| High RV (monthly RV > threshold) | 100 | 0.1132 | 1.081 | 1 | 1.804 | 1.164 | 0.9657 | 0.8149 | 1.095 | 0.8093 | 0.8333 | 0.8607 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.1765 | 0.8501 | 1 | 1.455 | 0.8889 | 0.9241 | 0.7312 | 0.9903 | 0.727 | 0.8305 | 0.7774 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.5401 | 1.184 | 1 | 1.047 | 1.093 | 0.5085 | 0.3883 | 0.6067 | 0.4274 | 0.5083 | 0.5372 |
| Aug 2015 devaluation | 54 | 0.3909 | 0.9307 | 1 | 1.361 | 0.8519 | 0.5642 | 0.4138 | 0.6304 | 0.4454 | 0.6786 | 0.4882 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.521 | 4 |
| HAR | A | 3.562 | 4 |
| EN | AL | 3.428 | 4 |
| RF | AL | 3.569 | 4 |
| EN | BL | 3.659 | 4 |
| RF | BL | 3.737 | 4 |
| EN | CL | 3.628 | 4 |
| RF | CL | 3.731 | 4 |
| EN | DL | 3.684 | 4 |
| RF | DL | 3.702 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix9d_spread | 0.0801 | 1 |
| es_rsn_d | 0.07861 | 1 |
| parkinson_d | 0.07237 | 1 |
| es_rk_d | 0.06773 | 1 |
| es_C_d | 0.067 | 1 |
| negret_d | -0.05239 | 1 |
| overnight_d | 0.05199 | 1 |
| iv_term | -0.05111 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_rsn_d | 0.1247 |
| vix9d_spread | 0.1101 |
| negret_w | 0.07881 |
| vrp | 0.07648 |
| es_rk_d | 0.06679 |
| log_rvx | 0.06226 |
| log_rv | 0.0605 |
| es_C_d | 0.05972 |

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
| PER | A | 755 | 0.2615 | 1.148 | 0.3768 | -0.004448 | 0.8945 | 1.373 | 1.053 | 0.2926 | 0.1463 | -1.216 | 0.2245 | yes | 0.3664 | yes | 0.4418 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2923 | 0.8363 | 0.3962 | 0.2685 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.011 | yes | 0.4418 | 0 | 1.118 | 0.8537 |
| EN | AL | 755 | 0.2887 | 0.7754 | 0.4302 | 0.3217 | 0.9878 | 0.9272 | 0.1449 | 0.8849 | 0.4424 | 0.6634 | 0.5073 | no | 0.0502 | yes | 0.4418 | 3.179 | 1.104 | 0.7519 |
| RF | AL | 755 | 0.2548 | 0.8076 | 0.3661 | 0.2936 | 0.8716 | 0.9657 | 2.51 | 0.01228 | 0.00614 | 0.3351 | 0.7377 | yes | 0.1464 | yes | 0.4418 | 0 | 0.9743 | 0.3951 |
| EN | BL | 755 | 0.1996 | 0.6571 | 0.3274 | 0.4252 | 0.6827 | 0.7857 | 3.492 | 0.000507 | 0.0002535 | 1.435 | 0.1516 | yes | 1 | yes | 1 | 0.6623 | 0.7632 | 0.05424 |
| RF | BL | 755 | 0.237 | 0.6599 | 0.3356 | 0.4228 | 0.811 | 0.789 | 2.722 | 0.006645 | 0.003322 | 1.324 | 0.186 | yes | 0.3664 | yes | 0.9146 | 0 | 0.9066 | 0.244 |
| EN | CL | 755 | 0.2157 | 0.6818 | 0.3468 | 0.4036 | 0.738 | 0.8152 | 3.628 | 0.0003046 | 0.0001523 | 1.357 | 0.1751 | yes | 0.3664 | yes | 0.6544 | 0 | 0.825 | 0.1102 |
| RF | CL | 755 | 0.2568 | 0.6928 | 0.3611 | 0.394 | 0.8787 | 0.8284 | 1.814 | 0.07011 | 0.03505 | 1.259 | 0.2084 | yes | 0.1464 | yes | 0.4588 | 0 | 0.9822 | 0.4474 |
| EN | DL | 755 | 0.2086 | 0.6865 | 0.3338 | 0.3995 | 0.7138 | 0.8208 | 4.388 | 1.308e-05 | 6.54e-06 | 1.459 | 0.1449 | yes | 0.751 | yes | 0.6364 | 0 | 0.798 | 0.05825 |
| RF | DL | 755 | 0.2148 | 0.6892 | 0.3197 | 0.3971 | 0.7347 | 0.8241 | 5.138 | 3.542e-07 | 1.771e-07 | 1.326 | 0.1854 | yes | 0.751 | yes | 0.6544 | 0 | 0.8213 | 0.05168 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3199 | 0.8882 | 1 | 0.9777 | 0.8681 | 0.6754 | 0.8183 | 0.7309 | 0.888 | 0.7104 | 0.7346 |
| High RV (monthly RV > threshold) | 100 | 0.1117 | 1.014 | 1 | 1.177 | 0.9368 | 0.8202 | 0.6733 | 0.8715 | 0.7031 | 0.7778 | 0.7366 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2185 | 0.683 | 1 | 1.141 | 0.7518 | 0.7191 | 0.7801 | 0.7646 | 0.8852 | 0.7107 | 0.643 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.8375 | 1.302 | 1 | 0.6917 | 1.102 | 0.6125 | 0.8705 | 0.6868 | 0.866 | 0.7198 | 0.9114 |
| Aug 2015 devaluation | 54 | 0.9256 | 1.179 | 1 | 0.7054 | 1.059 | 0.7113 | 1.062 | 0.7854 | 1.035 | 0.8212 | 0.9958 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.386 | 4 |
| HAR | A | 3.409 | 4 |
| EN | AL | 3.437 | 4 |
| RF | AL | 3.448 | 4 |
| EN | BL | 3.582 | 4 |
| RF | BL | 3.499 | 4 |
| EN | CL | 3.562 | 4 |
| RF | CL | 3.471 | 4 |
| EN | DL | 3.568 | 4 |
| RF | DL | 3.534 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.05252 | 1 |
| iv_atm_1m | 0.04357 | 1 |
| iv_skew_1m | 0.04041 | 1 |
| negret_w | -0.04011 | 1 |
| vix9d_spread | 0.03966 | 1 |
| es_rsn_d | 0.03565 | 1 |
| log_vxn | 0.03454 | 1 |
| parkinson_d | 0.03381 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.107 |
| log_vxn | 0.09583 |
| iv_atm_1m | 0.07559 |
| iv_skew_1m | 0.071 |
| parkinson_w | 0.06531 |
| log_vix | 0.06014 |
| es_rsn_w | 0.05719 |
| es_rsn_d | 0.05641 |

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
| PER | A | 755 | 0.3064 | 0.6277 | 0.4368 | -0.005359 | 0.9416 | 1.336 | 0.2479 | 0.8043 | 0.4022 | -1.422 | 0.1554 | yes | 0.9834 | yes | 0.3652 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3253 | 0.4697 | 0.4715 | 0.2477 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5956 | yes | 0.7572 | 0 | 1.062 | 0.5978 |
| EN | AL | 755 | 0.3596 | 0.4459 | 0.4939 | 0.2858 | 1.105 | 0.9494 | -1.339 | 0.181 | 0.9095 | 0.3543 | 0.7232 | yes | 0.4996 | yes | 0.8384 | 0.1325 | 1.174 | 0.7045 |
| RF | AL | 755 | 0.3048 | 0.4623 | 0.4349 | 0.2595 | 0.9368 | 0.9843 | 1.228 | 0.2198 | 0.1099 | 0.1818 | 0.8558 | yes | 0.9834 | yes | 0.7572 | 0 | 0.9948 | 0.4911 |
| EN | BL | 755 | 0.2963 | 0.3905 | 0.4089 | 0.3745 | 0.9107 | 0.8314 | 1.824 | 0.0685 | 0.03425 | 1.88 | 0.06045 | yes | 1 | yes | 1 | 0 | 0.9672 | 0.4438 |
| RF | BL | 755 | 0.3416 | 0.4474 | 0.4361 | 0.2835 | 1.05 | 0.9525 | -0.5864 | 0.5578 | 0.7211 | 0.7816 | 0.4347 | yes | 0.4898 | yes | 0.8384 | 0 | 1.115 | 0.7047 |
| EN | CL | 755 | 0.3296 | 0.4069 | 0.4159 | 0.3482 | 1.013 | 0.8664 | -0.1555 | 0.8765 | 0.5618 | 1.584 | 0.1136 | yes | 0.4996 | yes | 0.8384 | 0 | 1.076 | 0.641 |
| RF | CL | 755 | 0.3654 | 0.4345 | 0.4684 | 0.3041 | 1.123 | 0.925 | -2.072 | 0.03859 | 0.9807 | 0.8161 | 0.4147 | yes | 0.1888 | yes | 0.8384 | 0 | 1.193 | 0.7603 |
| EN | DL | 755 | 0.3688 | 0.4404 | 0.4429 | 0.2945 | 1.134 | 0.9377 | -1.224 | 0.2213 | 0.8893 | 0.8888 | 0.3744 | yes | 0.1888 | yes | 0.8384 | 0 | 1.204 | 0.8312 |
| RF | DL | 755 | 0.3529 | 0.4298 | 0.444 | 0.3115 | 1.085 | 0.9152 | -1.297 | 0.195 | 0.9025 | 1.129 | 0.2593 | yes | 0.152 | yes | 0.8384 | 0 | 1.152 | 0.7431 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3473 | 0.8758 | 1 | 1.131 | 0.9542 | 0.9307 | 1.086 | 1.046 | 1.163 | 1.176 | 1.122 |
| High RV (monthly RV > threshold) | 100 | 0.1817 | 1.766 | 1 | 0.7878 | 0.719 | 0.6603 | 0.602 | 0.6038 | 0.6216 | 0.6023 | 0.6164 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2681 | 0.6301 | 1 | 1.23 | 0.8751 | 0.8646 | 0.9409 | 0.9223 | 1.154 | 1.035 | 1.043 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7482 | 1.766 | 1 | 0.774 | 1.1 | 1.033 | 1.339 | 1.253 | 1.041 | 1.394 | 1.197 |
| Aug 2015 devaluation | 54 | 0.3513 | 1.937 | 1 | 0.6084 | 0.8217 | 0.7003 | 0.947 | 0.8511 | 0.7786 | 0.9787 | 0.8925 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.304 | 4 |
| HAR | A | 3.385 | 4 |
| EN | AL | 3.351 | 4 |
| RF | AL | 3.401 | 4 |
| EN | BL | 3.422 | 4 |
| RF | BL | 3.324 | 4 |
| EN | CL | 3.347 | 4 |
| RF | CL | 3.322 | 4 |
| EN | DL | 3.272 | 4 |
| RF | DL | 3.321 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 21.07 | 0.9744 | 24.85 | 1.18 | 0.7192 | 0.0442 | 0.8384 |
| HAR_A | 755 | 18.27 | 1.249 | 24.44 | 1.702 | 0.5007 | 0.2678 | 0.5828 |
| EN_AL | 755 | 16.32 | 0.7133 | 22.04 | 0.9468 | 0.4159 | 0.4453 | 0.4371 |
| RF_AL | 755 | 42.42 | 3.72 | 45.27 | 3.733 | 0.6318 | 0.2576 | 0.7033 |
| EN_BL | 755 | 41.78 | 2.173 | 50.91 | 2.686 | 0.6411 | 0.4366 | 0.7523 |
| RF_BL | 755 | 18.59 | 0.8858 | 27.41 | 1.327 | 0.5682 | 0.2699 | 0.6662 |
| EN_CL | 755 | 28.71 | 1.361 | 36.71 | 1.756 | 0.5801 | 0.3971 | 0.6914 |
| RF_CL | 755 | 6.074 | 0.2784 | 12.56 | 0.5741 | 0.4675 | 0.3789 | 0.5497 |
| EN_DL | 755 | 17.3 | 0.7637 | 24.96 | 1.106 | 0.5258 | 0.3283 | 0.6424 |
| RF_DL | 755 | 12.15 | 0.5548 | 20.41 | 0.9443 | 0.5113 | 0.3475 | 0.604 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_skew_1m | 0.0328 | 1 |
| news_sent | -0.03196 | 1 |
| es_C_m | 0.02854 | 1 |
| iv_term | -0.02816 | 1 |
| iv_atm_1m | 0.02648 | 1 |
| log_vix | 0.02445 | 1 |
| parkinson_w | 0.02399 | 1 |
| log_vxn | 0.02309 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.05561 |
| iv_skew_1m | 0.04714 |
| log_vxn | 0.04259 |
| es_rsn_w | 0.04224 |
| es_J_m | 0.04137 |
| es_C_d | 0.0391 |
| es_rsn_d | 0.03634 |
| iv_atm_3m | 0.03557 |

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
| SPY | 1 | RF_CL | 0.6847 | 0.0001174 | yes | yes | 0.7193 | yes | HAR_A EN_AL EN_BL EN_CL EN_DL | NaN | NaN |
| SPY | 5 | RF_BL | 0.8573 | 0.002452 | yes | yes | 0.7954 | yes | HAR_A EN_AL RF_AL EN_BL EN_CL RF_CL EN_DL RF_DL | NaN | NaN |
| SPY | 22 | EN_CL | 0.9379 | 0.2244 | yes | no | 1.061 | no | HAR_A EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | 24.41 | 0.2562 |
| ES | 1 | RF_BL | 0.6362 | 0.0001659 | yes | yes | 0.6749 | yes | HAR_A EN_AL RF_AL EN_BL EN_CL | NaN | NaN |
| ES | 5 | EN_BL | 0.6827 | 0.0002535 | yes | yes | 0.7632 | no | HAR_A EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | NaN | NaN |
| ES | 22 | EN_BL | 0.9107 | 0.03425 | yes | yes | 0.9672 | no | HAR_A EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | 50.91 | 0.4366 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.952 | 1.497 | 0.5641 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.05 |
| SPY | 1 | all-model common days | EN | AL | 2.084 | 1.053 | 9.529e-24 | no | 2.189 |
| SPY | 1 | all-model common days | RF | AL | 0.8511 | 1.04 | 0.05032 | no | 0.8939 |
| SPY | 1 | all-model common days | EN | BL | 1.525 | 0.8422 | 0.002246 | no | 1.602 |
| SPY | 1 | all-model common days | RF | BL | 0.6875 | 0.9772 | 8.004e-05 | yes | 0.7221 |
| SPY | 1 | all-model common days | EN | CL | 1.645 | 0.8495 | 0.0005724 | no | 1.728 |
| SPY | 1 | all-model common days | RF | CL | 0.6847 | 0.8471 | 0.0002347 | yes | 0.7193 |
| SPY | 1 | all-model common days | EN | DL | 0.9337 | 0.8787 | 0.5126 | no | 0.9808 |
| SPY | 1 | all-model common days | RF | DL | 0.7009 | 0.847 | 0.0007037 | yes | 0.7363 |
| SPY | 5 | all-model common days | PER | A | 1.078 | 1.313 | 0.5383 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9278 |
| SPY | 5 | all-model common days | EN | AL | 1.901 | 1.089 | 1.033e-06 | no | 1.764 |
| SPY | 5 | all-model common days | RF | AL | 0.9832 | 1.17 | 0.703 | yes | 0.9122 |
| SPY | 5 | all-model common days | EN | BL | 1.095 | 0.8667 | 0.4603 | yes | 1.016 |
| SPY | 5 | all-model common days | RF | BL | 0.8573 | 0.8705 | 0.004904 | yes | 0.7954 |
| SPY | 5 | all-model common days | EN | CL | 1.489 | 0.8589 | 0.0127 | no | 1.382 |
| SPY | 5 | all-model common days | RF | CL | 1.021 | 0.8427 | 0.7229 | yes | 0.9471 |
| SPY | 5 | all-model common days | EN | DL | 0.8917 | 0.7815 | 0.01278 | yes | 0.8274 |
| SPY | 5 | all-model common days | RF | DL | 0.9226 | 0.7889 | 0.1259 | yes | 0.856 |
| SPY | 22 | all-model common days | PER | A | 0.8839 | 0.9874 | 0.7179 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.131 |
| SPY | 22 | all-model common days | EN | AL | 1.657 | 1.406 | 0.0001298 | no | 1.875 |
| SPY | 22 | all-model common days | RF | AL | 0.9453 | 1.662 | 0.3451 | yes | 1.069 |
| SPY | 22 | all-model common days | EN | BL | 1.076 | 0.8963 | 0.4856 | yes | 1.217 |
| SPY | 22 | all-model common days | RF | BL | 0.9477 | 1.248 | 0.7106 | yes | 1.072 |
| SPY | 22 | all-model common days | EN | CL | 0.9379 | 0.82 | 0.4488 | yes | 1.061 |
| SPY | 22 | all-model common days | RF | CL | 1.379 | 1.595 | 0.06217 | yes | 1.56 |
| SPY | 22 | all-model common days | EN | DL | 1.034 | 0.6951 | 0.8258 | yes | 1.17 |
| SPY | 22 | all-model common days | RF | DL | 1.084 | 0.7129 | 0.4017 | yes | 1.226 |
| ES | 1 | all-model common days | PER | A | 0.9427 | 1.238 | 0.4316 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.061 |
| ES | 1 | all-model common days | EN | AL | 1.342 | 1.055 | 5.767e-06 | no | 1.424 |
| ES | 1 | all-model common days | RF | AL | 0.9453 | 0.9335 | 0.2418 | no | 1.003 |
| ES | 1 | all-model common days | EN | BL | 0.809 | 0.8702 | 0.0359 | yes | 0.8582 |
| ES | 1 | all-model common days | RF | BL | 0.6362 | 0.7083 | 0.0003319 | yes | 0.6749 |
| ES | 1 | all-model common days | EN | CL | 0.884 | 0.9023 | 0.167 | no | 0.9378 |
| ES | 1 | all-model common days | RF | CL | 0.644 | 0.752 | 0.0002551 | yes | 0.6832 |
| ES | 1 | all-model common days | EN | DL | 0.7413 | 0.8413 | 0.002327 | yes | 0.7864 |
| ES | 1 | all-model common days | RF | DL | 0.7108 | 0.7809 | 0.0006078 | yes | 0.7541 |
| ES | 5 | all-model common days | PER | A | 0.8945 | 1.373 | 0.2926 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.118 |
| ES | 5 | all-model common days | EN | AL | 0.9878 | 0.9272 | 0.8849 | no | 1.104 |
| ES | 5 | all-model common days | RF | AL | 0.8716 | 0.9657 | 0.01228 | yes | 0.9743 |
| ES | 5 | all-model common days | EN | BL | 0.6827 | 0.7857 | 0.000507 | yes | 0.7632 |
| ES | 5 | all-model common days | RF | BL | 0.811 | 0.789 | 0.006645 | yes | 0.9066 |
| ES | 5 | all-model common days | EN | CL | 0.738 | 0.8152 | 0.0003046 | yes | 0.825 |
| ES | 5 | all-model common days | RF | CL | 0.8787 | 0.8284 | 0.07011 | yes | 0.9822 |
| ES | 5 | all-model common days | EN | DL | 0.7138 | 0.8208 | 1.308e-05 | yes | 0.798 |
| ES | 5 | all-model common days | RF | DL | 0.7347 | 0.8241 | 3.542e-07 | yes | 0.8213 |
| ES | 22 | all-model common days | PER | A | 0.9416 | 1.336 | 0.8043 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.062 |
| ES | 22 | all-model common days | EN | AL | 1.105 | 0.9494 | 0.181 | yes | 1.174 |
| ES | 22 | all-model common days | RF | AL | 0.9368 | 0.9843 | 0.2198 | yes | 0.9948 |
| ES | 22 | all-model common days | EN | BL | 0.9107 | 0.8314 | 0.0685 | yes | 0.9672 |
| ES | 22 | all-model common days | RF | BL | 1.05 | 0.9525 | 0.5578 | yes | 1.115 |
| ES | 22 | all-model common days | EN | CL | 1.013 | 0.8664 | 0.8765 | yes | 1.076 |
| ES | 22 | all-model common days | RF | CL | 1.123 | 0.925 | 0.03859 | yes | 1.193 |
| ES | 22 | all-model common days | EN | DL | 1.134 | 0.9377 | 0.2213 | yes | 1.204 |
| ES | 22 | all-model common days | RF | DL | 1.085 | 0.9152 | 0.195 | yes | 1.152 |

