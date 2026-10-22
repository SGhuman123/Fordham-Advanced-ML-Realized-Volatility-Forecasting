# Results: dev period, scenario "strict"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.2416 | 1.254 | 0.2089 | 0.006527 | 0.952 | 1.497 | 0.577 | 0.5641 | 0.2821 | -0.9708 | 0.3319 | no | 0.063 | yes | 0.5508 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2537 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.063 | yes | 0.5508 | 0 | 1.05 | 0.7179 |
| EN | A | 755 | 0.2538 | 0.8376 | 0.2208 | 0.3365 | 1 | 1 | -6.137 | 1.355e-09 | 1 | 0.8783 | 0.3801 | no | 0.0586 | yes | 0.5508 | 0 | 1.05 | 0.718 |
| RF | A | 755 | 0.2068 | 0.8138 | 0.1977 | 0.3554 | 0.8151 | 0.9716 | 3.102 | 0.001991 | 0.0009955 | 0.9306 | 0.3524 | no | 0.063 | yes | 0.5508 | 0 | 0.8561 | 0.001236 |
| EN | C | 755 | 0.4049 | 0.7242 | 0.2432 | 0.4264 | 1.596 | 0.8645 | -3.524 | 0.0004503 | 0.9998 | 0.9721 | 0.3313 | no | 0.002 | yes | 0.6368 | 9.272 | 1.676 | 1 |
| RF | C | 755 | 0.179 | 0.8044 | 0.1902 | 0.3628 | 0.7055 | 0.9603 | 4.016 | 6.523e-05 | 3.262e-05 | 0.8664 | 0.3865 | yes | 1 | yes | 0.6368 | 0 | 0.7411 | 2.113e-07 |
| EN | D | 755 | 0.2482 | 0.7303 | 0.1896 | 0.4216 | 0.9782 | 0.8718 | 0.1937 | 0.8465 | 0.4232 | 1.219 | 0.2232 | no | 0.063 | yes | 0.6368 | 2.384 | 1.028 | 0.6143 |
| RF | D | 755 | 0.1811 | 0.6944 | 0.1872 | 0.4499 | 0.7137 | 0.829 | 3.15 | 0.001697 | 0.0008486 | 1.121 | 0.2627 | yes | 0.728 | yes | 1 | 0 | 0.7497 | 4.099e-05 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2272 | 1.022 | 0.2575 | 0.292 | 1.06 | 1.291 | -1.075 | 0.2824 | 0.8588 | -1.173 | 0.2411 | no | 0.008 | yes | 0.3898 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2143 | 0.7915 | 0.2676 | 0.4518 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.008 | yes | 0.6946 | 0 | 0.9433 | 0.1412 |
| EN | A | 2013 | 0.2143 | 0.7913 | 0.2676 | 0.4519 | 1 | 0.9998 | -1.365 | 0.1723 | 0.9138 | 1.114 | 0.2652 | no | 0.008 | yes | 0.6946 | 0 | 0.9433 | 0.1414 |
| RF | A | 2013 | 0.1901 | 0.7998 | 0.2507 | 0.446 | 0.8871 | 1.01 | 3.432 | 0.0006122 | 0.0003061 | -0.204 | 0.8384 | no | 0.008 | yes | 0.5064 | 0 | 0.8368 | 0.0001326 |
| EN | C | 2013 | 0.5627 | 0.7329 | 0.3181 | 0.4924 | 2.626 | 0.926 | -5.385 | 8.072e-08 | 1 | 1.059 | 0.2897 | no | 0.008 | yes | 1 | 9.488 | 2.477 | 1 |
| RF | C | 2013 | 0.1666 | 0.7789 | 0.2462 | 0.4605 | 0.7773 | 0.9842 | 6.06 | 1.619e-09 | 8.094e-10 | 0.1739 | 0.8619 | yes | 1 | yes | 0.6946 | 0 | 0.7332 | 3.904e-11 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9433 | 1.075 | 0.2824 | 0.1412 | 0.7744 | 1.173 | 0.2411 | 0.1205 | 0.0792 | 0.7994 |
| EN_A vs PER_A | 2013 | 0.9433 | 1.074 | 0.2828 | 0.1414 | 0.7742 | 1.173 | 0.2408 | 0.1204 | 0.0792 | 1 |
| RF_A vs PER_A | 2013 | 0.8368 | 3.654 | 0.0002651 | 0.0001326 | 0.7825 | 1.191 | 0.2339 | 0.117 | 1 | 0.7994 |
| EN_A vs HAR_A | 2013 | 1 | -1.365 | 0.1723 | 0.9138 | 0.9998 | 1.114 | 0.2652 | 0.1326 | 0.0792 | 1 |
| RF_A vs HAR_A | 2013 | 0.8871 | 3.432 | 0.0006122 | 0.0003061 | 1.01 | -0.204 | 0.8384 | 0.5808 | 1 | 0.7994 |
| RF_A vs EN_A | 2013 | 0.887 | 3.432 | 0.0006107 | 0.0003053 | 1.011 | -0.2083 | 0.835 | 0.5825 | 1 | 0.7994 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.3484 | -162.5 | 0.02353 | 12.37 | 0.3719 | 5.759 | 4.882e-09 | 9.765e-09 |
| A->C | MSE | 2013 | 0.0584 | 7.381 | 0.02084 | 2.606 | -0.03757 | -0.5549 | 0.7105 | 0.579 |
| A->D | QLIKE | 755 | 0.005534 | 2.181 | 0.02571 | 12.43 | 0.02018 | 0.804 | 0.2108 | 0.4216 |
| A->D | MSE | 755 | 0.1074 | 12.82 | 0.1194 | 14.67 | 0.01202 | 0.3189 | 0.3749 | 0.7499 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2618 | 0.9412 | 1 | 1 | 0.8118 | 1.632 | 0.6942 | 0.9938 | 0.698 |
| High RV (monthly RV > threshold) | 62 | 0.1643 | 1.145 | 1 | 1 | 0.8726 | 0.9562 | 0.9066 | 0.7004 | 0.9941 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2184 | 0.9515 | 1 | 1 | 0.8144 | 1.919 | 0.7223 | 1.109 | 0.7702 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.5739 | 0.9539 | 1 | 1 | 0.8175 | 0.4794 | 0.6476 | 0.528 | 0.5188 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5501 | 0.5466 | 0.5003 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2237 | 1.059 | 1 | 1 | 0.8851 | 2.539 | 0.7679 |
| High RV (monthly RV > threshold) | 236 | 0.1441 | 1.072 | 1 | 0.9998 | 0.9106 | 3.632 | 0.8869 |
| Normal days (target <= Q3 + 1.5 IQR) | 1838 | 0.1893 | 1.07 | 1 | 1 | 0.8582 | 2.911 | 0.7791 |
| Extreme days (target > Q3 + 1.5 IQR) | 175 | 0.4776 | 1.018 | 1 | 0.9999 | 1.007 | 1.438 | 0.7697 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1754 | 1.126 | 1 | 1 | 0.9907 | 4.755 | 0.8851 |
| Aug 2015 devaluation | 54 | 0.6152 | 0.7136 | 1 | 1 | 0.6289 | 0.53 | 0.5501 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.462 | 4 |
| HAR | A | 3.509 | 4 |
| EN | A | 3.509 | 4 |
| RF | A | 3.595 | 4 |
| EN | C | 3.116 | 4 |
| RF | C | 3.65 | 4 |
| EN | D | 3.458 | 4 |
| RF | D | 3.657 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.06329 | 1 |
| vix9d_spread | 0.05928 | 1 |
| vrp | 0.04823 | 1 |
| es_rsn_d | 0.04627 | 1 |
| negret_d | -0.04192 | 1 |
| es_rk_d | 0.04074 | 1 |
| negret_w | -0.03653 | 1 |
| vix3m_spread | -0.03443 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| negret_w | 0.1242 |
| es_C_d | 0.1153 |
| iv_skew_1m | 0.07351 |
| vix3m_spread | 0.07119 |
| es_rsn_d | 0.06053 |
| rv_d | 0.05439 |
| iv_term | 0.05085 |
| log_vxn | 0.05072 |

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
| PER | A | 755 | 0.2831 | 0.4903 | 0.2176 | 0.3184 | 1.078 | 1.313 | -0.6157 | 0.5383 | 0.7309 | -1.05 | 0.2941 | yes | 0.7198 | yes | 0.533 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7198 | yes | 0.5872 | 0 | 0.9278 | 0.2691 |
| EN | A | 755 | 0.2626 | 0.3733 | 0.2303 | 0.4809 | 1 | 1 | -4.587 | 5.254e-06 | 1 | 0.7283 | 0.4667 | yes | 0.7198 | yes | 0.5872 | 0 | 0.9278 | 0.2692 |
| RF | A | 755 | 0.2721 | 0.5277 | 0.2433 | 0.2662 | 1.036 | 1.414 | -0.4695 | 0.6389 | 0.6806 | -1.564 | 0.1182 | yes | 0.7198 | yes | 0.1666 | 0 | 0.9611 | 0.3477 |
| EN | C | 755 | 0.4268 | 0.312 | 0.2454 | 0.5663 | 1.625 | 0.8356 | -2.587 | 0.009868 | 0.9951 | 0.8237 | 0.4104 | yes | 0.1092 | yes | 0.5872 | 7.55 | 1.508 | 0.9898 |
| RF | C | 755 | 0.2539 | 0.337 | 0.2112 | 0.5314 | 0.9668 | 0.9028 | 0.6442 | 0.5196 | 0.2598 | 0.9096 | 0.3633 | yes | 0.7198 | yes | 0.5872 | 0 | 0.897 | 0.1821 |
| EN | D | 755 | 0.2455 | 0.2926 | 0.2003 | 0.5932 | 0.9347 | 0.7837 | 1.518 | 0.1293 | 0.06466 | 1.162 | 0.2457 | yes | 0.7198 | yes | 1 | 0 | 0.8672 | 0.1405 |
| RF | D | 755 | 0.2401 | 0.2969 | 0.2013 | 0.5872 | 0.9142 | 0.7953 | 1.789 | 0.07406 | 0.03703 | 1.065 | 0.2871 | yes | 1 | yes | 0.6074 | 0 | 0.8482 | 0.08412 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2222 | 0.582 | 0.2579 | 0.3815 | 1.092 | 1.328 | -1.185 | 0.2363 | 0.8818 | -1.881 | 0.06007 | yes | 0.2026 | yes | 0.1384 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2035 | 0.4381 | 0.2663 | 0.5344 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.2778 | yes | 0.7472 | 0 | 0.9159 | 0.1182 |
| EN | A | 2013 | 0.2039 | 0.4364 | 0.2667 | 0.5362 | 1.002 | 0.9962 | -1.372 | 0.1703 | 0.9148 | 1.004 | 0.3153 | yes | 0.2502 | yes | 0.789 | 0 | 0.9176 | 0.1237 |
| RF | A | 2013 | 0.201 | 0.5811 | 0.2746 | 0.3825 | 0.9879 | 1.326 | 0.2736 | 0.7844 | 0.3922 | -2.269 | 0.02338 | yes | 0.2778 | no | 0.0646 | 0 | 0.9047 | 0.05945 |
| EN | C | 2013 | 0.6425 | 0.4268 | 0.334 | 0.5465 | 3.157 | 0.9741 | -5.325 | 1.124e-07 | 1 | 0.3072 | 0.7588 | no | 0.0044 | yes | 0.789 | 9.687 | 2.891 | 1 |
| RF | C | 2013 | 0.1865 | 0.4176 | 0.253 | 0.5562 | 0.9163 | 0.9531 | 2.408 | 0.01611 | 0.008056 | 0.7211 | 0.4709 | yes | 1 | yes | 1 | 0 | 0.8392 | 0.01156 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9159 | 1.185 | 0.2363 | 0.1182 | 0.7528 | 1.881 | 0.06007 | 0.03004 | 0.8012 | 0.5404 |
| EN_A vs PER_A | 2013 | 0.9176 | 1.157 | 0.2474 | 0.1237 | 0.7499 | 1.885 | 0.05958 | 0.02979 | 0.7582 | 1 |
| RF_A vs PER_A | 2013 | 0.9047 | 1.56 | 0.1189 | 0.05945 | 0.9984 | 0.0275 | 0.9781 | 0.489 | 1 | 0.038 |
| EN_A vs HAR_A | 2013 | 1.002 | -1.372 | 0.1703 | 0.9148 | 0.9962 | 1.004 | 0.3153 | 0.1577 | 0.7582 | 1 |
| RF_A vs HAR_A | 2013 | 0.9879 | 0.2736 | 0.7844 | 0.3922 | 1.326 | -2.269 | 0.02338 | 0.9883 | 1 | 0.038 |
| RF_A vs EN_A | 2013 | 0.986 | 0.3136 | 0.7539 | 0.3769 | 1.331 | -2.261 | 0.02385 | 0.9881 | 1 | 0.038 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.4386 | -215.1 | 0.01457 | 7.248 | 0.4532 | 5.472 | 2.496e-08 | 4.991e-08 |
| A->C | MSE | 2013 | 0.009685 | 2.219 | 0.1635 | 28.14 | 0.1538 | 2.757 | 0.002945 | 0.005889 |
| A->D | QLIKE | 755 | 0.01717 | 6.536 | 0.03195 | 11.74 | 0.01478 | 0.9234 | 0.1781 | 0.3561 |
| A->D | MSE | 755 | 0.08075 | 21.63 | 0.2308 | 43.74 | 0.1501 | 1.487 | 0.06872 | 0.1374 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.2747 | 1.073 | 1 | 1 | 1.027 | 1.651 | 0.9644 | 0.9468 | 0.9184 |
| High RV (monthly RV > threshold) | 62 | 0.1276 | 1.192 | 1 | 1 | 1.25 | 0.9858 | 1.025 | 0.6425 | 0.8132 |
| Normal days (target <= Q3 + 1.5 IQR) | 680 | 0.2033 | 0.945 | 1 | 1 | 0.9105 | 2.045 | 0.8986 | 0.9095 | 0.8489 |
| Extreme days (target > Q3 + 1.5 IQR) | 75 | 0.8005 | 1.384 | 1 | 1 | 1.325 | 0.6577 | 1.124 | 0.9926 | 1.065 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.078 | 0.9265 | 1.048 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2164 | 1.082 | 1 | 1.002 | 0.9703 | 2.982 | 0.9106 |
| High RV (monthly RV > threshold) | 236 | 0.1068 | 1.238 | 1 | 0.9996 | 1.256 | 5.831 | 1.003 |
| Normal days (target <= Q3 + 1.5 IQR) | 1813 | 0.1613 | 1.024 | 1 | 1.004 | 0.8923 | 3.886 | 0.8845 |
| Extreme days (target > Q3 + 1.5 IQR) | 200 | 0.5865 | 1.26 | 1 | 0.9958 | 1.226 | 1.341 | 0.9953 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.1576 | 1.064 | 1 | 1.006 | 0.9832 | 6.398 | 0.9338 |
| Aug 2015 devaluation | 54 | 1.07 | 1.241 | 1 | 1 | 1.236 | 0.7267 | 1.078 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.33 | 4 |
| HAR | A | 3.47 | 4 |
| EN | A | 3.47 | 4 |
| RF | A | 3.418 | 4 |
| EN | C | 3.025 | 4 |
| RF | C | 3.467 | 4 |
| EN | D | 3.492 | 4 |
| RF | D | 3.491 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| negret_w | -0.02637 | 1 |
| iv_term | -0.02431 | 1 |
| iv_skew_1m | 0.02394 | 1 |
| vix3m_spread | -0.02271 | 1 |
| vrp | 0.02191 | 1 |
| iv_atm_1m | 0.02123 | 1 |
| negret_d | -0.02065 | 1 |
| parkinson_d | 0.01994 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.08315 |
| rv_w | 0.06127 |
| log_vxn | 0.05474 |
| log_rvx | 0.0542 |
| iv_atm_1m | 0.05375 |
| iv_term | 0.04324 |
| es_rsn_d | 0.04247 |
| es_rsn_w | 0.04061 |

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
| PER | A | 755 | 0.2802 | 0.2164 | 0.2278 | 0.5782 | 0.8839 | 0.9874 | 0.3614 | 0.7179 | 0.359 | 0.08394 | 0.9331 | yes | 1 | yes | 0.7098 | 0 | 1 | NaN |
| HAR | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7684 | yes | 0.7098 | 0 | 1.131 | 0.641 |
| EN | A | 755 | 0.317 | 0.2192 | 0.3043 | 0.5729 | 1 | 1 | -2.776 | 0.005632 | 0.9972 | 0.2568 | 0.7974 | yes | 0.7684 | yes | 0.7098 | 0 | 1.131 | 0.6411 |
| RF | A | 755 | 0.2921 | 0.2606 | 0.2734 | 0.4922 | 0.9217 | 1.189 | 0.767 | 0.4433 | 0.2217 | -1.237 | 0.2165 | yes | 0.9198 | yes | 0.5572 | 0 | 1.043 | 0.5673 |
| EN | C | 755 | 0.3027 | 0.1764 | 0.2801 | 0.6563 | 0.955 | 0.8047 | 0.5553 | 0.5788 | 0.2894 | 0.9364 | 0.3494 | yes | 0.9198 | yes | 0.7098 | 0.9272 | 1.08 | 0.5863 |
| RF | C | 755 | 0.3793 | 0.2261 | 0.3608 | 0.5594 | 1.197 | 1.031 | -1.354 | 0.1763 | 0.9119 | -0.108 | 0.914 | yes | 0.5324 | yes | 0.7098 | 0 | 1.354 | 0.7809 |
| EN | D | 755 | 0.3363 | 0.1549 | 0.2507 | 0.6981 | 1.061 | 0.7067 | -0.3958 | 0.6923 | 0.6538 | 1.236 | 0.2169 | yes | 0.5324 | yes | 0.9746 | 0 | 1.2 | 0.8113 |
| RF | D | 755 | 0.3352 | 0.1546 | 0.2642 | 0.6987 | 1.058 | 0.7054 | -0.6771 | 0.4985 | 0.7507 | 1.172 | 0.2417 | yes | 0.5324 | yes | 1 | 0 | 1.197 | 0.7419 |

