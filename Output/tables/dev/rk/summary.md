# Results: dev period, scenario "rk"

Generated 2026-10-21 21:24 by evaluate_phase.m. Losses are on daily variance in %^2; QLIKE is the primary loss. Ratios < 1 beat HAR. DM: HLN-corrected Diebold-Mariano, positive = the model has lower loss than the comparison. MCS at 10%.

## ES target, h = 1

### Accuracy, all models on common days (2015-01-02 to 2017-12-29, n = 755)

| model | set | n | QLIKE | MSE | MAE | R2oos | QLIKE_ratio | MSE_ratio | DM_QLIKE | p_QLIKE | p1_QLIKE | DM_MSE | p_MSE | inMCS_QLIKE | pMCS_QLIKE | inMCS_MSE | pMCS_MSE | floor_pct | QLIKE_ratio_PER | p1_vs_PER |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| PER | A | 755 | 0.1924 | 1.001 | 0.2899 | 0.3201 | 0.9721 | 1.234 | 0.3352 | 0.7376 | 0.3688 | -1.247 | 0.2129 | yes | 0.1128 | yes | 0.3418 | 0 | 1 | NaN |
| HAR | A | 755 | 0.198 | 0.8108 | 0.3028 | 0.4491 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0038 | yes | 0.5098 | 0 | 1.029 | 0.6312 |
| EN | A | 755 | 0.1988 | 0.8109 | 0.3033 | 0.449 | 1.004 | 1 | -5.806 | 9.416e-09 | 1 | -5.823 | 8.547e-09 | no | 0.0028 | yes | 0.5098 | 0 | 1.033 | 0.6494 |
| RF | A | 755 | 0.1734 | 0.9027 | 0.2966 | 0.3866 | 0.876 | 1.113 | 2.902 | 0.003816 | 0.001908 | -2.066 | 0.03913 | yes | 0.2512 | yes | 0.1182 | 0 | 0.9012 | 0.05844 |
| EN | C | 755 | 0.1638 | 0.7504 | 0.3063 | 0.4902 | 0.8273 | 0.9255 | 2.125 | 0.03393 | 0.01697 | 0.743 | 0.4577 | yes | 0.2512 | yes | 0.4424 | 0 | 0.851 | 0.1281 |
| RF | C | 755 | 0.1417 | 0.6333 | 0.2683 | 0.5697 | 0.7158 | 0.7811 | 3.989 | 7.286e-05 | 3.643e-05 | 0.9276 | 0.3539 | yes | 0.5092 | yes | 1 | 0 | 0.7364 | 0.0121 |
| EN | D | 755 | 0.1511 | 0.7139 | 0.2808 | 0.515 | 0.763 | 0.8805 | 2.757 | 0.00597 | 0.002985 | 1.165 | 0.2446 | yes | 0.3276 | yes | 0.6112 | 0.9272 | 0.7849 | 0.04776 |
| RF | D | 755 | 0.1398 | 0.6876 | 0.2716 | 0.5328 | 0.7063 | 0.8481 | 4.252 | 2.387e-05 | 1.194e-05 | 0.9771 | 0.3288 | yes | 1 | yes | 0.6112 | 0 | 0.7266 | 0.009946 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.029 | -0.3352 | 0.7376 | 0.6312 | 0.8103 | 1.247 | 0.2129 | 0.1065 | 0.3012 | 1 |
| EN_A vs PER_A | 755 | 1.033 | -0.3839 | 0.7011 | 0.6494 | 0.8104 | 1.246 | 0.2132 | 0.1066 | 0.2674 | 0.3836 |
| RF_A vs PER_A | 755 | 0.9012 | 1.57 | 0.1169 | 0.05844 | 0.9022 | 0.7018 | 0.483 | 0.2415 | 1 | 0.3836 |
| EN_A vs HAR_A | 755 | 1.004 | -5.806 | 9.416e-09 | 1 | 1 | -5.823 | 8.547e-09 | 1 | 0.2674 | 0.3836 |
| RF_A vs HAR_A | 755 | 0.876 | 2.902 | 0.003816 | 0.001908 | 1.113 | -2.066 | 0.03913 | 0.9804 | 1 | 0.3836 |
| RF_A vs EN_A | 755 | 0.8724 | 2.972 | 0.00305 | 0.001525 | 1.113 | -2.064 | 0.0394 | 0.9803 | 1 | 0.3836 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.03503 | 17.62 | 0.03171 | 18.29 | -0.003313 | -0.308 | 0.6209 | 0.7582 |
| A->C | MSE | 755 | 0.06053 | 7.465 | 0.2695 | 29.85 | 0.2089 | 1.617 | 0.05311 | 0.1062 |
| A->D | QLIKE | 755 | 0.04774 | 24.01 | 0.0336 | 19.37 | -0.01414 | -1.109 | 0.8662 | 0.2677 |
| A->D | MSE | 755 | 0.09702 | 11.97 | 0.2151 | 23.83 | 0.1181 | 1.777 | 0.038 | 0.076 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2139 | 0.9634 | 1 | 1.004 | 0.8595 | 0.8204 | 0.7021 | 0.7571 | 0.6906 |
| High RV (monthly RV > threshold) | 100 | 0.09382 | 1.102 | 1 | 1 | 1.123 | 0.9293 | 0.9217 | 0.8521 | 0.9416 |
| Normal days (target <= Q3 + 1.5 IQR) | 674 | 0.1659 | 0.8858 | 1 | 1.006 | 0.7579 | 0.9285 | 0.7435 | 0.8476 | 0.7312 |
| Extreme days (target > Q3 + 1.5 IQR) | 81 | 0.465 | 1.228 | 1 | 0.9997 | 1.227 | 0.5268 | 0.6339 | 0.512 | 0.6326 |
| Aug 2015 devaluation | 54 | 0.2852 | 0.8874 | 1 | 1 | 1.138 | 0.501 | 0.4442 | 0.5666 | 0.5215 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.553 | 4 |
| HAR | A | 3.607 | 4 |
| EN | A | 3.606 | 4 |
| RF | A | 3.626 | 4 |
| EN | C | 3.694 | 4 |
| RF | C | 3.722 | 4 |
| EN | D | 3.698 | 4 |
| RF | D | 3.724 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| es_rsn_d | 0.06328 | 1 |
| parkinson_d | 0.06004 | 1 |
| vix9d_spread | 0.05703 | 1 |
| rv_d | 0.05553 | 1 |
| es_rk_d | 0.05553 | 1 |
| es_C_d | 0.05424 | 1 |
| negret_d | -0.04442 | 1 |
| overnight_d | 0.04349 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| es_C_d | 0.08692 |
| es_rsn_d | 0.08567 |
| negret_w | 0.07275 |
| iv_term | 0.06828 |
| log_vxn | 0.0662 |
| vrp | 0.06587 |
| log_rvx | 0.06201 |
| vix3m_spread | 0.0523 |

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
| PER | A | 755 | 0.235 | 0.7607 | 0.3436 | 0.1671 | 0.8906 | 1.393 | 1.009 | 0.3133 | 0.1567 | -1.362 | 0.1735 | yes | 0.3062 | yes | 0.333 | 0 | 1 | NaN |
| HAR | A | 755 | 0.2639 | 0.5461 | 0.3599 | 0.4021 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | no | 0.0028 | yes | 0.333 | 0 | 1.123 | 0.8433 |
| EN | A | 755 | 0.2639 | 0.5461 | 0.3599 | 0.4021 | 1 | 1 | -4.343 | 1.601e-05 | 1 | 0.7162 | 0.4741 | no | 0.002 | yes | 0.333 | 0 | 1.123 | 0.8434 |
| RF | A | 755 | 0.2029 | 0.5369 | 0.3137 | 0.4122 | 0.7689 | 0.9832 | 4.518 | 7.253e-06 | 3.626e-06 | 0.2241 | 0.8228 | yes | 0.5156 | yes | 0.333 | 0 | 0.8634 | 0.05183 |
| EN | C | 755 | 0.186 | 0.4488 | 0.304 | 0.5086 | 0.7047 | 0.8219 | 4.241 | 2.506e-05 | 1.253e-05 | 1.675 | 0.09441 | yes | 1 | yes | 1 | 0 | 0.7912 | 0.07071 |
| RF | C | 755 | 0.2069 | 0.4755 | 0.3235 | 0.4794 | 0.784 | 0.8708 | 3.219 | 0.00134 | 0.0006699 | 1.127 | 0.26 | yes | 0.4758 | yes | 0.611 | 0 | 0.8803 | 0.1765 |
| EN | D | 755 | 0.189 | 0.4633 | 0.3054 | 0.4928 | 0.7162 | 0.8484 | 4.524 | 7.033e-06 | 3.516e-06 | 1.885 | 0.05986 | yes | 0.5156 | yes | 0.611 | 0 | 0.8042 | 0.06554 |
| RF | D | 755 | 0.2354 | 0.4774 | 0.3321 | 0.4773 | 0.8921 | 0.8742 | 2.19 | 0.02882 | 0.01441 | 1.251 | 0.2112 | yes | 0.1658 | yes | 0.5922 | 0 | 1.002 | 0.505 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.123 | -1.009 | 0.3133 | 0.8433 | 0.7178 | 1.362 | 0.1735 | 0.08677 | 0.084 | 0.7892 |
| EN_A vs PER_A | 755 | 1.123 | -1.009 | 0.3133 | 0.8434 | 0.7178 | 1.362 | 0.1735 | 0.08677 | 0.084 | 0.7892 |
| RF_A vs PER_A | 755 | 0.8634 | 1.629 | 0.1037 | 0.05183 | 0.7057 | 1.351 | 0.177 | 0.08848 | 1 | 1 |
| EN_A vs HAR_A | 755 | 1 | -4.343 | 1.601e-05 | 1 | 1 | 0.7162 | 0.4741 | 0.237 | 0.084 | 0.7892 |
| RF_A vs HAR_A | 755 | 0.7689 | 4.518 | 7.253e-06 | 3.626e-06 | 0.9832 | 0.2241 | 0.8228 | 0.4114 | 1 | 1 |
| RF_A vs EN_A | 755 | 0.7689 | 4.518 | 7.25e-06 | 3.625e-06 | 0.9832 | 0.224 | 0.8228 | 0.4114 | 1 | 1 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.07795 | 29.54 | -0.003987 | -1.965 | -0.08193 | -4.436 | 1 | 1.052e-05 |
| A->C | MSE | 755 | 0.09728 | 17.81 | 0.06136 | 11.43 | -0.03592 | -1.08 | 0.8597 | 0.2807 |
| A->D | QLIKE | 755 | 0.0749 | 28.38 | -0.03251 | -16.02 | -0.1074 | -5.2 | 1 | 2.571e-07 |
| A->D | MSE | 755 | 0.08279 | 15.16 | 0.0595 | 11.08 | -0.0233 | -0.8952 | 0.8145 | 0.371 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.2885 | 0.8838 | 1 | 1 | 0.7664 | 0.7019 | 0.785 | 0.7171 | 0.9021 |
| High RV (monthly RV > threshold) | 100 | 0.103 | 1.015 | 1 | 1 | 0.8144 | 0.7546 | 0.7661 | 0.6999 | 0.7091 |
| Normal days (target <= Q3 + 1.5 IQR) | 666 | 0.2089 | 0.6952 | 1 | 1 | 0.6473 | 0.7187 | 0.7566 | 0.7105 | 0.9164 |
| Extreme days (target > Q3 + 1.5 IQR) | 89 | 0.6755 | 1.343 | 1 | 1 | 1.05 | 0.6722 | 0.8474 | 0.7295 | 0.8359 |
| Aug 2015 devaluation | 54 | 0.6982 | 1.245 | 1 | 1 | 1.019 | 0.7808 | 1.049 | 0.8503 | 0.9904 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.458 | 4 |
| HAR | A | 3.481 | 4 |
| EN | A | 3.481 | 4 |
| RF | A | 3.566 | 4 |
| EN | C | 3.628 | 4 |
| RF | C | 3.576 | 4 |
| EN | D | 3.616 | 4 |
| RF | D | 3.535 | 4 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| iv_term | -0.04761 | 1 |
| iv_atm_1m | 0.04578 | 1 |
| negret_w | -0.04259 | 1 |
| iv_skew_1m | 0.04128 | 1 |
| log_vix | 0.0369 | 1 |
| vix9d_spread | 0.03662 | 1 |
| log_vxn | 0.03656 | 1 |
| es_rsn_d | 0.03459 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_term | 0.0701 |
| iv_skew_1m | 0.06133 |
| log_rvx | 0.05634 |
| iv_atm_1m | 0.05444 |
| log_vxn | 0.04716 |
| es_rsn_w | 0.04389 |
| parkinson_w | 0.04329 |
| log_vix | 0.04178 |

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
| PER | A | 755 | 0.2736 | 0.4981 | 0.4025 | 0.1088 | 0.9104 | 1.358 | 0.3913 | 0.6957 | 0.3479 | -1.438 | 0.1509 | yes | 1 | yes | 0.331 | 0 | 1 | NaN |
| HAR | A | 755 | 0.3005 | 0.3668 | 0.439 | 0.3437 | 1 | 1 | NaN | NaN | NaN | NaN | NaN | yes | 0.7032 | yes | 0.639 | 0 | 1.098 | 0.6521 |
| EN | A | 755 | 0.3417 | 0.3939 | 0.4741 | 0.2953 | 1.137 | 1.074 | -3.257 | 0.001176 | 0.9994 | -3.295 | 0.001031 | yes | 0.4174 | yes | 0.331 | 0 | 1.249 | 0.8083 |
| RF | A | 755 | 0.2923 | 0.3862 | 0.4228 | 0.3091 | 0.9725 | 1.053 | 0.5988 | 0.5495 | 0.2747 | -0.6391 | 0.523 | yes | 0.7454 | yes | 0.639 | 0 | 1.068 | 0.6176 |
| EN | C | 755 | 0.3147 | 0.3396 | 0.3944 | 0.3923 | 1.047 | 0.9258 | -0.4401 | 0.66 | 0.67 | 1.17 | 0.2423 | yes | 0.5466 | yes | 1 | 0 | 1.15 | 0.7781 |
| RF | C | 755 | 0.3233 | 0.355 | 0.4277 | 0.3649 | 1.076 | 0.9677 | -1.386 | 0.1663 | 0.9169 | 0.6147 | 0.539 | yes | 0.5466 | yes | 0.7714 | 0 | 1.182 | 0.7676 |
| EN | D | 755 | 0.3231 | 0.3474 | 0.39 | 0.3784 | 1.075 | 0.947 | -0.5331 | 0.5941 | 0.7029 | 0.7731 | 0.4397 | yes | 0.5466 | yes | 0.889 | 0 | 1.181 | 0.8442 |
| RF | D | 755 | 0.3083 | 0.3501 | 0.41 | 0.3737 | 1.026 | 0.9543 | -0.4111 | 0.6811 | 0.6594 | 0.9734 | 0.3307 | yes | 0.5466 | yes | 0.889 | 0 | 1.127 | 0.7234 |

