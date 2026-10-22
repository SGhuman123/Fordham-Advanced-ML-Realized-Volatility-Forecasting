# Results: test period, scenario "ffdlags"

Generated 2026-10-21 23:43 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## SPY target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2118)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2118 | 0.3079 | 2.867 | 0.4628 | 0.4065 | 1.308 | 1.258 | -6.324 | 3.109e-10 | 1 | -1.487 | 0.1371 | no | 0.0554 | yes | 0.5726 | 0 | 1 | NaN |
| HAR | A | 2118 | 0.2354 | 2.278 | 0.4408 | 0.5284 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0554 | yes | 0.7814 | 0 | 0.7646 | 1.554e-10 |
| EN | AL | 2118 | 0.4565 | 4.152 | 0.6457 | 0.1406 | 1.939 | 1.822 | -6.939 | 5.241e-12 | 1 | -1.421 | 0.1553 | no | 0.0202 | yes | 0.3608 | 0.7554 | 1.482 | 1 |
| RF | AL | 2118 | 0.2433 | 2.277 | 0.4564 | 0.5288 | 1.033 | 0.9992 | -1.048 | 0.2946 | 0.8527 | 0.003894 | 0.9969 | no | 0.0554 | yes | 0.7814 | 0 | 0.7901 | 2.712e-18 |
| EN | BL | 2118 | 0.4667 | 2.327 | 0.4495 | 0.5182 | 1.982 | 1.022 | -3.721 | 0.0002036 | 0.9999 | -0.1543 | 0.8774 | no | 0.033 | yes | 0.7814 | 1.889 | 1.516 | 0.9942 |
| RF | BL | 2118 | 0.1988 | 1.93 | 0.4087 | 0.6006 | 0.8443 | 0.8469 | 4.964 | 7.439e-07 | 3.72e-07 | 1.052 | 0.2927 | yes | 0.6736 | yes | 0.7814 | 0 | 0.6455 | 5.712e-19 |
| EN | CL | 2118 | 0.4292 | 2.339 | 0.4485 | 0.5158 | 1.823 | 1.027 | -3.382 | 0.0007335 | 0.9996 | -0.1882 | 0.8507 | no | 0.0554 | yes | 0.7814 | 1.841 | 1.394 | 0.9811 |
| RF | CL | 2118 | 0.1974 | 1.852 | 0.4049 | 0.6168 | 0.8384 | 0.8127 | 5.231 | 1.857e-07 | 9.283e-08 | 1.316 | 0.1885 | yes | 1 | yes | 1 | 0 | 0.641 | 9.982e-21 |
| EN | DL | 2118 | 0.4858 | 2.399 | 0.4144 | 0.5034 | 2.063 | 1.053 | -3.374 | 0.0007529 | 0.9996 | -0.3327 | 0.7394 | no | 0.0554 | yes | 0.5726 | 2.833 | 1.578 | 0.9916 |
| RF | DL | 2118 | 0.212 | 2.835 | 0.4367 | 0.4132 | 0.9004 | 1.244 | 2.331 | 0.01986 | 0.009928 | -0.565 | 0.5721 | yes | 0.1582 | yes | 0.7814 | 0 | 0.6884 | 2.751e-12 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1608 | 0.2388 | 1.356 | 1 | 1.907 | 1.021 | 2.264 | 0.8772 | 2.059 | 0.8611 | 2.408 | 0.8973 |
| High RV (monthly RV > threshold) | 510 | 0.2247 | 1.147 | 1 | 2.046 | 1.074 | 1.039 | 0.7342 | 1.034 | 0.762 | 0.9095 | 0.9108 |
| Normal days (target <= Q3 + 1.5 IQR) | 1935 | 0.2035 | 1.388 | 1 | 1.968 | 1.067 | 2.364 | 0.9359 | 2.163 | 0.9252 | 2.402 | 0.9408 |
| Extreme days (target > Q3 + 1.5 IQR) | 183 | 0.5736 | 1.01 | 1 | 1.83 | 0.9086 | 0.5507 | 0.5009 | 0.5483 | 0.5127 | 0.7929 | 0.7492 |
| Feb 2018 Volmageddon | 17 | 0.1429 | 1.456 | 1 | 1.241 | 0.9737 | 0.6702 | 1.232 | 0.7325 | 1.337 | 0.9948 | 1.481 |
| COVID 2020 | 70 | 0.329 | 0.9173 | 1 | 4.908 | 0.9484 | 0.7988 | 0.7302 | 0.8085 | 0.7443 | 0.998 | 1.484 |
| 2022 bear market | 203 | 0.1593 | 1.295 | 1 | 1.095 | 1.293 | 0.6864 | 0.673 | 0.6864 | 0.671 | 0.9576 | 0.7907 |
| Apr 2025 tariffs | 42 | 0.4742 | 0.7318 | 1 | 1.945 | 0.5624 | 0.6357 | 0.4413 | 0.6385 | 0.4061 | 0.6192 | 0.4062 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.307 | 4 |
| HAR | A | 3.54 | 4 |
| EN | AL | 3.143 | 4 |
| RF | AL | 3.5 | 4 |
| EN | BL | 2.896 | 4 |
| RF | BL | 3.622 | 4 |
| EN | CL | 3.006 | 4 |
| RF | CL | 3.621 | 4 |
| EN | DL | 2.757 | 4 |
| RF | DL | 3.586 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.08126 | 1 |
| negret_w | -0.06993 | 1 |
| vix9d_spread | 0.06241 | 1 |
| es_rsn_d | 0.0623 | 1 |
| es_C_d | 0.05844 | 1 |
| vrp | 0.05715 | 1 |
| es_rk_d | 0.05632 | 1 |
| overnight_d | 0.04723 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2219 |
| negret_w | 0.1108 |
| es_C_d | 0.1021 |
| es_rsn_d | 0.0958 |
| vix3m_spread | 0.04884 |
| log_rv | 0.04621 |
| es_rk_d | 0.04395 |
| iv_term | 0.03856 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_DL | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_DL | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 27.