### Accuracy, sets A-C on their common days (2010-01-04 to 2017-12-29, n = 2013)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2013 | 0.2833 | 0.3087 | 0.2789 | 0.5549 | 1.104 | 1.066 | -0.4934 | 0.6218 | 0.6891 | -0.7686 | 0.4422 | yes | 0.6836 | yes | 0.7964 | 0 | 1 | NaN |
| HAR | A | 2013 | 0.2566 | 0.2897 | 0.3456 | 0.5824 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7298 | yes | 0.7964 | 0 | 0.9056 | 0.3109 |
| EN | A | 2013 | 0.2593 | 0.2841 | 0.3502 | 0.5903 | 1.01 | 0.9809 | -1.063 | 0.2877 | 0.8561 | 0.6912 | 0.4895 | yes | 0.6836 | yes | 1 | 0 | 0.9151 | 0.331 |
| RF | A | 2013 | 0.2492 | 0.4319 | 0.337 | 0.3773 | 0.9713 | 1.491 | 0.3629 | 0.7167 | 0.3584 | -1.835 | 0.06671 | yes | 1 | yes | 0.367 | 0 | 0.8796 | 0.1694 |
| EN | C | 2013 | 1.021 | 0.3183 | 0.3926 | 0.5411 | 3.981 | 1.099 | -2.379 | 0.01743 | 0.9913 | -0.6876 | 0.4918 | no | 0.0444 | yes | 0.7964 | 8.097 | 3.605 | 0.9928 |
| RF | C | 2013 | 0.2934 | 0.3811 | 0.4167 | 0.4505 | 1.144 | 1.316 | -1.34 | 0.1805 | 0.9097 | -1.699 | 0.08941 | yes | 0.6602 | yes | 0.367 | 0 | 1.036 | 0.5577 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 2013 | 0.9056 | 0.4934 | 0.6218 | 0.3109 | 0.9383 | 0.7686 | 0.4422 | 0.2211 | 0.7298 | 0.5554 |
| EN_A vs PER_A | 2013 | 0.9151 | 0.4372 | 0.662 | 0.331 | 0.9204 | 0.8401 | 0.401 | 0.2005 | 0.6836 | 1 |
| RF_A vs PER_A | 2013 | 0.8796 | 0.9568 | 0.3388 | 0.1694 | 1.399 | -1.817 | 0.06931 | 0.9653 | 1 | 0.0916 |
| EN_A vs HAR_A | 2013 | 1.01 | -1.063 | 0.2877 | 0.8561 | 0.9809 | 0.6912 | 0.4895 | 0.2447 | 0.6836 | 1 |
| RF_A vs HAR_A | 2013 | 0.9713 | 0.3629 | 0.7167 | 0.3584 | 1.491 | -1.835 | 0.06671 | 0.9666 | 1 | 0.0916 |
| RF_A vs EN_A | 2013 | 0.9612 | 0.4733 | 0.6361 | 0.318 | 1.52 | -1.81 | 0.07051 | 0.9647 | 1 | 0.0916 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 2013 | -0.7621 | -294 | -0.04423 | -17.75 | 0.7179 | 2.122 | 0.017 | 0.03399 |
| A->C | MSE | 2013 | -0.03414 | -12.02 | 0.05076 | 11.75 | 0.08491 | 0.8105 | 0.2089 | 0.4178 |
| A->D | QLIKE | 755 | -0.01929 | -6.087 | -0.04311 | -14.76 | -0.02381 | -0.4202 | 0.6628 | 0.6745 |
| A->D | MSE | 755 | 0.06429 | 29.33 | 0.1059 | 40.66 | 0.04165 | 1.049 | 0.1473 | 0.2946 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 693 | 0.3271 | 0.8501 | 1 | 1 | 0.9091 | 0.9568 | 1.223 | 1.1 | 1.092 |
| High RV (monthly RV > threshold) | 62 | 0.2035 | 1.491 | 1 | 1 | 1.147 | 0.9231 | 0.7287 | 0.3631 | 0.4388 |
| Normal days (target <= Q3 + 1.5 IQR) | 661 | 0.2782 | 0.4056 | 1 | 1 | 0.7522 | 0.9818 | 1.328 | 0.8505 | 0.964 |
| Extreme days (target > Q3 + 1.5 IQR) | 94 | 0.5894 | 2.472 | 1 | 1 | 1.484 | 0.8662 | 0.7609 | 1.759 | 1.369 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.6045 | 0.9697 | 0.8932 |

