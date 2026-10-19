## Upload notes (Realized Vol Targets)

- **Risk Lab (Dacheng Xiu) SPY realized vol** is **annualized volatility**, built from 5-min and 15-min subsampled returns, **1996-01-02 to 2026-10-05**.
- Use the **trade-based** series; the quote-based series have outliers.
- **33 sessions are missing since 2005**, including **2018-02-05 to 02-09**.
- **Research use only.**
- The **Oxford-Man mirror** (SPX, 2000-01-03 to 2022-02-25) correlates **0.968** with Risk Lab rv5 over 2005–2022.

---

# intraday_sample (built 2026-10-07 ET). Small samples only, no bulk downloads.

| File | Source | What it is |
|---|---|---|
| risklab_SPY_daily_annualized_vol_1996-2026.csv | Dacheng Xiu Risk Lab, https://dachxiu.chicagobooth.edu (public data.php endpoint behind the site's chart, PERMNO 84398) | Daily SPY annualized volatility, 1996-01-02 to 2026-10-05, 7,707 days. Columns: QMLE (trades and quotes, with MA order q and std. error), 5-min and 15-min subsampled RV (trades and quotes). Square and divide by 252 to get daily variance. Research use only (site terms). |
| risklab_SPY_raw.txt, risklab_ES_raw.txt | same | Raw server output. ES (front contract, includes contract code and counts) runs 1997-09-09 to 2023-05-26 only. |
| oxfordman_SPX_2000-01-03_2022-02-25.csv | Oxford-Man Realized Library mirror: github.com/Sylvain-Barde/mArch, data/oxfordmanrealizedvolatilityindices.csv (57,237,569 bytes, the same size as the 2022-03-01 Wayback snapshot) | .SPX rows only, 5,552 days: rv5, rv5_ss, bv, bv_ss, rsv (negative semivariance), rsv_ss, rk_parzen/twoscale/th2, medrv, rv10, open/close price and time, nobs. No quarticity. |
| frd_index_SPX/, frd_etf_SPY/, frd_futures_ES/ | FirstRate Data free samples (S3 links on the product pages, no account) | 1/5/30-min, 1-hour and daily bars for 2026-09-21 to 2026-10-06 |
| qc_frd_sample.py, qc_frd_sample_daily_rv.csv | this box | Per-day 5-min RV, BV, negative semivariance and RQ from the FirstRate 1-min bars (RTH 09:30-16:00 ET) |

QC findings
- FirstRate samples: 12/12 sessions have all 390 RTH minutes and no duplicate or OHLC-inconsistent bars. Timestamps are ET and mark the bar start. SPY carries 04:00-20:00 extended hours. ES is nearly 24h. SPX daily open and close match Yahoo ^GSPC to 4e-4 points. RV5 from SPX, SPY, and ES agree within about 5%.
- Risk Lab SPY: 33 NYSE sessions are missing since 2005, including 2018-02-05..09 (the "Volmageddon" week), 2020-12-16, and 2026-03-09. Trade-based RV is clean (min ann. vol 2%, max 122%). Quote-based series have outliers (max 893% ann. vol). Use trades. Against Oxford-Man SPX rv5, 2005-2022 (4,293 days): corr 0.968 (levels), 0.960 (logs), median ratio 0.97.
- Oxford-Man SPX: 22 NYSE sessions are missing in 2000-2022, mostly 2018-2022 (2018-07-23, 2019-06-24, 2020-05-04, 2020-08-24, 2022-01-31, ...). open_time/close_time appear in two clocks (93000/160000 and 83000/150000, which looks like CT), so do not use those fields to infer hours. Median nobs is 1,561.
- Dukascopy: datafeed.dukascopy.com timed out at the TLS handshake from this box (same network issue as ECB earlier), so no sample was taken.