## SPY target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-28, n = 2135)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2135 | 0.2937 | 2.226 | 0.4699 | 0.3714 | 1.366 | 1.204 | -4.993 | 6.427e-07 | 1 | -1.036 | 0.3004 | yes | 0.1114 | yes | 0.7562 | 0 | 1 | NaN |
| HAR | A | 2135 | 0.215 | 1.848 | 0.4443 | 0.4781 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.4176 | yes | 0.7898 | 0 | 0.732 | 3.214e-07 |
| EN | AL | 2135 | 0.3916 | 3.023 | 0.6041 | 0.1464 | 1.821 | 1.635 | -4.862 | 1.249e-06 | 1 | -1.126 | 0.2601 | no | 0.086 | yes | 0.5608 | 0.3279 | 1.333 | 0.9891 |
| RF | AL | 2135 | 0.2342 | 1.761 | 0.4545 | 0.5026 | 1.089 | 0.953 | -1.97 | 0.04892 | 0.9755 | 0.4113 | 0.6809 | yes | 0.3012 | yes | 0.7898 | 0 | 0.7975 | 0.0005867 |
| EN | BL | 2135 | 0.2245 | 2.211 | 0.478 | 0.3755 | 1.044 | 1.197 | -0.6286 | 0.5297 | 0.7352 | -0.6346 | 0.5257 | yes | 0.3256 | yes | 0.7562 | 0 | 0.7643 | 0.004612 |
| RF | BL | 2135 | 0.1885 | 1.694 | 0.4341 | 0.5217 | 0.8769 | 0.9165 | 2.494 | 0.01269 | 0.006345 | 0.7055 | 0.4806 | yes | 1 | yes | 1 | 0 | 0.6419 | 4.028e-07 |
| EN | CL | 2135 | 0.4939 | 2.13 | 0.4753 | 0.3984 | 2.297 | 1.153 | -3.351 | 0.0008194 | 0.9996 | -0.5922 | 0.5538 | yes | 0.1114 | yes | 0.7562 | 1.639 | 1.681 | 0.9919 |
| RF | CL | 2135 | 0.1909 | 1.742 | 0.4477 | 0.508 | 0.888 | 0.9427 | 2.455 | 0.01416 | 0.007082 | 0.5808 | 0.5614 | yes | 0.4986 | yes | 0.7898 | 0 | 0.6501 | 2.055e-07 |
| EN | DL | 2135 | 0.6004 | 2.207 | 0.44 | 0.3768 | 2.793 | 1.194 | -3.66 | 0.0002586 | 0.9999 | -0.6533 | 0.5136 | no | 0.086 | yes | 0.7562 | 2.67 | 2.044 | 0.9983 |
| RF | DL | 2135 | 0.2414 | 2.881 | 0.4792 | 0.1865 | 1.123 | 1.559 | -0.8294 | 0.407 | 0.7965 | -0.9798 | 0.3273 | yes | 0.4176 | yes | 0.6414 | 0 | 0.8219 | 0.08238 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1619 | 0.2056 | 1.437 | 1 | 1.861 | 1.085 | 1.096 | 0.8907 | 2.783 | 0.8873 | 3.357 | 0.9501 |
| High RV (monthly RV > threshold) | 516 | 0.2446 | 1.178 | 1 | 1.717 | 1.101 | 0.9074 | 0.8405 | 1.017 | 0.8899 | 1.305 | 1.578 |
| Normal days (target <= Q3 + 1.5 IQR) | 1950 | 0.1575 | 1.461 | 1 | 2.068 | 1.168 | 1.249 | 0.9786 | 3.064 | 0.9774 | 3.737 | 1.025 |
| Extreme days (target > Q3 + 1.5 IQR) | 185 | 0.8215 | 1.174 | 1 | 1.324 | 0.9312 | 0.6301 | 0.6713 | 0.7469 | 0.7074 | 0.8841 | 1.321 |
| Feb 2018 Volmageddon | 15 | 0.1518 | 1.6 | 1 | 0.5009 | 1.199 | 0.4119 | 1.212 | 0.4617 | 1.349 | 1.063 | 1.124 |
| COVID 2020 | 70 | 0.6643 | 1.039 | 1 | 2.743 | 0.712 | 1.022 | 0.7125 | 1.127 | 0.7719 | 1.088 | 2.669 |
| 2022 bear market | 206 | 0.1373 | 1.221 | 1 | 0.7566 | 1.43 | 0.5499 | 0.7919 | 0.6109 | 0.8361 | 1.878 | 0.9625 |
| Apr 2025 tariffs | 42 | 1.029 | 1.104 | 1 | 0.9646 | 0.7529 | 0.6207 | 0.7218 | 0.6377 | 0.7466 | 0.5874 | 0.6365 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.323 | 4 |
| HAR | A | 3.549 | 4 |
| EN | AL | 3.221 | 4 |
| RF | AL | 3.497 | 4 |
| EN | BL | 3.569 | 4 |
| RF | BL | 3.616 | 4 |
| EN | CL | 2.755 | 4 |
| RF | CL | 3.607 | 4 |
| EN | DL | 2.398 | 4 |
| RF | DL | 3.475 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.07298 | 0.8889 |
| negret_w | -0.05602 | 1 |
| vrp | 0.05532 | 1 |
| vix9d_spread | 0.04765 | 1 |
| es_rsn_d | 0.04552 | 1 |
| vix3m_spread | -0.04483 | 1 |
| es_C_d | 0.0437 | 0.8889 |
| iv_term | -0.0421 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1054 |
| negret_w | 0.08131 |
| vix3m_spread | 0.06622 |
| log_vxn | 0.05893 |
| es_rsn_d | 0.0581 |
| vix9d_spread | 0.05305 |
| iv_atm_1m | 0.04935 |
| es_rk_d | 0.0481 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_DL | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_DL | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 9.