### QLIKE ratio vs HAR by regime, sets A-C on their longer common sample

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C |
|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1777 | 0.2727 | 1.09 | 1 | 1.012 | 0.9485 | 3.39 | 1.158 |
| High RV (monthly RV > threshold) | 236 | 0.1352 | 1.325 | 1 | 0.9924 | 1.317 | 12.95 | 0.9214 |
| Normal days (target <= Q3 + 1.5 IQR) | 1794 | 0.2181 | 0.6466 | 1 | 1.026 | 0.7736 | 2.946 | 1.293 |
| Extreme days (target > Q3 + 1.5 IQR) | 219 | 0.5721 | 2.533 | 1 | 0.9604 | 1.588 | 7.211 | 0.6776 |
| Euro crisis (Jan 2010 - Jun 2013) | 878 | 0.2172 | 1.404 | 1 | 1.028 | 1.112 | 9.007 | 1.339 |
| Aug 2015 devaluation | 54 | 0.3514 | 2.006 | 1 | 1 | 1.228 | 0.8889 | 0.6045 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.333 | 4 |
| HAR | A | 3.419 | 4 |
| EN | A | 3.419 | 4 |
| RF | A | 3.419 | 4 |
| EN | C | 3.403 | 4 |
| RF | C | 3.353 | 4 |
| EN | D | 3.315 | 4 |
| RF | D | 3.355 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 78.63 | 3.795 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 42.15 | 1.796 | 42.72 | 1.993 | 0.7881 | 0.07099 | 0.9073 |
| HAR_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.08539 | 0.4252 |
| EN_A | 755 | 20.14 | 1.354 | 13.46 | 0.9502 | 0.4066 | 0.0854 | 0.4252 |
| RF_A | 755 | 30.58 | 1.517 | 28.52 | 1.614 | 0.6238 | -0.08314 | 0.7219 |
| EN_C | 755 | 50.66 | 2.507 | 37.35 | 1.846 | 0.5801 | 0.2249 | 0.5854 |
| RF_C | 755 | 26.78 | 1.002 | 26.55 | 1.02 | 0.4609 | 0.2539 | 0.4212 |
| EN_D | 755 | 28.27 | 1.236 | 26.64 | 1.23 | 0.5404 | 0.3631 | 0.6331 |
| RF_D | 755 | 23.69 | 1.108 | 21.48 | 1.048 | 0.506 | 0.378 | 0.5934 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.01861 | 1 |
| iv_skew_1m | 0.01419 | 1 |
| vix3m_spread | -0.01299 | 1 |
| rv_m | 0.01288 | 1 |
| es_C_m | 0.01265 | 1 |
| es_J_m | 0.01173 | 1 |
| iv_term | -0.01166 | 1 |
| vix9d_spread | 0.01124 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_rsn_w | 0.04289 |
| news_sent | 0.03857 |
| es_sqrtrq_rv | 0.03521 |
| es_rsp_w | 0.0339 |
| es_J_m | 0.03311 |
| rv_d | 0.03081 |
| parkinson_w | 0.03014 |
| log_vxn | 0.02915 |

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
| SPY | 1 | RF_C | 0.7055 | 3.262e-05 | yes | yes | 0.7411 | yes | HAR_A EN_A EN_C EN_D | NaN | NaN |
| SPY | 5 | RF_D | 0.9142 | 0.03703 | yes | yes | 0.8482 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| SPY | 22 | RF_A | 0.9217 | 0.2217 | yes | no | 1.043 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 28.52 | -0.08314 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 0.952 | 1.497 | 0.5641 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.05 |
| SPY | 1 | all-model common days | EN | A | 1 | 1 | 1.355e-09 | no | 1.05 |
| SPY | 1 | all-model common days | RF | A | 0.8151 | 0.9716 | 0.001991 | no | 0.8561 |
| SPY | 1 | all-model common days | EN | C | 1.596 | 0.8645 | 0.0004503 | no | 1.676 |
| SPY | 1 | all-model common days | RF | C | 0.7055 | 0.9603 | 6.523e-05 | yes | 0.7411 |
| SPY | 1 | all-model common days | EN | D | 0.9782 | 0.8718 | 0.8465 | no | 1.028 |
| SPY | 1 | all-model common days | RF | D | 0.7137 | 0.829 | 0.001697 | yes | 0.7497 |
| SPY | 1 | sets A-C common days | PER | A | 1.06 | 1.291 | 0.2824 | no | 1 |
| SPY | 1 | sets A-C common days | HAR | A | 1 | 1 | NaN | no | 0.9433 |
| SPY | 1 | sets A-C common days | EN | A | 1 | 0.9998 | 0.1723 | no | 0.9433 |
| SPY | 1 | sets A-C common days | RF | A | 0.8871 | 1.01 | 0.0006122 | no | 0.8368 |
| SPY | 1 | sets A-C common days | EN | C | 2.626 | 0.926 | 8.072e-08 | no | 2.477 |
| SPY | 1 | sets A-C common days | RF | C | 0.7773 | 0.9842 | 1.619e-09 | yes | 0.7332 |
| SPY | 5 | all-model common days | PER | A | 1.078 | 1.313 | 0.5383 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.9278 |
| SPY | 5 | all-model common days | EN | A | 1 | 1 | 5.254e-06 | yes | 0.9278 |
| SPY | 5 | all-model common days | RF | A | 1.036 | 1.414 | 0.6389 | yes | 0.9611 |
| SPY | 5 | all-model common days | EN | C | 1.625 | 0.8356 | 0.009868 | yes | 1.508 |
| SPY | 5 | all-model common days | RF | C | 0.9668 | 0.9028 | 0.5196 | yes | 0.897 |
| SPY | 5 | all-model common days | EN | D | 0.9347 | 0.7837 | 0.1293 | yes | 0.8672 |
| SPY | 5 | all-model common days | RF | D | 0.9142 | 0.7953 | 0.07406 | yes | 0.8482 |
| SPY | 5 | sets A-C common days | PER | A | 1.092 | 1.328 | 0.2363 | yes | 1 |
| SPY | 5 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9159 |
| SPY | 5 | sets A-C common days | EN | A | 1.002 | 0.9962 | 0.1703 | yes | 0.9176 |
| SPY | 5 | sets A-C common days | RF | A | 0.9879 | 1.326 | 0.7844 | yes | 0.9047 |
| SPY | 5 | sets A-C common days | EN | C | 3.157 | 0.9741 | 1.124e-07 | no | 2.891 |
| SPY | 5 | sets A-C common days | RF | C | 0.9163 | 0.9531 | 0.01611 | yes | 0.8392 |
| SPY | 22 | all-model common days | PER | A | 0.8839 | 0.9874 | 0.7179 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.131 |
| SPY | 22 | all-model common days | EN | A | 1 | 1 | 0.005632 | yes | 1.131 |
| SPY | 22 | all-model common days | RF | A | 0.9217 | 1.189 | 0.4433 | yes | 1.043 |
| SPY | 22 | all-model common days | EN | C | 0.955 | 0.8047 | 0.5788 | yes | 1.08 |
| SPY | 22 | all-model common days | RF | C | 1.197 | 1.031 | 0.1763 | yes | 1.354 |
| SPY | 22 | all-model common days | EN | D | 1.061 | 0.7067 | 0.6923 | yes | 1.2 |
| SPY | 22 | all-model common days | RF | D | 1.058 | 0.7054 | 0.4985 | yes | 1.197 |
| SPY | 22 | sets A-C common days | PER | A | 1.104 | 1.066 | 0.6218 | yes | 1 |
| SPY | 22 | sets A-C common days | HAR | A | 1 | 1 | NaN | yes | 0.9056 |
| SPY | 22 | sets A-C common days | EN | A | 1.01 | 0.9809 | 0.2877 | yes | 0.9151 |
| SPY | 22 | sets A-C common days | RF | A | 0.9713 | 1.491 | 0.7167 | yes | 0.8796 |
| SPY | 22 | sets A-C common days | EN | C | 3.981 | 1.099 | 0.01743 | no | 3.605 |
| SPY | 22 | sets A-C common days | RF | C | 1.144 | 1.316 | 0.1805 | yes | 1.036 |

