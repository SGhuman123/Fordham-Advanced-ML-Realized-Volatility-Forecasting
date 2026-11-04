"""Holm-adjust the saved one-sided RQ2 QLIKE p-values (p1); mirrors Code/evaluation/holm_rq2_check.m.

Family: the three set steps (A->B, A->C, A->D) per target and horizon.
Reads Output/tables/test/main/rq2_<target>_h<h>.csv; prints only, writes nothing.
"""
import os
import numpy as np
import pandas as pd

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TBL = os.path.join(ROOT, "Output", "tables", "test", "main")


def holm_adjust(p):
    p = np.asarray(p, dtype=float)
    m = len(p)
    order = np.argsort(p)
    adj = np.minimum(1.0, np.maximum.accumulate((m - np.arange(m)) * p[order]))
    out = np.empty(m)
    out[order] = adj
    return out


print(f"{'tgt':<4} {'h':>3} {'step':<5} {'p1':>9} {'p1_holm':>9}")
for target in ("SPY", "ES"):
    for h in (1, 5, 22):
        d = pd.read_csv(os.path.join(TBL, f"rq2_{target}_h{h}.csv"))
        d = d[d["loss"] == "QLIKE"]
        for step, p, a in zip(d["step"], d["p1"], holm_adjust(d["p1"].to_numpy())):
            print(f"{target:<4} {h:>3} {step:<5} {p:9.4f} {a:9.4f}")