## SPY target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-09-01, n = 2109)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2109 | 0.5021 | 3.151 | 0.6183 | -0.4123 | 1.508 | 1.55 | -1.78 | 0.07526 | 0.9624 | -1.315 | 0.1886 | yes | 0.4792 | yes | 0.5354 | 0 | 1 | NaN |
| HAR | A | 2109 | 0.3329 | 2.032 | 0.5384 | 0.08907 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.6894 | yes | 0.7972 | 0 | 0.6631 | 0.03763 |
| EN | AL | 2109 | 0.3748 | 1.968 | 0.5855 | 0.1181 | 1.126 | 0.9681 | -1.089 | 0.2762 | 0.8619 | 0.2223 | 0.8241 | yes | 0.5478 | yes | 0.7972 | 0.04742 | 0.7466 | 0.1576 |
| RF | AL | 2109 | 0.3747 | 1.714 | 0.5472 | 0.2317 | 1.125 | 0.8434 | -2.315 | 0.02071 | 0.9896 | 0.7412 | 0.4586 | yes | 0.5228 | yes | 1 | 0 | 0.7463 | 0.1021 |
| EN | BL | 2109 | 0.3212 | 1.818 | 0.5145 | 0.1853 | 0.9647 | 0.8943 | 0.4088 | 0.6828 | 0.3414 | 0.7988 | 0.4245 | yes | 1 | yes | 0.8916 | 0 | 0.6397 | 0.06362 |
| RF | BL | 2109 | 0.3867 | 1.747 | 0.5466 | 0.217 | 1.161 | 0.8596 | -1.989 | 0.0468 | 0.9766 | 0.997 | 0.3189 | yes | 0.5478 | yes | 0.8916 | 0 | 0.7701 | 0.06573 |
| EN | CL | 2109 | 0.3341 | 1.889 | 0.534 | 0.1532 | 1.004 | 0.9297 | -0.05666 | 0.9548 | 0.5226 | 0.5859 | 0.558 | yes | 0.654 | yes | 0.7972 | 0 | 0.6655 | 0.06566 |
| RF | CL | 2109 | 0.3453 | 1.819 | 0.5223 | 0.1845 | 1.037 | 0.8952 | -0.7415 | 0.4585 | 0.7708 | 0.8619 | 0.3888 | yes | 0.5478 | yes | 0.8916 | 0 | 0.6877 | 0.06233 |
| EN | DL | 2109 | 0.4244 | 1.848 | 0.4795 | 0.1717 | 1.275 | 0.9093 | -1.822 | 0.06854 | 0.9657 | 0.6551 | 0.5125 | yes | 0.5136 | yes | 0.8624 | 0.04742 | 0.8453 | 0.1766 |
| RF | DL | 2109 | 0.4498 | 2.228 | 0.5767 | 0.001395 | 1.351 | 1.096 | -1.905 | 0.05686 | 0.9716 | -0.5249 | 0.5997 | yes | 0.51 | yes | 0.6646 | 0 | 0.8959 | 0.2218 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1593 | 0.3501 | 1.543 | 1 | 1.109 | 1.099 | 0.9669 | 1.19 | 0.9922 | 1.01 | 1.32 | 1.235 |
| High RV (monthly RV > threshold) | 516 | 0.2799 | 1.372 | 1 | 1.193 | 1.227 | 0.9565 | 1.05 | 1.047 | 1.141 | 1.099 | 1.8 |
| Normal days (target <= Q3 + 1.5 IQR) | 1966 | 0.1733 | 1.441 | 1 | 1.453 | 1.228 | 1.152 | 1.186 | 1.145 | 1.091 | 1.352 | 1.263 |
| Extreme days (target > Q3 + 1.5 IQR) | 143 | 2.528 | 1.571 | 1 | 0.8173 | 1.029 | 0.7884 | 1.138 | 0.87 | 0.986 | 1.202 | 1.434 |
| Feb 2018 Volmageddon | 14 | 0.08687 | 0.8673 | 1 | 0.2635 | 3.707 | 1.529 | 3.174 | 1.68 | 3.414 | 1.865 | 2.317 |
| COVID 2020 | 70 | 1.563 | 2.027 | 1 | 1.073 | 0.5515 | 0.8107 | 0.8966 | 0.9919 | 0.9056 | 1.183 | 2.042 |
| 2022 bear market | 206 | 0.1656 | 1.48 | 1 | 0.5407 | 1.658 | 0.6962 | 1.297 | 0.6611 | 1.071 | 1.557 | 1.331 |
| Apr 2025 tariffs | 42 | 0.5158 | 1.618 | 1 | 0.6299 | 0.6097 | 0.7143 | 0.6269 | 0.6244 | 0.7655 | 0.5292 | 0.5936 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.701 | 4 |
| HAR | A | 3.209 | 4 |
| EN | AL | 3.207 | 4 |
| RF | AL | 3.095 | 4 |
| EN | BL | 3.27 | 4 |
| RF | BL | 3.065 | 4 |
| EN | CL | 3.234 | 4 |
| RF | CL | 3.187 | 4 |
| EN | DL | 2.908 | 4 |
| RF | DL | 2.923 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target (SPY rescaled by the training close-to-close / RV ratio); "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2109 | 89.01 | 1.842 | 70.7 | 1.045 | NaN | NaN | 1 |
| PER_A | 2109 | 47.51 | 0.9904 | 37.52 | 0.5713 | 0.7321 | -0.1066 | 0.8241 |
| HAR_A | 2109 | 54.46 | 1.543 | 52.42 | 1.198 | 0.6652 | 0.09609 | 0.7506 |
| EN_AL | 2109 | 70.83 | 2.622 | 54.89 | 1.747 | 0.4931 | 0.1271 | 0.4523 |
| RF_AL | 2109 | 99.4 | 3.401 | 98.31 | 3.267 | 0.6989 | 0.2763 | 0.7757 |
| EN_BL | 2109 | 86.18 | 2.516 | 64.37 | 1.379 | 0.6615 | 0.1192 | 0.7421 |
| RF_BL | 2109 | 55.85 | 1.564 | 45.5 | 1.071 | 0.6586 | 0.1731 | 0.7923 |
| EN_CL | 2109 | 60.08 | 1.35 | 36.68 | 0.5598 | 0.6529 | 0.09881 | 0.7449 |
| RF_CL | 2109 | 58.59 | 1.325 | 38.51 | 0.6323 | 0.6799 | 0.1211 | 0.8042 |
| EN_DL | 2109 | 74.15 | 1.554 | 52.27 | 0.777 | 0.7283 | 0.1082 | 0.8649 |
| RF_DL | 2109 | 39.95 | 0.8351 | 16.93 | 0.2524 | 0.6306 | 0.07709 | 0.7558 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.07052 | 1 |
| iv_skew_1m | 0.05437 | 1 |
| es_rsp_d | 0.04749 | 1 |
| es_J_w | 0.04674 | 0.8889 |
| negret_w | -0.03916 | 1 |
| vix9d_spread | 0.03789 | 1 |
| iv_term | -0.03141 | 0.8889 |
| vrp | 0.02925 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.08784 |
| log_vxn | 0.0447 |
| negret_w | 0.03541 |
| vix9d_spread | 0.03496 |
| negret_m | 0.03473 |
| iv_skew_1m | 0.03142 |
| es_rsn_w | 0.03108 |
| es_C_d | 0.03082 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_DL | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_DL | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 18.