### RQ1: set A (volatility history only)

| comparison | n | QLIKE_ratio | DM_QLIKE | p2_QLIKE | p1_QLIKE | MSE_ratio | DM_MSE | p2_MSE | p1_MSE | pMCS_QLIKE_first | pMCS_MSE_first |
|---|---|---|---|---|---|---|---|---|---|---|---|
| HAR_A vs PER_A | 755 | 1.098 | -0.3913 | 0.6957 | 0.6521 | 0.7365 | 1.438 | 0.1509 | 0.07543 | 0.7032 | 1 |
| EN_A vs PER_A | 755 | 1.249 | -0.8723 | 0.3833 | 0.8083 | 0.7908 | 1.098 | 0.2728 | 0.1364 | 0.1328 | 0.3968 |
| RF_A vs PER_A | 755 | 1.068 | -0.2994 | 0.7648 | 0.6176 | 0.7753 | 1.189 | 0.235 | 0.1175 | 0.7454 | 0.5184 |
| EN_A vs HAR_A | 755 | 1.137 | -3.257 | 0.001176 | 0.9994 | 1.074 | -3.295 | 0.001031 | 0.9995 | 0.1328 | 0.3968 |
| RF_A vs HAR_A | 755 | 0.9725 | 0.5988 | 0.5495 | 0.2747 | 1.053 | -0.6391 | 0.523 | 0.7385 | 0.7454 | 0.5184 |
| RF_A vs EN_A | 755 | 0.8554 | 2.268 | 0.02361 | 0.0118 | 0.9804 | 0.2361 | 0.8134 | 0.4067 | 0.7454 | 0.5184 |

