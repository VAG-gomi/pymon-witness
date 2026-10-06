#!/usr/bin/env bash
# soul_fingerprint.sh — deterministic helper for the pymon_witness skill.
# Prints a machine-checkable fingerprint of the installed ~/SOUL.md:
# sha256 hash, byte count, rule-anchor count, tension count, first line.
# No side effects. No arguments.
set -euo pipefail

SOUL="$HOME/SOUL.md"
# Optional override: point at a different installed SOUL without editing this script.
if [ -n "${PYMON_SOUL_PATH:-}" ]; then
  SOUL="$PYMON_SOUL_PATH"
fi

if [ ! -f "$SOUL" ]; then
  echo "SOUL_MISSING path=$SOUL"
  exit 1
fi

hash=$(sha256sum "$SOUL" | cut -d' ' -f1)
bytes=$(wc -c < "$SOUL")
rules=$(grep -c '^> \*\*R-S' "$SOUL" || true)
tensions=$(grep -c '^## T-0' "$SOUL" || true)
first=$(head -1 "$SOUL")

printf 'path=%s\nhash=%s\nbytes=%s\nrule_anchors=%s\ntension_sections=%s\nfirst_line=%s\n' \
  "$SOUL" "$hash" "$bytes" "$rules" "$tensions" "$first"
