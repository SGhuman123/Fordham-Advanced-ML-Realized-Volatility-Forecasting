#!/bin/zsh
# Run the walk-forward for every target x horizon as separate MATLAB processes
# (no Parallel Computing Toolbox needed), then build the tables.
#
#   ./run_parallel.sh dev                 # development pseudo-OOS, main design
#   ./run_parallel.sh dev rolling         # one robustness scenario
#   ./run_parallel.sh dev robustness      # every robustness scenario
#   ./run_parallel.sh test                # locked test (needs cfg.runLockedTest = true)

PHASE=${1:-dev}
SCEN=${2:-main}
MATLAB=${MATLAB:-/Applications/MATLAB_R2026a.app/bin/matlab}
CODE="$(cd "$(dirname "$0")" && pwd)"
LOGS="$CODE/../Output/logs"
mkdir -p "$LOGS"

# Build the cached panel once so the parallel jobs do not race to write it.
"$MATLAB" -nodisplay -batch "addpath('$CODE'); load_panel(rv_config());" || exit 1

typeset -A TARGETS
TARGETS=(main "SPY ES" rolling "SPY ES" rv15 "SPY" qmle "SPY" oxford "SPY" vix1996 "SPY" \
         rv1 "ES" rk "ES" holdrop "ES" rfdefault "SPY ES" ffdlags "SPY ES")
if [[ "$SCEN" == "robustness" ]]; then
  SCENARIOS=(rolling rv15 qmle rv1 rk holdrop oxford vix1996 rfdefault ffdlags)
else
  SCENARIOS=($SCEN)
fi

for S in $SCENARIOS; do
  for T in ${=TARGETS[$S]}; do
    for H in 1 5 22; do
      "$MATLAB" -nodisplay -batch "addpath('$CODE'); run_job('$T', $H, '$PHASE', '$S')" \
        > "$LOGS/${PHASE}_${S}_${T}_h${H}.log" 2>&1 &
    done
  done
  wait
  "$MATLAB" -nodisplay -batch "addpath('$CODE'); evaluate_phase('$PHASE', '$S')" \
    > "$LOGS/${PHASE}_${S}_evaluate.log" 2>&1
  if [[ "$S" == "main" ]]; then
    "$MATLAB" -nodisplay -batch "addpath('$CODE'); explain_rf('SPY',22,'D','$PHASE'); explain_rf('ES',22,'D','$PHASE'); long_memory('$PHASE'); stationarity('$PHASE'); data_audit" \
      > "$LOGS/${PHASE}_main_explain.log" 2>&1
  fi
  echo "$S done: Output/tables/$PHASE/$S/summary.md"
done