## ES target, h = 1

### Accuracy, all models on common days (2018-01-02 to 2026-09-29, n = 2197)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2197 | 0.2339 | 6.124 | 0.7095 | 0.5804 | 1.211 | 1.124 | -6.009 | 2.181e-09 | 1 | -0.8842 | 0.3767 | no | 0.0762 | yes | 0.6498 | 0 | 1 | NaN |
| HAR | A | 2197 | 0.1931 | 5.45 | 0.6783 | 0.6266 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.8308 | yes | 1 | 0 | 0.8257 | 1.091e-09 |
| EN | AL | 2197 | 0.3945 | 12.78 | 0.9554 | 0.124 | 2.043 | 2.346 | -4.188 | 2.928e-05 | 1 | -1.389 | 0.1651 | no | 0.0626 | yes | 0.2668 | 1.32 | 1.687 | 0.9994 |
| RF | AL | 2197 | 0.2312 | 11.02 | 0.8025 | 0.245 | 1.198 | 2.022 | -2.233 | 0.02562 | 0.9872 | -1.269 | 0.2045 | no | 0.0762 | yes | 0.2616 | 0 | 0.9887 | 0.4409 |
| EN | BL | 2197 | 0.2994 | 9.168 | 0.7861 | 0.3718 | 1.55 | 1.682 | -3.778 | 0.0001625 | 0.9999 | -1.154 | 0.2486 | no | 0.0626 | yes | 0.4036 | 1.73 | 1.28 | 0.9869 |
| RF | BL | 2197 | 0.1982 | 9.835 | 0.7345 | 0.3261 | 1.026 | 1.805 | -0.291 | 0.7711 | 0.6145 | -0.993 | 0.3208 | yes | 0.7972 | yes | 0.6292 | 0 | 0.8473 | 0.03123 |
| EN | CL | 2197 | 0.4883 | 9.144 | 0.7789 | 0.3734 | 2.529 | 1.678 | -4.338 | 1.505e-05 | 1 | -1.147 | 0.2516 | no | 0.0626 | yes | 0.4036 | 4.415 | 2.088 | 0.9999 |
| RF | CL | 2197 | 0.1866 | 7.414 | 0.7141 | 0.4919 | 0.9665 | 1.361 | 0.8349 | 0.4039 | 0.2019 | -0.7541 | 0.4509 | yes | 1 | yes | 0.6498 | 0 | 0.798 | 2.123e-06 |
| EN | DL | 2197 | 0.2069 | 6.931 | 0.7012 | 0.5251 | 1.072 | 1.272 | -1.329 | 0.1839 | 0.908 | -0.9291 | 0.3529 | yes | 0.4364 | yes | 0.6468 | 0.5007 | 0.8847 | 0.01658 |
| RF | DL | 2197 | 0.189 | 9.342 | 0.7289 | 0.3599 | 0.9788 | 1.714 | 0.3387 | 0.7349 | 0.3674 | -0.9924 | 0.3211 | yes | 0.8308 | yes | 0.6082 | 0 | 0.8082 | 0.0007011 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1459 | 0.1946 | 1.237 | 1 | 1.81 | 1.036 | 1.741 | 0.9491 | 3.174 | 0.9826 | 1.155 | 0.9462 |
| High RV (monthly RV > threshold) | 738 | 0.1901 | 1.159 | 1 | 2.515 | 1.525 | 1.165 | 1.182 | 1.224 | 0.9339 | 0.9025 | 1.045 |
| Normal days (target <= Q3 + 1.5 IQR) | 2007 | 0.161 | 1.296 | 1 | 1.759 | 1.114 | 1.735 | 1.007 | 3.019 | 1.059 | 1.159 | 0.9972 |
| Extreme days (target > Q3 + 1.5 IQR) | 190 | 0.5323 | 0.9405 | 1 | 2.951 | 1.465 | 0.9599 | 1.087 | 0.9648 | 0.6697 | 0.7933 | 0.9201 |
| Feb 2018 Volmageddon | 43 | 0.3864 | 0.9705 | 1 | 1.298 | 0.9563 | 0.6227 | 0.9789 | 0.5812 | 0.9688 | 0.6829 | 0.9963 |
| COVID 2020 | 70 | 0.222 | 0.7914 | 1 | 12.01 | 4.144 | 2.993 | 4.009 | 2.993 | 1.351 | 1.543 | 2.719 |
| 2022 bear market | 209 | 0.1659 | 1.179 | 1 | 0.9263 | 1.328 | 1.403 | 0.7171 | 1.395 | 0.686 | 0.8474 | 0.7361 |
| Apr 2025 tariffs | 42 | 0.4398 | 0.9456 | 1 | 2.052 | 1.128 | 0.7004 | 0.5112 | 0.7004 | 0.5735 | 0.6512 | 0.5831 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.478 | 4 |
| HAR | A | 3.605 | 4 |
| EN | AL | 3.157 | 4 |
| RF | AL | 3.497 | 4 |
| EN | BL | 3.338 | 4 |
| RF | BL | 3.591 | 4 |
| EN | CL | 2.775 | 4 |
| RF | CL | 3.634 | 4 |
| EN | DL | 3.573 | 4 |
| RF | DL | 3.615 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| parkinson_d | 0.1253 | 1 |
| es_rsn_d | 0.1201 | 1 |
| es_C_d | 0.1158 | 1 |
| es_rk_d | 0.1105 | 1 |
| negret_w | -0.1101 | 1 |
| vix9d_spread | 0.1085 | 1 |
| overnight_d | 0.1029 | 1 |
| es_rsn_w | 0.09352 | 1 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| vix9d_spread | 0.2377 |
| negret_w | 0.1182 |
| es_rsn_d | 0.09266 |
| es_C_d | 0.09072 |
| es_rk_d | 0.07077 |
| log_rv | 0.07023 |
| iv_term | 0.05725 |
| vix3m_spread | 0.04014 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_DL | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_DL | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 5