### RQ2: does RF gain more than EN from richer features?

gain = mean(L_A - L_s) (positive = set s helps); DiD = gain_RF - gain_EN; p1 is one-sided for DiD > 0.

| step | loss | n | gain_EN | gain_EN_pct | gain_RF | gain_RF_pct | DiD | DM | p1 | p2 |
|---|---|---|---|---|---|---|---|---|---|---|
| A->C | QLIKE | 755 | 0.027 | 7.903 | -0.03106 | -10.63 | -0.05806 | -1.478 | 0.9302 | 0.1397 |
| A->C | MSE | 755 | 0.05425 | 13.77 | 0.03119 | 8.078 | -0.02306 | -0.6995 | 0.7578 | 0.4844 |
| A->D | QLIKE | 755 | 0.01858 | 5.439 | -0.01605 | -5.492 | -0.03463 | -0.8606 | 0.8051 | 0.3897 |
| A->D | MSE | 755 | 0.04649 | 11.8 | 0.03611 | 9.35 | -0.01038 | -0.3028 | 0.6189 | 0.7622 |

### QLIKE ratio vs HAR by regime and stress episode

| sample | n | HAR_QLIKE | PER_A | HAR_A | EN_A | RF_A | EN_C | RF_C | EN_D | RF_D |
|---|---|---|---|---|---|---|---|---|---|---|
| Calm (monthly RV <= threshold) | 655 | 0.321 | 0.8413 | 1 | 1.148 | 0.9913 | 1.083 | 1.106 | 1.115 | 1.053 |
| High RV (monthly RV > threshold) | 100 | 0.1661 | 1.785 | 1 | 1 | 0.7339 | 0.5883 | 0.6876 | 0.5713 | 0.6839 |
| Normal days (target <= Q3 + 1.5 IQR) | 669 | 0.2588 | 0.6238 | 1 | 1.179 | 0.9146 | 0.9214 | 1.056 | 0.9004 | 0.9608 |
| Extreme days (target > Q3 + 1.5 IQR) | 86 | 0.6249 | 1.834 | 1 | 1 | 1.159 | 1.452 | 1.14 | 1.638 | 1.236 |
| Aug 2015 devaluation | 54 | 0.2932 | 2.027 | 1 | 1 | 0.7593 | 0.9514 | 0.8906 | 1.097 | 0.9307 |

