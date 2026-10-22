#!/bin/zsh
# Run the walk-forward for every target x horizon x scenario as separate MATLAB
# processes (no Parallel Computing Toolbox needed), then build the tables.
#
#   ./run_parallel.sh dev                 # development pseudo-OOS, main design
#   ./run_parallel.sh dev rolling         # one robustness scenario
#   ./run_parallel.sh dev robustness      # every robustness scenario
#   ./run_parallel.sh dev all             # main design and every robustness scenario
#   ./run_parallel.sh test all            # locked test (needs cfg.runLockedTest = true)
#
# JOBS sets how many MATLAB processes run at once (default 7, two threads each).

PHASE=${1:-dev}
SCEN=${2:-main}
export MATLAB=${MATLAB:-/Applications/MATLAB_R2026a.app/bin/matlab}
export CODE="$(cd "$(dirname "$0")" && pwd)"
export LOGS="$CODE/../Output/logs"
export PHASE
JOBS=${JOBS:-7}
mkdir -p "$LOGS"
INIT="addpath(genpath(\"$CODE\"));"

# Build the cached panel once so the parallel jobs do not race to write it.
"$MATLAB" -nodisplay -batch "$INIT load_panel(rv_config());" || exit 1

typeset -A TARGETS
TARGETS=(main "SPY ES" rolling "SPY ES" rv15 "SPY" qmle "SPY" strict "SPY" oxford "SPY" vix1996 "SPY" \
         rv1 "ES" rk "ES" holdrop "ES" rfdefault "SPY ES" ffdlags "SPY ES")
ROBUST=(rolling rv15 qmle strict rv1 rk holdrop oxford vix1996 rfdefault ffdlags)
case "$SCEN" in
  robustness) SCENARIOS=($ROBUST) ;;
  all)        SCENARIOS=(main $ROBUST) ;;
  *)          SCENARIOS=($SCEN) ;;
esac

# 1. every walk-forward job, JOBS at a time (slowest first: h = 1 has the most rows)
for S in $SCENARIOS; do
  for H in 1 5 22; do
    for T in ${=TARGETS[$S]}; do echo "$T $H $S"; done
  done
done | xargs -P "$JOBS" -n 3 zsh -c '
  "$MATLAB" -nodisplay -batch "addpath(genpath(\"$CODE\")); run_job(\"$1\", $2, \"$PHASE\", \"$3\")" \
    > "$LOGS/${PHASE}_$3_$1_h$2.log" 2>&1 || echo "FAILED: $3 $1 h=$2 (see $LOGS/${PHASE}_$3_$1_h$2.log)"' _

# 2. tables for each scenario
for S in $SCENARIOS; do echo "$S"; done | xargs -P "$JOBS" -n 1 zsh -c '
  "$MATLAB" -nodisplay -batch "addpath(genpath(\"$CODE\")); evaluate_phase(\"$PHASE\", \"$1\")" \
    > "$LOGS/${PHASE}_$1_evaluate.log" 2>&1 || echo "FAILED: evaluate $1"
  echo "$1 done: Output/tables/$PHASE/$1/summary.md"' _

# 3. explanation and diagnostics for the main design
if (( ${SCENARIOS[(Ie)main]} )); then
  "$MATLAB" -nodisplay -batch "$INIT explain_rf('SPY',22,'D','$PHASE'); explain_rf('ES',22,'D','$PHASE'); long_memory('$PHASE'); stationarity('$PHASE'); data_audit; export_design" \
    > "$LOGS/${PHASE}_main_explain.log" 2>&1 || echo "FAILED: explain/diagnostics"
fi