### Accuracy, all models on common days (2018-01-02 to 2026-09-23, n = 2193)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2193 | 0.2813 | 6.394 | 0.7824 | 0.4566 | 1.304 | 1.128 | -4.267 | 2.064e-05 | 1 | -0.5137 | 0.6075 | yes | 0.6498 | yes | 0.6668 | 0 | 1 | NaN |
| HAR | A | 2193 | 0.2157 | 5.668 | 0.7286 | 0.5183 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.7667 | 1.032e-05 |
| EN | AL | 2193 | 0.43 | 10.36 | 0.9141 | 0.1198 | 1.993 | 1.827 | -3.526 | 0.0004306 | 0.9998 | -1.236 | 0.2168 | no | 0.0606 | yes | 0.5286 | 1.322 | 1.528 | 0.9884 |
| RF | AL | 2193 | 0.2948 | 10.18 | 0.8325 | 0.1352 | 1.367 | 1.795 | -1.707 | 0.088 | 0.956 | -1.205 | 0.2282 | yes | 0.494 | yes | 0.5286 | 0 | 1.048 | 0.6029 |
| EN | BL | 2193 | 0.7986 | 8.251 | 0.7954 | 0.2989 | 3.702 | 1.456 | -4.23 | 2.43e-05 | 1 | -1.051 | 0.2933 | no | 0.0444 | yes | 0.643 | 4.925 | 2.839 | 0.9999 |
| RF | BL | 2193 | 0.29 | 10.12 | 0.8261 | 0.1404 | 1.345 | 1.785 | -1.422 | 0.1552 | 0.9224 | -1.169 | 0.2427 | yes | 0.6498 | yes | 0.6022 | 0 | 1.031 | 0.5608 |
| EN | CL | 2193 | 0.7867 | 7.742 | 0.7829 | 0.3421 | 3.647 | 1.366 | -4.157 | 3.348e-05 | 1 | -0.9787 | 0.3279 | no | 0.0564 | yes | 0.6668 | 4.97 | 2.797 | 0.9999 |
| RF | CL | 2193 | 0.2381 | 9.069 | 0.7947 | 0.2294 | 1.104 | 1.6 | -0.9323 | 0.3513 | 0.8244 | -1.07 | 0.2846 | yes | 0.6498 | yes | 0.643 | 0 | 0.8463 | 0.07567 |
| EN | DL | 2193 | 0.4507 | 7.454 | 0.758 | 0.3666 | 2.09 | 1.315 | -3.504 | 0.0004674 | 0.9998 | -1.008 | 0.3133 | yes | 0.179 | yes | 0.645 | 2.827 | 1.602 | 0.9934 |
| RF | DL | 2193 | 0.2912 | 10.29 | 0.8395 | 0.1256 | 1.35 | 1.815 | -1.363 | 0.1731 | 0.9135 | -1.2 | 0.2302 | yes | 0.6498 | yes | 0.5608 | 0 | 1.035 | 0.5653 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1455 | 0.222 | 1.393 | 1 | 1.82 | 1.044 | 4.302 | 1.06 | 4.285 | 1.012 | 2.491 | 0.9977 |
| High RV (monthly RV > threshold) | 738 | 0.2033 | 1.112 | 1 | 2.366 | 2.061 | 2.411 | 1.957 | 2.274 | 1.301 | 1.225 | 2.108 |
| Normal days (target <= Q3 + 1.5 IQR) | 1994 | 0.1471 | 1.425 | 1 | 2.116 | 1.21 | 5.433 | 1.107 | 5.412 | 1.098 | 2.908 | 1.075 |
| Extreme days (target > Q3 + 1.5 IQR) | 199 | 0.9028 | 1.107 | 1 | 1.793 | 1.622 | 0.8757 | 1.732 | 0.7649 | 1.113 | 0.7529 | 1.798 |
| Feb 2018 Volmageddon | 43 | 1.018 | 1.307 | 1 | 0.554 | 0.7665 | 0.6361 | 1.405 | 0.6361 | 1.248 | 0.6157 | 1.11 |
| COVID 2020 | 70 | 0.7078 | 0.9768 | 1 | 4.477 | 3.678 | 1.525 | 4.057 | 1.197 | 2.015 | 1.082 | 4.385 |
| 2022 bear market | 209 | 0.1553 | 1.004 | 1 | 0.6059 | 1.195 | 4.759 | 0.6501 | 4.517 | 0.6188 | 1.263 | 0.6983 |
| Apr 2025 tariffs | 42 | 0.6073 | 1.221 | 1 | 1.322 | 0.9452 | 0.8464 | 0.8923 | 0.7918 | 0.9243 | 0.6963 | 1.064 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.346 | 4 |
| HAR | A | 3.533 | 4 |
| EN | AL | 2.998 | 4 |
| RF | AL | 3.31 | 4 |
| EN | BL | 1.8 | 4 |
| RF | BL | 3.326 | 4 |
| EN | CL | 1.834 | 4 |
| RF | CL | 3.479 | 4 |
| EN | DL | 2.862 | 4 |
| RF | DL | 3.319 | 4 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_J_w | 0.1336 | 0.6667 |
| es_rsn_d | 0.1093 | 1 |
| negret_w | -0.1078 | 1 |
| iv_term | -0.1077 | 1 |
| vix9d_spread | 0.1036 | 1 |
| overnight_d | 0.09251 | 0.7778 |
| es_C_d | 0.08994 | 0.7778 |
| es_rk_d | 0.08628 | 0.8889 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.2113 |
| es_rsn_d | 0.05323 |
| iv_atm_1m | 0.05031 |
| es_C_d | 0.04361 |
| log_vxn | 0.0434 |
| vix3m_spread | 0.03971 |
| log_vix | 0.03943 |
| overnight_d | 0.0385 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_DL | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_DL | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## ES target, h = 22