### Vol-targeting realized utility (Bollerslev et al., 2018), % per year

| model | set | utility_pct | max_possible_pct |
|---|---|---|---|
| PER | A | 3.391 | 4 |
| HAR | A | 3.443 | 4 |
| EN | A | 3.385 | 4 |
| RF | A | 3.438 | 4 |
| EN | C | 3.381 | 4 |
| RF | C | 3.399 | 4 |
| EN | D | 3.349 | 4 |
| RF | D | 3.411 | 4 |

### Variance-swap check vs VIX^2 (eq. 9), vol points^2

Timing rule: sell variance when the annualized forecast is below K = VIX^2, buy otherwise. "target leg": 252 x RV_{t+1:t+22} of the target; "cc leg": 252 x mean squared S&P 500 close-to-close return (actual swap payoff).

| strategy | n | pnl_target_leg | t_target_leg | pnl_cc_leg | t_cc_leg | hit_rate_cc | corr_signal_payoff | frac_short |
|---|---|---|---|---|---|---|---|---|
| Always sell variance | 755 | 74.44 | 4.2 | 80.06 | 4.135 | NaN | NaN | 1 |
| PER_A | 755 | 27.99 | 1.55 | 27.71 | 1.397 | 0.7245 | 0.1021 | 0.8411 |
| HAR_A | 755 | 27.91 | 1.988 | 32.98 | 2.375 | 0.5298 | 0.343 | 0.6093 |
| EN_A | 755 | 15.68 | 1.002 | 19.41 | 1.227 | 0.4596 | 0.3233 | 0.5391 |
| RF_A | 755 | 40.87 | 3.185 | 43.9 | 3.33 | 0.6119 | 0.2403 | 0.6914 |
| EN_C | 755 | 34.25 | 1.694 | 39.53 | 1.824 | 0.6026 | 0.3663 | 0.7139 |
| RF_C | 755 | 14.15 | 0.6901 | 17.16 | 0.7814 | 0.494 | 0.357 | 0.5815 |
| EN_D | 755 | 39.72 | 1.972 | 46.35 | 2.148 | 0.6344 | 0.3249 | 0.751 |
| RF_D | 755 | 22.81 | 1.18 | 28.19 | 1.363 | 0.5563 | 0.341 | 0.6305 |

