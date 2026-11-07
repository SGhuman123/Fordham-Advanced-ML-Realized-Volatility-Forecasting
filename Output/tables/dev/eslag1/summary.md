# Results: dev period, scenario "eslag1"

Generated 2026-11-04 12:07 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.006527 | 0.952 | 1.497 | 0.577 | 0.5641 | 0.2821 | -0.9708 | 0.3319 | yes | 0.1002 | yes | 0.3972 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2537 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.1002 | yes | 0.413 | 0 | 1.05 | 0.7179 |
| EN | D | 755 | 0.2159 | 0.7257 | 0.194 | 0.4251 | 0.8509 | 0.8664 | 1.468 | 0.1424 | 0.0712 | 1.166 | 0.2439 | yes | 0.1002 | yes | 0.413 | 0.2649 | 0.8937 | 0.09244 |
| RF | D | 755 | 0.1797 | 0.6864 | 0.1851 | 0.4563 | 0.7081 | 0.8195 | 3.165 | 0.001614 | 0.0008068 | 1.114 | 0.2658 | yes | 1 | yes | 1 | 0 | 0.7437 | 5.019e-06 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.292 | 1.06 | 1.291 | -1.075 | 0.2824 | 0.8588 | -1.173 | 0.2411 | yes | 0.2504 | yes | 0.2194 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2143 | 0.7915 | 0.2676 | 0.4518 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.9433 | 0.1412 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_D | RF_D |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2618 | 0.9412 | 1 | 0.8573 | 0.6972 |
| High RV (monthly RV > threshold) | 62 | 0.1643 | 1.145 | 1 | 0.7369 | 0.9022 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2184 | 0.9515 | 1 | 0.942 | 0.7467 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5739 | 0.9539 | 1 | 0.5364 | 0.5748 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 0.5255 | 0.4521 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A |
|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2237 | 1.059 | 1 |
| High RV (monthly RV > threshold) | 236 | 0.1441 | 1.072 | 1 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1893 | 1.07 | 1 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4776 | 1.018 | 1 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.509 | 4 |
| EN | D | 3.559 | 4 |
| RF | D | 3.654 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.07143 | 1 |
| vix9d_spread | 0.05651 | 1 |
| rv_d | 0.05075 | 1 |
| vrp | 0.04877 | 1 |
| negret_w | -0.03966 | 1 |
| negret_d | -0.0381 | 1 |
| vix3m_spread | -0.03739 | 1 |
| iv_term | -0.03039 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| rv_d | 0.1447 |
| negret_w | 0.1395 |
| iv_skew_1m | 0.1019 |
| vix3m_spread | 0.09022 |
| vix9d_spread | 0.08206 |
| log_vxn | 0.07745 |
| iv_term | 0.05241 |
| log_rvx | 0.05008 |

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
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3184 | 1.078 | 1.313 | -0.6157 | 0.5383 | 0.7309 | -1.05 | 0.2941 | yes | 0.5432 | yes | 0.4454 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.5432 | yes | 0.4454 | 0 | 0.9278 | 0.2691 |
| EN | D | 755 | 0.2401 | 0.2923 | 0.1993 | 0.5936 | 0.9141 | 0.7829 | 1.978 | 0.04828 | 0.02414 | 1.139 | 0.2552 | yes | 1 | yes | 1 | 0 | 0.8481 | 0.1139 |
| RF | D | 755 | 0.258 | 0.3029 | 0.2067 | 0.5789 | 0.9825 | 0.8113 | 0.2923 | 0.7702 | 0.3851 | 1.033 | 0.302 | yes | 0.5432 | yes | 0.4454 | 0 | 0.9115 | 0.2058 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.3815 | 1.092 | 1.328 | -1.185 | 0.2363 | 0.8818 | -1.881 | 0.06007 | yes | 0.2492 | no | 0.058 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2035 | 0.4381 | 0.2663 | 0.5344 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.9159 | 0.1182 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_D | RF_D |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2747 | 1.073 | 1 | 0.9218 | 0.9896 |
| High RV (monthly RV > threshold) | 62 | 0.1276 | 1.192 | 1 | 0.729 | 0.8099 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2033 | 0.945 | 1 | 0.8907 | 0.9105 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.8005 | 1.384 | 1 | 0.968 | 1.148 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 0.8904 | 1.116 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A |
|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2164 | 1.082 | 1 |
| High RV (monthly RV > threshold) | 236 | 0.1068 | 1.238 | 1 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1613 | 1.024 | 1 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5865 | 1.26 | 1 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.47 | 4 |
| EN | D | 3.506 | 4 |
| RF | D | 3.454 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.03231 | 1 |
| iv_skew_1m | 0.0298 | 1 |
| iv_term | -0.0296 | 1 |
| parkinson_d | 0.02751 | 1 |
| vrp | 0.02662 | 1 |
| iv_atm_1m | 0.02582 | 1 |
| vix3m_spread | -0.02557 | 1 |
| parkinson_w | 0.02251 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_atm_1m | 0.07988 |
| iv_skew_1m | 0.07707 |
| rv_w | 0.07547 |
| log_vxn | 0.05829 |
| parkinson_w | 0.05688 |
| iv_term | 0.05506 |
| log_rvx | 0.04977 |
| rv_d | 0.04657 |

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
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.5782 | 0.8839 | 0.9874 | 0.3614 | 0.7179 | 0.359 | 0.08394 | 0.9331 | yes | 1 | yes | 0.4234 | 0 | 1 | NaN |
| HAR | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.707 | yes | 0.4234 | 0 | 1.131 | 0.641 |
| EN | D | 755 | 0.3375 | 0.154 | 0.25 | 0.7 | 1.065 | 0.7024 | -0.4046 | 0.6859 | 0.6571 | 1.229 | 0.2195 | yes | 0.2146 | yes | 0.9612 | 0 | 1.205 | 0.823 |
| RF | D | 755 | 0.3367 | 0.1535 | 0.2672 | 0.7008 | 1.062 | 0.7005 | -0.7982 | 0.425 | 0.7875 | 1.152 | 0.2495 | yes | 0.3096 | yes | 1 | 0 | 1.202 | 0.7442 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5549 | 1.104 | 1.066 | -0.4934 | 0.6218 | 0.6891 | -0.7686 | 0.4422 | yes | 0.6388 | yes | 0.476 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2566 | 0.2897 | 0.3456 | 0.5824 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.9056 | 0.3109 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_D | RF_D |
|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3271 | 0.8501 | 1 | 1.104 | 1.099 |
| High RV (monthly RV > threshold) | 62 | 0.2035 | 1.491 | 1 | 0.3661 | 0.4007 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.2782 | 0.4056 | 1 | 0.8458 | 0.9763 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5894 | 2.472 | 1 | 1.792 | 1.348 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 0.9763 | 0.8384 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A |
|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2727 | 1.09 | 1 |
| High RV (monthly RV > threshold) | 236 | 0.1352 | 1.325 | 1 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2181 | 0.6466 | 1 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5721 | 2.533 | 1 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.419 | 4 |
| EN | D | 3.31 | 4 |
| RF | D | 3.354 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.08539 | 0.4252 |
| EN_D | 755 | 28.96 | 1.278 | 27.39 | 1.277 | 0.547 | 0.3697 | 0.6371 |
| RF_D | 755 | 20.18 | 0.9247 | 17.12 | 0.8167 | 0.4834 | 0.3998 | 0.5656 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01889 | 1 |
| iv_skew_1m | 0.0146 | 1 |
| vix3m_spread | -0.01397 | 1 |
| rv_m | 0.01276 | 1 |
| es_C_m | 0.01244 | 1 |
| vix9d_spread | 0.01229 | 1 |
| iv_term | -0.01223 | 1 |
| es_J_m | 0.01161 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.04037 |
| iv_skew_1m | 0.03797 |
| rv_d | 0.03665 |
| es_C_d | 0.03604 |
| log_rvx | 0.03469 |
| log_vxn | 0.03443 |
| ciss | 0.03359 |
| es_rsn_d | 0.03353 |

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

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.3207 | 2.59 | 0.4294 | -0.2131 | 0.975 | 1.414 | 0.3003 | 0.764 | 0.382 | -1.218 | 0.2237 | no | 0.0016 | yes | 0.1626 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3289 | 1.832 | 0.436 | 0.1423 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0002 | yes | 0.1398 | 0 | 1.026 | 0.618 |
| EN | A | 755 | 0.3349 | 1.833 | 0.44 | 0.1417 | 1.018 | 1.001 | -5.932 | 4.569e-09 | 1 | -2.372 | 0.01795 | no | 0.0002 | yes | 0.122 | 0 | 1.044 | 0.6938 |
| RF | A | 755 | 0.3027 | 1.724 | 0.398 | 0.1927 | 0.9203 | 0.9412 | 2.196 | 0.02842 | 0.01421 | 0.8408 | 0.4007 | no | 0.0032 | yes | 0.1204 | 0 | 0.9439 | 0.2191 |
| EN | B | 755 | 0.166 | 1.32 | 0.3229 | 0.382 | 0.5047 | 0.7205 | 4.352 | 1.538e-05 | 7.69e-06 | 1.434 | 0.1519 | yes | 0.5958 | yes | 0.572 | 0.1325 | 0.5177 | 0.0002296 |
| RF | B | 755 | 0.1606 | 1.216 | 0.2982 | 0.4305 | 0.4882 | 0.664 | 4.776 | 2.153e-06 | 1.077e-06 | 1.313 | 0.1894 | yes | 1 | yes | 1 | 0 | 0.5007 | 3.348e-05 |
| EN | C | 755 | 0.1813 | 1.354 | 0.336 | 0.3659 | 0.5513 | 0.7392 | 4.081 | 4.964e-05 | 2.482e-05 | 1.426 | 0.1542 | yes | 0.1288 | yes | 0.5172 | 0 | 0.5655 | 0.0007478 |
| RF | C | 755 | 0.1691 | 1.256 | 0.3031 | 0.4117 | 0.5141 | 0.6859 | 4.706 | 3.007e-06 | 1.503e-06 | 1.316 | 0.1886 | yes | 0.4784 | yes | 0.572 | 0 | 0.5273 | 4.533e-05 |
| EN | D | 755 | 0.1794 | 1.38 | 0.326 | 0.3538 | 0.5455 | 0.7534 | 4.258 | 2.318e-05 | 1.159e-05 | 1.459 | 0.1449 | yes | 0.2824 | yes | 0.5172 | 1.06 | 0.5595 | 0.000368 |
| RF | D | 755 | 0.1694 | 1.303 | 0.3041 | 0.3898 | 0.5149 | 0.7114 | 4.871 | 1.354e-06 | 6.768e-07 | 1.323 | 0.1863 | yes | 0.4984 | yes | 0.5172 | 0 | 0.5282 | 2.513e-05 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.026 | -0.3003 | 0.764 | 0.618 | 0.7071 | 1.218 | 0.2237 | 0.1119 | 0.4254 | 0.4216 |
| EN_A vs PER_A | 755 | 1.044 | -0.5068 | 0.6124 | 0.6938 | 0.7076 | 1.216 | 0.2245 | 0.1123 | 0.2428 | 0.4076 |
| RF_A vs PER_A | 755 | 0.9439 | 0.7757 | 0.4381 | 0.2191 | 0.6655 | 1.166 | 0.2441 | 0.122 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.018 | -5.932 | 4.569e-09 | 1 | 1.001 | -2.372 | 0.01795 | 0.991 | 0.2428 | 0.4076 |
| RF_A vs HAR_A | 755 | 0.9203 | 2.196 | 0.02842 | 0.01421 | 0.9412 | 0.8408 | 0.4007 | 0.2004 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.9039 | 2.611 | 0.009211 | 0.004606 | 0.9405 | 0.8503 | 0.3954 | 0.1977 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 755 | 0.1689 | 50.43 | 0.1421 | 46.95 | -0.02676 | -2.017 | 0.978 | 0.04406 |
| A->B | MSE | 755 | 0.5131 | 28 | 0.5077 | 29.45 | -0.005448 | -0.05466 | 0.5218 | 0.9564 |
| A->C | QLIKE | 755 | 0.1535 | 45.85 | 0.1336 | 44.13 | -0.01995 | -1.542 | 0.9382 | 0.1235 |
| A->C | MSE | 755 | 0.4789 | 26.13 | 0.4675 | 27.12 | -0.01136 | -0.1164 | 0.5463 | 0.9073 |
| A->D | QLIKE | 755 | 0.1555 | 46.43 | 0.1333 | 44.05 | -0.02216 | -1.465 | 0.9283 | 0.1434 |
| A->D | MSE | 755 | 0.4529 | 24.71 | 0.4208 | 24.41 | -0.03207 | -0.3324 | 0.6302 | 0.7397 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.352 | 0.9665 | 1 | 1.02 | 0.9264 | 0.5025 | 0.4829 | 0.5499 | 0.51 | 0.5436 | 0.5105 |
| High RV (monthly RV > threshold) | 100 | 0.1778 | 1.085 | 1 | 0.9987 | 0.8414 | 0.533 | 0.5567 | 0.5706 | 0.5674 | 0.569 | 0.5727 |
| Normal days (target <= Q3 + 1.5 IQR) | 671 | 0.2564 | 0.8657 | 1 | 1.028 | 0.8412 | 0.5985 | 0.519 | 0.6524 | 0.5397 | 0.6287 | 0.5292 |
| Extreme days (target > Q3 + 1.5 IQR) | 84 | 0.9077 | 1.222 | 1 | 0.9954 | 1.099 | 0.2931 | 0.4188 | 0.3234 | 0.4564 | 0.3577 | 0.4829 |
| Aug 2015 devaluation | 54 | 0.7121 | 0.8859 | 1 | 1 | 1.033 | 0.2714 | 0.2418 | 0.2965 | 0.2567 | 0.3367 | 0.2752 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.243 | 4 |
| HAR | A | 3.341 | 4 |
| EN | A | 3.333 | 4 |
| RF | A | 3.357 | 4 |
| EN | B | 3.68 | 4 |
| RF | B | 3.678 | 4 |
| EN | C | 3.657 | 4 |
| RF | C | 3.661 | 4 |
| EN | D | 3.641 | 4 |
| RF | D | 3.657 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.08243 | 1 |
| vix9d_spread | 0.0721 | 1 |
| vix3m_spread | -0.05319 | 1 |
| negret_d | -0.05121 | 1 |
| negret_w | -0.05103 | 1 |
| iv_term | -0.05063 | 1 |
| vrp | 0.05031 | 1 |
| iv_atm_1m | 0.04106 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| vrp | 0.1817 |
| log_vxn | 0.1139 |
| iv_term | 0.0753 |
| vix9d_spread | 0.06973 |
| vix3m_spread | 0.06709 |
| log_vix | 0.0653 |
| negret_w | 0.06066 |
| iv_skew_1m | 0.05867 |

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
| PER | A | 755 | 0.3074 | 1.258 | 0.4135 | -0.1001 | 0.8998 | 1.423 | 1.026 | 0.3053 | 0.1527 | -1.235 | 0.2172 | yes | 0.1044 | yes | 0.1726 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3416 | 0.884 | 0.4398 | 0.2267 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0 | yes | 0.1294 | 0 | 1.111 | 0.8473 |
| EN | A | 755 | 0.3644 | 0.894 | 0.4571 | 0.218 | 1.067 | 1.011 | -6.048 | 2.301e-09 | 1 | -6.259 | 6.503e-10 | no | 0 | no | 0.0996 | 0 | 1.185 | 0.9452 |
| RF | A | 755 | 0.2876 | 0.8428 | 0.3769 | 0.2627 | 0.8419 | 0.9534 | 3.507 | 0.0004799 | 0.00024 | 0.7206 | 0.4714 | no | 0.0588 | yes | 0.1404 | 0 | 0.9357 | 0.2026 |
| EN | B | 755 | 0.1929 | 0.6474 | 0.3212 | 0.4337 | 0.5648 | 0.7323 | 4.594 | 5.101e-06 | 2.551e-06 | 1.775 | 0.07627 | yes | 1 | yes | 1 | 0 | 0.6276 | 0.008209 |
| RF | B | 755 | 0.2429 | 0.6754 | 0.3448 | 0.4092 | 0.7112 | 0.764 | 4.362 | 1.471e-05 | 7.356e-06 | 1.586 | 0.1132 | yes | 0.1044 | yes | 0.7968 | 0 | 0.7904 | 0.07051 |
| EN | C | 755 | 0.2277 | 0.6803 | 0.3481 | 0.4049 | 0.6665 | 0.7695 | 4.021 | 6.371e-05 | 3.186e-05 | 1.691 | 0.09134 | yes | 0.186 | yes | 0.7968 | 0 | 0.7407 | 0.04528 |
| RF | C | 755 | 0.2305 | 0.6784 | 0.3274 | 0.4066 | 0.6749 | 0.7674 | 4.911 | 1.109e-06 | 5.546e-07 | 1.707 | 0.08824 | yes | 0.186 | yes | 0.7968 | 0 | 0.75 | 0.03489 |
| EN | D | 755 | 0.2099 | 0.6838 | 0.332 | 0.4019 | 0.6144 | 0.7735 | 4.901 | 1.166e-06 | 5.831e-07 | 1.862 | 0.06306 | yes | 0.458 | yes | 0.7164 | 0 | 0.6828 | 0.01322 |
| RF | D | 755 | 0.2182 | 0.6906 | 0.3234 | 0.3959 | 0.6388 | 0.7812 | 5.436 | 7.377e-08 | 3.689e-08 | 1.664 | 0.09651 | yes | 0.458 | yes | 0.7032 | 0 | 0.7099 | 0.01325 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.111 | -1.026 | 0.3053 | 0.8473 | 0.7029 | 1.235 | 0.2172 | 0.1086 | 0.1446 | 0.4276 |
| EN_A vs PER_A | 755 | 1.185 | -1.602 | 0.1097 | 0.9452 | 0.7109 | 1.201 | 0.2299 | 0.115 | 0.0362 | 0.2644 |
| RF_A vs PER_A | 755 | 0.9357 | 0.833 | 0.4051 | 0.2026 | 0.6702 | 1.245 | 0.2135 | 0.1067 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1.067 | -6.048 | 2.301e-09 | 1 | 1.011 | -6.259 | 6.503e-10 | 1 | 0.0362 | 0.2644 |
| RF_A vs HAR_A | 755 | 0.8419 | 3.507 | 0.0004799 | 0.00024 | 0.9534 | 0.7206 | 0.4714 | 0.2357 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.7893 | 4.366 | 1.444e-05 | 7.219e-06 | 0.9428 | 0.8946 | 0.3713 | 0.1857 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 755 | 0.1715 | 47.06 | 0.04466 | 15.53 | -0.1268 | -5.11 | 1 | 4.08e-07 |
| A->B | MSE | 755 | 0.2466 | 27.58 | 0.1675 | 19.87 | -0.07915 | -1.456 | 0.9272 | 0.1457 |
| A->C | QLIKE | 755 | 0.1367 | 37.52 | 0.05707 | 19.84 | -0.07964 | -4.002 | 1 | 6.91e-05 |
| A->C | MSE | 755 | 0.2137 | 23.91 | 0.1644 | 19.51 | -0.04933 | -0.9296 | 0.8236 | 0.3529 |
| A->D | QLIKE | 755 | 0.1545 | 42.4 | 0.06941 | 24.13 | -0.0851 | -4.601 | 1 | 4.923e-06 |
| A->D | MSE | 755 | 0.2102 | 23.52 | 0.1522 | 18.06 | -0.05804 | -1.209 | 0.8865 | 0.2271 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3722 | 0.8956 | 1 | 1.071 | 0.8463 | 0.5635 | 0.7203 | 0.6675 | 0.681 | 0.6158 | 0.6397 |
| High RV (monthly RV > threshold) | 100 | 0.1412 | 0.973 | 1 | 1 | 0.766 | 0.5866 | 0.5539 | 0.6507 | 0.5694 | 0.5911 | 0.6219 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2544 | 0.6889 | 1 | 1.102 | 0.7079 | 0.5734 | 0.7012 | 0.697 | 0.6304 | 0.6111 | 0.5633 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.9863 | 1.302 | 1 | 1 | 1.097 | 0.5482 | 0.7301 | 0.6086 | 0.7597 | 0.6209 | 0.7825 |
| Aug 2015 devaluation | 54 | 1.13 | 1.107 | 1 | 1 | 1.043 | 0.6231 | 0.841 | 0.6656 | 0.8639 | 0.6915 | 0.8538 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.278 | 4 |
| HAR | A | 3.313 | 4 |
| EN | A | 3.28 | 4 |
| RF | A | 3.374 | 4 |
| EN | B | 3.598 | 4 |
| RF | B | 3.494 | 4 |
| EN | C | 3.54 | 4 |
| RF | C | 3.509 | 4 |
| EN | D | 3.565 | 4 |
| RF | D | 3.527 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.04798 | 1 |
| parkinson_d | 0.04588 | 1 |
| vix9d_spread | 0.04416 | 1 |
| negret_w | -0.04281 | 1 |
| vix3m_spread | -0.04215 | 1 |
| iv_atm_1m | 0.04057 | 1 |
| iv_skew_1m | 0.03961 | 1 |
| log_vxn | 0.03522 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.2276 |
| log_vxn | 0.1757 |
| iv_skew_1m | 0.1216 |
| log_vix | 0.08086 |
| iv_atm_1m | 0.07829 |
| parkinson_w | 0.07531 |
| vix3m_spread | 0.06126 |
| news_sent | 0.04783 |

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
| PER | A | 755 | 0.3166 | 0.6509 | 0.4472 | -0.0425 | 0.9326 | 1.337 | 0.2896 | 0.7722 | 0.3861 | -1.401 | 0.1615 | yes | 0.8924 | yes | 0.2538 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3394 | 0.4869 | 0.4865 | 0.2202 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.658 | yes | 0.2698 | 0 | 1.072 | 0.6139 |
| EN | A | 755 | 0.4082 | 0.5418 | 0.5486 | 0.1322 | 1.203 | 1.113 | -3.291 | 0.001044 | 0.9995 | -3.135 | 0.001783 | no | 0.0546 | no | 0.0082 | 0 | 1.289 | 0.8341 |
| RF | A | 755 | 0.3311 | 0.4963 | 0.4661 | 0.2051 | 0.9756 | 1.019 | 0.4759 | 0.6342 | 0.3171 | -0.2607 | 0.7944 | yes | 0.6924 | yes | 0.2698 | 0 | 1.046 | 0.582 |
| EN | B | 755 | 0.3067 | 0.3977 | 0.4142 | 0.363 | 0.9035 | 0.8169 | 1.973 | 0.04883 | 0.02442 | 2.172 | 0.03016 | yes | 1 | yes | 1 | 0 | 0.9688 | 0.4487 |
| RF | B | 755 | 0.3383 | 0.4209 | 0.4226 | 0.3258 | 0.9966 | 0.8645 | 0.04537 | 0.9638 | 0.4819 | 1.822 | 0.06885 | yes | 0.658 | yes | 0.6056 | 0 | 1.069 | 0.622 |
| EN | C | 755 | 0.363 | 0.4302 | 0.4346 | 0.311 | 1.069 | 0.8836 | -0.621 | 0.5348 | 0.7326 | 1.457 | 0.1457 | yes | 0.2408 | yes | 0.6056 | 0 | 1.147 | 0.7621 |
| RF | C | 755 | 0.3298 | 0.4138 | 0.4372 | 0.3372 | 0.9717 | 0.8499 | 0.7065 | 0.4801 | 0.24 | 1.612 | 0.1073 | yes | 0.703 | yes | 0.6056 | 0 | 1.042 | 0.5657 |
| EN | D | 755 | 0.3867 | 0.4521 | 0.4561 | 0.2759 | 1.139 | 0.9286 | -1.242 | 0.2146 | 0.8927 | 0.8988 | 0.369 | no | 0.0546 | yes | 0.2698 | 0 | 1.222 | 0.8408 |
| RF | D | 755 | 0.3219 | 0.4206 | 0.4302 | 0.3263 | 0.9483 | 0.864 | 1.216 | 0.2243 | 0.1122 | 1.718 | 0.08619 | yes | 0.8086 | yes | 0.6056 | 0 | 1.017 | 0.529 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.072 | -0.2896 | 0.7722 | 0.6139 | 0.748 | 1.401 | 0.1615 | 0.08077 | 0.8042 | 1 |
| EN_A vs PER_A | 755 | 1.289 | -0.9711 | 0.3318 | 0.8341 | 0.8324 | 0.8672 | 0.3861 | 0.193 | 0.0752 | 0.298 |
| RF_A vs PER_A | 755 | 1.046 | -0.2071 | 0.836 | 0.582 | 0.7625 | 1.2 | 0.2304 | 0.1152 | 0.826 | 0.7946 |
| EN_A vs HAR_A | 755 | 1.203 | -3.291 | 0.001044 | 0.9995 | 1.113 | -3.135 | 0.001783 | 0.9991 | 0.0752 | 0.298 |
| RF_A vs HAR_A | 755 | 0.9756 | 0.4759 | 0.6342 | 0.3171 | 1.019 | -0.2607 | 0.7944 | 0.6028 | 0.826 | 0.7946 |
| RF_A vs EN_A | 755 | 0.8113 | 2.34 | 0.01955 | 0.009776 | 0.916 | 1.062 | 0.2885 | 0.1442 | 0.826 | 0.7946 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->B | QLIKE | 755 | 0.1015 | 24.87 | -0.00713 | -2.153 | -0.1086 | -3.188 | 0.9993 | 0.001491 |
| A->B | MSE | 755 | 0.1441 | 26.59 | 0.07542 | 15.2 | -0.06868 | -1.497 | 0.9326 | 0.1347 |
| A->C | QLIKE | 755 | 0.04518 | 11.07 | 0.001301 | 0.3928 | -0.04388 | -0.8396 | 0.7993 | 0.4014 |
| A->C | MSE | 755 | 0.1116 | 20.6 | 0.08251 | 16.62 | -0.02911 | -0.7194 | 0.7639 | 0.4721 |
| A->D | QLIKE | 755 | 0.0215 | 5.267 | 0.009254 | 2.794 | -0.01224 | -0.2943 | 0.6157 | 0.7686 |
| A->D | MSE | 755 | 0.08971 | 16.56 | 0.07568 | 15.25 | -0.01403 | -0.3997 | 0.6552 | 0.6895 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_B | RF_B | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.3612 | 0.8679 | 1 | 1.221 | 0.9965 | 0.9301 | 1.036 | 1.114 | 1.009 | 1.189 | 0.9783 |
| High RV (monthly RV > threshold) | 100 | 0.1969 | 1.71 | 1 | 0.9797 | 0.7241 | 0.5843 | 0.5203 | 0.5347 | 0.5205 | 0.5413 | 0.5877 |
| Normal days (target <= Q3 + 1.5 IQR) | 665 | 0.2803 | 0.6215 | 1 | 1.278 | 0.9132 | 0.8627 | 0.9121 | 0.9544 | 0.9668 | 1.048 | 0.9102 |
| Extreme days (target > Q3 + 1.5 IQR) | 90 | 0.7767 | 1.762 | 1 | 1 | 1.142 | 1.012 | 1.222 | 1.376 | 0.9848 | 1.382 | 1.05 |
| Aug 2015 devaluation | 54 | 0.4043 | 1.905 | 1 | 1 | 0.6376 | 0.6201 | 0.7313 | 0.8209 | 0.6443 | 0.8369 | 0.7478 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.282 | 4 |
| HAR | A | 3.361 | 4 |
| EN | A | 3.266 | 4 |
| RF | A | 3.35 | 4 |
| EN | B | 3.406 | 4 |
| RF | B | 3.335 | 4 |
| EN | C | 3.276 | 4 |
| RF | C | 3.377 | 4 |
| EN | D | 3.243 | 4 |
| RF | D | 3.38 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 70.22 | 3.488 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 19.01 | 0.8721 | 23.16 | 1.084 | 0.7126 | 0.0685 | 0.8318 |
| HAR_A | 755 | 13.79 | 1.064 | 19.65 | 1.536 | 0.4689 | 0.305 | 0.5325 |
| EN_A | 755 | 4.512 | 0.3072 | 9.494 | 0.6363 | 0.4172 | 0.2863 | 0.4755 |
| RF_A | 755 | 32.13 | 2.988 | 33.56 | 3.214 | 0.5417 | 0.2337 | 0.6185 |
| EN_B | 755 | 30.91 | 1.364 | 40.62 | 1.816 | 0.5987 | 0.4177 | 0.7179 |
| RF_B | 755 | 29.07 | 1.306 | 38.95 | 1.773 | 0.5907 | 0.3277 | 0.702 |
| EN_C | 755 | 19.55 | 0.8674 | 27.29 | 1.213 | 0.5391 | 0.3475 | 0.6477 |
| RF_C | 755 | 14.92 | 0.7037 | 23.01 | 1.103 | 0.5179 | 0.4014 | 0.5841 |
| EN_D | 755 | 17.79 | 0.7767 | 25.72 | 1.121 | 0.5285 | 0.3223 | 0.645 |
| RF_D | 755 | 20.96 | 1.058 | 28.18 | 1.443 | 0.5576 | 0.3603 | 0.645 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_atm_1m | 0.07738 | 1 |
| iv_skew_1m | 0.03856 | 1 |
| parkinson_w | 0.02891 | 1 |
| news_sent | -0.02867 | 0.6667 |
| vix3m_spread | -0.02027 | 0.6667 |
| vix9d_spread | 0.01833 | 0.6667 |
| iv_term | -0.01823 | 0.6667 |
| es_C_m | 0.01809 | 0.6667 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| news_sent | 0.04934 |
| rv_w | 0.0348 |
| log_vix | 0.03411 |
| iv_skew_1m | 0.03361 |
| negret_m | 0.03242 |
| vix3m_spread | 0.03173 |
| es_rsn_w | 0.03036 |
| log_vxn | 0.02811 |

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
| SPY | 1 | RF_D | 0.7081 | 0.0008068 | yes | yes | 0.7437 | yes | HAR_A EN_D | NaN | NaN |
| SPY | 5 | EN_D | 0.9141 | 0.02414 | yes | yes | 0.8481 | no | HAR_A EN_D RF_D | NaN | NaN |
| SPY | 22 | RF_D | 1.062 | 0.7875 | yes | no | 1.202 | no | HAR_A EN_D RF_D | 17.12 | 0.3998 |
| ES | 1 | RF_B | 0.4882 | 1.077e-06 | yes | yes | 0.5007 | yes | HAR_A EN_A RF_A | NaN | NaN |
| ES | 5 | EN_B | 0.5648 | 2.551e-06 | yes | yes | 0.6276 | yes | HAR_A EN_A RF_A RF_B | NaN | NaN |
| ES | 22 | EN_B | 0.9035 | 0.02442 | yes | yes | 0.9688 | no | HAR_A EN_A RF_A EN_B RF_B EN_C RF_C EN_D RF_D | 40.62 | 0.4177 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.952 | 1.497 | 0.5641 | yes | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.05 |
| SPY | 1 | all-model common days | EN | D | 0.8509 | 0.8664 | 0.1424 | yes | 0.8937 |
| SPY | 1 | all-model common days | RF | D | 0.7081 | 0.8195 | 0.001614 | yes | 0.7437 |
| SPY | 1 | sets A-C common days | PER | A | 1.06 | 1.291 | 0.2824 | yes | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9433 |
| SPY | 5 | all-model common days | PER | A | 1.078 | 1.313 | 0.5383 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9278 |
| SPY | 5 | all-model common days | EN | D | 0.9141 | 0.7829 | 0.04828 | yes | 0.8481 |
| SPY | 5 | all-model common days | RF | D | 0.9825 | 0.8113 | 0.7702 | yes | 0.9115 |
| SPY | 5 | sets A-C common days | PER | A | 1.092 | 1.328 | 0.2363 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9159 |
| SPY | 22 | all-model common days | PER | A | 0.8839 | 0.9874 | 0.7179 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.131 |
| SPY | 22 | all-model common days | EN | D | 1.065 | 0.7024 | 0.6859 | yes | 1.205 |
| SPY | 22 | all-model common days | RF | D | 1.062 | 0.7005 | 0.425 | yes | 1.202 |
| SPY | 22 | sets A-C common days | PER | A | 1.104 | 1.066 | 0.6218 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9056 |
| ES | 1 | all-model common days | PER | A | 0.975 | 1.414 | 0.764 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.026 |
| ES | 1 | all-model common days | EN | A | 1.018 | 1.001 | 4.569e-09 | no | 1.044 |
| ES | 1 | all-model common days | RF | A | 0.9203 | 0.9412 | 0.02842 | no | 0.9439 |
| ES | 1 | all-model common days | EN | B | 0.5047 | 0.7205 | 1.538e-05 | yes | 0.5177 |
| ES | 1 | all-model common days | RF | B | 0.4882 | 0.664 | 2.153e-06 | yes | 0.5007 |
| ES | 1 | all-model common days | EN | C | 0.5513 | 0.7392 | 4.964e-05 | yes | 0.5655 |
| ES | 1 | all-model common days | RF | C | 0.5141 | 0.6859 | 3.007e-06 | yes | 0.5273 |
| ES | 1 | all-model common days | EN | D | 0.5455 | 0.7534 | 2.318e-05 | yes | 0.5595 |
| ES | 1 | all-model common days | RF | D | 0.5149 | 0.7114 | 1.354e-06 | yes | 0.5282 |
| ES | 5 | all-model common days | PER | A | 0.8998 | 1.423 | 0.3053 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.111 |
| ES | 5 | all-model common days | EN | A | 1.067 | 1.011 | 2.301e-09 | no | 1.185 |
| ES | 5 | all-model common days | RF | A | 0.8419 | 0.9534 | 0.0004799 | no | 0.9357 |
| ES | 5 | all-model common days | EN | B | 0.5648 | 0.7323 | 5.101e-06 | yes | 0.6276 |
| ES | 5 | all-model common days | RF | B | 0.7112 | 0.764 | 1.471e-05 | yes | 0.7904 |
| ES | 5 | all-model common days | EN | C | 0.6665 | 0.7695 | 6.371e-05 | yes | 0.7407 |
| ES | 5 | all-model common days | RF | C | 0.6749 | 0.7674 | 1.109e-06 | yes | 0.75 |
| ES | 5 | all-model common days | EN | D | 0.6144 | 0.7735 | 1.166e-06 | yes | 0.6828 |
| ES | 5 | all-model common days | RF | D | 0.6388 | 0.7812 | 7.377e-08 | yes | 0.7099 |
| ES | 22 | all-model common days | PER | A | 0.9326 | 1.337 | 0.7722 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.072 |
| ES | 22 | all-model common days | EN | A | 1.203 | 1.113 | 0.001044 | no | 1.289 |
| ES | 22 | all-model common days | RF | A | 0.9756 | 1.019 | 0.6342 | yes | 1.046 |
| ES | 22 | all-model common days | EN | B | 0.9035 | 0.8169 | 0.04883 | yes | 0.9688 |
| ES | 22 | all-model common days | RF | B | 0.9966 | 0.8645 | 0.9638 | yes | 1.069 |
| ES | 22 | all-model common days | EN | C | 1.069 | 0.8836 | 0.5348 | yes | 1.147 |
| ES | 22 | all-model common days | RF | C | 0.9717 | 0.8499 | 0.4801 | yes | 1.042 |
| ES | 22 | all-model common days | EN | D | 1.139 | 0.9286 | 0.2146 | no | 1.222 |
| ES | 22 | all-model common days | RF | D | 0.9483 | 0.864 | 0.2243 | yes | 1.017 |