### Accuracy, all models on common days (2018-01-02 to 2026-08-28, n = 2176)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 2176 | 0.6032 | 10.5 | 1.079 | -0.3754 | 1.559 | 1.664 | -2.029 | 0.04261 | 0.9787 | -1.233 | 0.2179 | yes | 0.5962 | yes | 0.4938 | 0 | 1 | NaN |
| HAR | A | 2176 | 0.3869 | 6.309 | 0.874 | 0.1736 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 1 | yes | 1 | 0 | 0.6415 | 0.0213 |
| EN | AL | 2176 | 0.5493 | 7.164 | 0.9078 | 0.0617 | 1.42 | 1.135 | -1.934 | 0.05325 | 0.9734 | -0.7607 | 0.4469 | yes | 0.5962 | yes | 0.8004 | 0.9191 | 0.9108 | 0.3359 |
| RF | AL | 2176 | 0.4365 | 7.113 | 0.8903 | 0.06838 | 1.128 | 1.127 | -1.444 | 0.149 | 0.9255 | -0.883 | 0.3773 | yes | 0.5962 | yes | 0.5092 | 0 | 0.7237 | 0.0471 |
| EN | BL | 2176 | 0.6371 | 6.895 | 0.8865 | 0.09694 | 1.647 | 1.093 | -2.297 | 0.02173 | 0.9891 | -0.7 | 0.484 | yes | 0.5962 | yes | 0.8004 | 0.4136 | 1.056 | 0.594 |
| RF | BL | 2176 | 0.564 | 8.777 | 1.249 | -0.1496 | 1.458 | 1.391 | -2.754 | 0.00594 | 0.997 | -2.088 | 0.03695 | yes | 0.5962 | yes | 0.2422 | 0 | 0.9351 | 0.3437 |
| EN | CL | 2176 | 0.6474 | 7.031 | 0.8906 | 0.0791 | 1.673 | 1.114 | -2.4 | 0.01648 | 0.9918 | -0.7575 | 0.4488 | yes | 0.4056 | yes | 0.8004 | 0.4136 | 1.073 | 0.6303 |
| RF | CL | 2176 | 0.4649 | 7.097 | 0.923 | 0.07051 | 1.201 | 1.125 | -1.489 | 0.1365 | 0.9317 | -0.7649 | 0.4444 | yes | 0.5962 | yes | 0.8004 | 0 | 0.7707 | 0.07013 |
| EN | DL | 2176 | 0.4787 | 6.952 | 0.889 | 0.08945 | 1.237 | 1.102 | -2.248 | 0.0247 | 0.9876 | -0.9729 | 0.3307 | yes | 0.5962 | yes | 0.8004 | 0.1379 | 0.7937 | 0.09073 |
| RF | DL | 2176 | 0.4512 | 7.077 | 0.9112 | 0.07307 | 1.166 | 1.122 | -1.324 | 0.1855 | 0.9072 | -0.7692 | 0.4419 | yes | 0.5962 | yes | 0.8004 | 0 | 0.7481 | 0.05666 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_AL | RF_AL | EN_BL | RF_BL | EN_CL | RF_CL | EN_DL | RF_DL |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 1438 | 0.4426 | 1.662 | 1 | 1.289 | 0.9944 | 1.547 | 1.442 | 1.564 | 1.094 | 1.191 | 1.065 |
| High RV (monthly RV > threshold) | 738 | 0.2784 | 1.238 | 1 | 1.826 | 1.542 | 1.957 | 1.508 | 2.011 | 1.536 | 1.381 | 1.478 |
| Normal days (target <= Q3 + 1.5 IQR) | 2049 | 0.1925 | 1.79 | 1 | 1.664 | 1.122 | 2.386 | 1.786 | 2.355 | 1.219 | 1.525 | 1.136 |
| Extreme days (target > Q3 + 1.5 IQR) | 127 | 3.523 | 1.355 | 1 | 1.205 | 1.133 | 0.9948 | 1.169 | 1.073 | 1.186 | 0.9841 | 1.193 |
| Feb 2018 Volmageddon | 43 | 0.3806 | 3.019 | 1 | 0.4801 | 0.8297 | 0.7249 | 1.125 | 0.8714 | 1.03 | 0.8602 | 0.8504 |
| COVID 2020 | 70 | 2.273 | 1.535 | 1 | 2.095 | 1.359 | 1.433 | 1.534 | 1.659 | 1.706 | 1.265 | 1.614 |
| 2022 bear market | 209 | 0.2293 | 1.114 | 1 | 0.4003 | 1.11 | 3.958 | 0.9564 | 3.403 | 0.8256 | 1.566 | 0.8118 |
| Apr 2025 tariffs | 42 | 0.2363 | 2.917 | 1 | 0.9186 | 0.8204 | 0.8634 | 0.8672 | 0.8634 | 1.005 | 0.9935 | 0.9392 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 2.398 | 4 |
| HAR | A | 3.044 | 4 |
| EN | AL | 2.605 | 4 |
| RF | AL | 2.902 | 4 |
| EN | BL | 2.285 | 4 |
| RF | BL | 2.719 | 4 |
| EN | CL | 2.256 | 4 |
| RF | CL | 2.855 | 4 |
| EN | DL | 2.792 | 4 |
| RF | DL | 2.885 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 2176 | 89.76 | 1.772 | 68.11 | 1.037 | NaN | NaN | 1 |
| PER_A | 2176 | 31.55 | 0.6043 | 24.81 | 0.3841 | 0.7413 | -0.1283 | 0.8497 |
| HAR_A | 2176 | 59.66 | 1.271 | 45.56 | 0.756 | 0.7105 | 0.05298 | 0.8309 |
| EN_AL | 2176 | 78.61 | 2.21 | 63.63 | 1.449 | 0.6581 | 0.1063 | 0.75 |
| RF_AL | 2176 | 75.2 | 1.681 | 56.31 | 0.9624 | 0.7256 | 0.1039 | 0.8488 |
| EN_BL | 2176 | 76.32 | 1.533 | 57.7 | 0.8967 | 0.7408 | 0.1001 | 0.8869 |
| RF_BL | 2176 | 46.82 | 0.9178 | 26.96 | 0.4105 | 0.653 | 0.06559 | 0.8038 |
| EN_CL | 2176 | 79.38 | 1.685 | 63.13 | 1.058 | 0.7408 | 0.09393 | 0.886 |
| RF_CL | 2176 | 52.35 | 1.034 | 32.19 | 0.4922 | 0.6687 | 0.09262 | 0.8323 |
| EN_DL | 2176 | 65.6 | 1.293 | 47.57 | 0.7281 | 0.7312 | 0.08233 | 0.881 |
| RF_DL | 2176 | 51.19 | 1.018 | 30.03 | 0.4612 | 0.6737 | 0.09181 | 0.8355 |