### Elastic net on set D: largest average standardized coefficients

| feature | mean_std_coef | selection_freq |
|---|---|---|
| news_sent | -0.04179 | 1 |
| iv_skew_1m | 0.02997 | 1 |
| es_C_m | 0.0272 | 1 |
| rv_m | 0.0272 | 1 |
| vix3m_spread | -0.02667 | 1 |
| iv_term | -0.02473 | 1 |
| vix9d_spread | 0.02341 | 1 |
| log_vix | 0.02297 | 1 |

### Random forest on set D: impurity importance (share)

| feature | mean_importance |
|---|---|
| iv_skew_1m | 0.08628 |
| log_vxn | 0.06931 |
| log_vix | 0.05746 |
| news_sent | 0.0534 |
| iv_atm_1m | 0.05134 |
| es_rk_d | 0.04726 |
| parkinson_w | 0.04681 |
| es_C_d | 0.04227 |

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
| ES | 1 | RF_D | 0.7063 | 1.194e-05 | yes | yes | 0.7266 | yes | HAR_A EN_A RF_A EN_C | NaN | NaN |
| ES | 5 | EN_C | 0.7047 | 1.253e-05 | yes | yes | 0.7912 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | NaN | NaN |
| ES | 22 | RF_A | 0.9725 | 0.2747 | yes | no | 1.068 | no | HAR_A EN_A RF_A EN_C RF_C EN_D RF_D | 43.9 | 0.2403 |

