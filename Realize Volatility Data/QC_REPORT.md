# QC report (2026-10-07 ET)

Spot checks:
- VVIX latest (Cboe CDN): 2026-10-06 close = 82.59 (2026-10-05 = 85.46). The Cboe file ends 2026-10-06.
- T10Y3M sign: the first negative value after 2022-01-01 is 2022-10-18. Every day in 2023 is negative (min -1.89, max -0.62, mean -1.32). Back positive by the end of 2024 (2024-12-31 = 0.21). Latest 2026-10-06 = 1.06.
- COVID shock 2020-03-16: SPX log return -12.77%, VVIX 207.59, US New CISS 0.539 (matches the official ECB API exactly), ADS minimum -26.6 on 2020-04-07 (current vintage).
- GFC 2008-10-10: VVIX 116.0, US New CISS 0.849, NFCI (release-aligned) 2.08, STLFSI4 7.30.
- NYSE calendar vs Yahoo ^GSPC trading dates, 1990-01-02 to 2026-10-06: identical sets (9,258 sessions). Special closures excluded: 2001-09-11, 2012-10-29, 2018-12-05, 2025-01-09.
- Cboe CDN vs FRED (VXNCLS/VXDCLS/RVXCLS): 0.00 maximum absolute difference on all overlapping days.
- ECB CISS: the DBnomics mirror matches the ECB API exactly for 2020-03-16..18. The last weeks differ by about 2% (recent ECB revisions), so official ECB values are used from 2026-09-15.
- ADS real-time vs final (1,572 vintages since 2008-12): correlation 0.54, median absolute revision 0.32, max 30.8 (2020-05).
- Yahoo ^GSPC Open equals the previous Close on 44-98% of days for 1990-2006 and on 9-26% for 2011-2013. Garman-Klass is NaN on those days. Parkinson is unaffected.

Failures and workarounds:
- ECB data-api.ecb.europa.eu: the TLS handshake is reset from this box's network (curl and python, HTTP/1.1, TLS 1.2 and 1.3, IPv4, and the old sdw-wsrest host). The official API was reachable from another network (series list, the tail 2026-09-15..2026-10-06, and spot checks). Full history comes from the DBnomics mirror of the ECB series.
- FRED BAMLH0A0HYM2: only 2023-10-09 onward (ICE 3-year limit since April 2026). Tried ALFRED vintages 2024-06-28 and 2026-03-31; both are also truncated. A full history needs ICE, which is not free.
- Cboe CDN VXN/VXD/RVX files start only in 2009-09. Backfilled from FRED (Cboe data).