### Elastic net on set DL: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| vix3m_spread | -0.1561 | 1 |
| es_J_w | 0.1328 | 0.8889 |
| es_rsp_d | 0.117 | 1 |
| iv_skew_1m | 0.1008 | 1 |
| vix9d_spread | 0.06597 | 1 |
| iv_term | -0.05741 | 0.8889 |
| dgs10 | -0.05137 | 1 |
| negret_w | -0.05005 | 0.8889 |

### Random forest on set DL: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.1052 |
| log_vxn | 0.03902 |
| es_C_d | 0.03694 |
| parkinson_w | 0.03637 |
| iv_atm_1m | 0.0353 |
| es_rk_d | 0.0322 |
| log_vix | 0.03087 |
| vix3m_spread | 0.03054 |

### Fractional differencing of inputs (proposal 4.3)

d* chosen on each training window (smallest grid value passing ADF at 95%); rho = correlation with the original series (memory retained). Inputs with d* = 0 in every fold are left out of this table.

| model_set | feature | d_min | d_median | d_max | share_folds_ffd | mean_rho |
|---|---|---|---|---|---|---|
| EN_DL | iv_atm_1y | 0 | 0 | 0.15 | 0.3333 | 0.9963 |
| EN_DL | t10y3m | 0.25 | 0.3 | 0.4 | 1 | 0.9597 |
| EN_DL | dgs10 | 0.1 | 0.25 | 0.3 | 1 | 0.9738 |

Lost origins (HAR forecast made, target unobserved because more than 20% of its window is missing): 0.

## Success criterion (proposal Section 6)

Per target and horizon: the lowest-QLIKE EN/RF model, its one-sided DM p-value against HAR (H1: lower QLIKE), whether it is in the 10% MCS, and for h = 22 whether its variance-swap timing is directionally consistent (positive mean P&L on the close-to-close leg and positive signal-payoff correlation). Persistence is the floor: "uninformative" lists every forecast that does not significantly beat it.