## Loss ratios vs HAR (set A), every target, horizon and set

| target | h | sample | model | set | QLIKE_ratio | MSE_ratio | p_QLIKE | inMCS_QLIKE | QLIKE_ratio_PER |
|---|---|---|---|---|---|---|---|---|---|
| ES | 1 | all-model common days | PER | A | 0.9721 | 1.234 | 0.7376 | yes | 1 |
| ES | 1 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.029 |
| ES | 1 | all-model common days | EN | A | 1.004 | 1 | 9.416e-09 | no | 1.033 |
| ES | 1 | all-model common days | RF | A | 0.876 | 1.113 | 0.003816 | yes | 0.9012 |
| ES | 1 | all-model common days | EN | C | 0.8273 | 0.9255 | 0.03393 | yes | 0.851 |
| ES | 1 | all-model common days | RF | C | 0.7158 | 0.7811 | 7.286e-05 | yes | 0.7364 |
| ES | 1 | all-model common days | EN | D | 0.763 | 0.8805 | 0.00597 | yes | 0.7849 |
| ES | 1 | all-model common days | RF | D | 0.7063 | 0.8481 | 2.387e-05 | yes | 0.7266 |
| ES | 5 | all-model common days | PER | A | 0.8906 | 1.393 | 0.3133 | yes | 1 |
| ES | 5 | all-model common days | HAR | A | 1 | 1 | NaN | no | 1.123 |
| ES | 5 | all-model common days | EN | A | 1 | 1 | 1.601e-05 | no | 1.123 |
| ES | 5 | all-model common days | RF | A | 0.7689 | 0.9832 | 7.253e-06 | yes | 0.8634 |
| ES | 5 | all-model common days | EN | C | 0.7047 | 0.8219 | 2.506e-05 | yes | 0.7912 |
| ES | 5 | all-model common days | RF | C | 0.784 | 0.8708 | 0.00134 | yes | 0.8803 |
| ES | 5 | all-model common days | EN | D | 0.7162 | 0.8484 | 7.033e-06 | yes | 0.8042 |
| ES | 5 | all-model common days | RF | D | 0.8921 | 0.8742 | 0.02882 | yes | 1.002 |
| ES | 22 | all-model common days | PER | A | 0.9104 | 1.358 | 0.6957 | yes | 1 |
| ES | 22 | all-model common days | HAR | A | 1 | 1 | NaN | yes | 1.098 |
| ES | 22 | all-model common days | EN | A | 1.137 | 1.074 | 0.001176 | yes | 1.249 |
| ES | 22 | all-model common days | RF | A | 0.9725 | 1.053 | 0.5495 | yes | 1.068 |
| ES | 22 | all-model common days | EN | C | 1.047 | 0.9258 | 0.66 | yes | 1.15 |
| ES | 22 | all-model common days | RF | C | 1.076 | 0.9677 | 0.1663 | yes | 1.182 |
| ES | 22 | all-model common days | EN | D | 1.075 | 0.947 | 0.5941 | yes | 1.181 |
| ES | 22 | all-model common days | RF | D | 1.026 | 0.9543 | 0.6811 | yes | 1.127 |

