#!/bin/bash
# Runs inside the FSL container (invoked by main via singularity exec).
# Reads brainlife's flat config.json and adapts it to brain_extract.py's
# CLI flags -- brain_extract.py itself is left unmodified.
set -e

t1=$(jq -r '.t1' config.json)
frac=$(jq -r '.frac' config.json)
robust=$(jq -r '.robust' config.json)
bias_neck_cleanup=$(jq -r '.bias_neck_cleanup' config.json)

args=(--t1 "$t1" --out t1_brain/t1 --frac "$frac")
[ "$robust" == "true" ] && args+=(--robust)
[ "$bias_neck_cleanup" == "true" ] && args+=(--bias-neck-cleanup)

python3 brain_extract.py "${args[@]}"