| target | h | best_ML | QLIKE_ratio | p1_vs_HAR | in_MCS | beats_HAR | ratio_vs_PER | beats_PER | uninformative | swap_pnl_cc | swap_corr |
|---|---|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | RF_CL | 0.8384 | 9.283e-08 | yes | yes | 0.641 | yes | EN_AL EN_BL EN_CL EN_DL | NaN | NaN |
| SPY | 5 | RF_BL | 0.8769 | 0.006345 | yes | yes | 0.6419 | yes | EN_AL EN_CL EN_DL RF_DL | NaN | NaN |
| SPY | 22 | EN_BL | 0.9647 | 0.3414 | yes | no | 0.6397 | no | EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | 64.37 | 0.1192 |
| ES | 1 | RF_CL | 0.9665 | 0.2019 | yes | no | 0.798 | yes | EN_AL RF_AL EN_BL EN_CL | NaN | NaN |
| ES | 5 | RF_CL | 1.104 | 0.8244 | yes | no | 0.8463 | no | EN_AL RF_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | NaN | NaN |
| ES | 22 | RF_AL | 1.128 | 0.9255 | yes | no | 0.7237 | yes | EN_AL EN_BL RF_BL EN_CL RF_CL EN_DL RF_DL | 56.31 | 0.1039 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| SPY | 1 | all-model common days | PER | A | 1.308 | 1.258 | 3.109e-10 | no | 1 |
| SPY | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 0.7646 |
| SPY | 1 | all-model common days | EN | AL | 1.939 | 1.822 | 5.241e-12 | no | 1.482 |
| SPY | 1 | all-model common days | RF | AL | 1.033 | 0.9992 | 0.2946 | no | 0.7901 |
| SPY | 1 | all-model common days | EN | BL | 1.982 | 1.022 | 0.0002036 | no | 1.516 |
| SPY | 1 | all-model common days | RF | BL | 0.8443 | 0.8469 | 7.439e-07 | yes | 0.6455 |
| SPY | 1 | all-model common days | EN | CL | 1.823 | 1.027 | 0.0007335 | no | 1.394 |
| SPY | 1 | all-model common days | RF | CL | 0.8384 | 0.8127 | 1.857e-07 | yes | 0.641 |
| SPY | 1 | all-model common days | EN | DL | 2.063 | 1.053 | 0.0007529 | no | 1.578 |
| SPY | 1 | all-model common days | RF | DL | 0.9004 | 1.244 | 0.01986 | yes | 0.6884 |
| SPY | 5 | all-model common days | PER | A | 1.366 | 1.204 | 6.427e-07 | yes | 1 |
| SPY | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.732 |
| SPY | 5 | all-model common days | EN | AL | 1.821 | 1.635 | 1.249e-06 | no | 1.333 |
| SPY | 5 | all-model common days | RF | AL | 1.089 | 0.953 | 0.04892 | yes | 0.7975 |
| SPY | 5 | all-model common days | EN | BL | 1.044 | 1.197 | 0.5297 | yes | 0.7643 |
| SPY | 5 | all-model common days | RF | BL | 0.8769 | 0.9165 | 0.01269 | yes | 0.6419 |
| SPY | 5 | all-model common days | EN | CL | 2.297 | 1.153 | 0.0008194 | yes | 1.681 |
| SPY | 5 | all-model common days | RF | CL | 0.888 | 0.9427 | 0.01416 | yes | 0.6501 |
| SPY | 5 | all-model common days | EN | DL | 2.793 | 1.194 | 0.0002586 | no | 2.044 |
| SPY | 5 | all-model common days | RF | DL | 1.123 | 1.559 | 0.407 | yes | 0.8219 |
| SPY | 22 | all-model common days | PER | A | 1.508 | 1.55 | 0.07526 | yes | 1 |
| SPY | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6631 |
| SPY | 22 | all-model common days | EN | AL | 1.126 | 0.9681 | 0.2762 | yes | 0.7466 |
| SPY | 22 | all-model common days | RF | AL | 1.125 | 0.8434 | 0.02071 | yes | 0.7463 |
| SPY | 22 | all-model common days | EN | BL | 0.9647 | 0.8943 | 0.6828 | yes | 0.6397 |
| SPY | 22 | all-model common days | RF | BL | 1.161 | 0.8596 | 0.0468 | yes | 0.7701 |
| SPY | 22 | all-model common days | EN | CL | 1.004 | 0.9297 | 0.9548 | yes | 0.6655 |
| SPY | 22 | all-model common days | RF | CL | 1.037 | 0.8952 | 0.4585 | yes | 0.6877 |
| SPY | 22 | all-model common days | EN | DL | 1.275 | 0.9093 | 0.06854 | yes | 0.8453 |
| SPY | 22 | all-model common days | RF | DL | 1.351 | 1.096 | 0.05686 | yes | 0.8959 |
| ES | 1 | all-model common days | PER | A | 1.211 | 1.124 | 2.181e-09 | no | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.8257 |
| ES | 1 | all-model common days | EN | AL | 2.043 | 2.346 | 2.928e-05 | no | 1.687 |
| ES | 1 | all-model common days | RF | AL | 1.198 | 2.022 | 0.02562 | no | 0.9887 |
| ES | 1 | all-model common days | EN | BL | 1.55 | 1.682 | 0.0001625 | no | 1.28 |
| ES | 1 | all-model common days | RF | BL | 1.026 | 1.805 | 0.7711 | yes | 0.8473 |
| ES | 1 | all-model common days | EN | CL | 2.529 | 1.678 | 1.505e-05 | no | 2.088 |
| ES | 1 | all-model common days | RF | CL | 0.9665 | 1.361 | 0.4039 | yes | 0.798 |
| ES | 1 | all-model common days | EN | DL | 1.072 | 1.272 | 0.1839 | yes | 0.8847 |
| ES | 1 | all-model common days | RF | DL | 0.9788 | 1.714 | 0.7349 | yes | 0.8082 |
| ES | 5 | all-model common days | PER | A | 1.304 | 1.128 | 2.064e-05 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.7667 |
| ES | 5 | all-model common days | EN | AL | 1.993 | 1.827 | 0.0004306 | no | 1.528 |
| ES | 5 | all-model common days | RF | AL | 1.367 | 1.795 | 0.088 | yes | 1.048 |
| ES | 5 | all-model common days | EN | BL | 3.702 | 1.456 | 2.43e-05 | no | 2.839 |
| ES | 5 | all-model common days | RF | BL | 1.345 | 1.785 | 0.1552 | yes | 1.031 |
| ES | 5 | all-model common days | EN | CL | 3.647 | 1.366 | 3.348e-05 | no | 2.797 |
| ES | 5 | all-model common days | RF | CL | 1.104 | 1.6 | 0.3513 | yes | 0.8463 |
| ES | 5 | all-model common days | EN | DL | 2.09 | 1.315 | 0.0004674 | yes | 1.602 |
| ES | 5 | all-model common days | RF | DL | 1.35 | 1.815 | 0.1731 | yes | 1.035 |
| ES | 22 | all-model common days | PER | A | 1.559 | 1.664 | 0.04261 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 0.6415 |
| ES | 22 | all-model common days | EN | AL | 1.42 | 1.135 | 0.05325 | yes | 0.9108 |
| ES | 22 | all-model common days | RF | AL | 1.128 | 1.127 | 0.149 | yes | 0.7237 |
| ES | 22 | all-model common days | EN | BL | 1.647 | 1.093 | 0.02173 | yes | 1.056 |
| ES | 22 | all-model common days | RF | BL | 1.458 | 1.391 | 0.00594 | yes | 0.9351 |
| ES | 22 | all-model common days | EN | CL | 1.673 | 1.114 | 0.01648 | yes | 1.073 |
| ES | 22 | all-model common days | RF | CL | 1.201 | 1.125 | 0.1365 | yes | 0.7707 |
| ES | 22 | all-model common days | EN | DL | 1.237 | 1.102 | 0.0247 | yes | 0.7937 |
| ES | 22 | all-model common days | RF | DL | 1.166 | 1.122 | 0.1855 | yes | 0.7481 |

