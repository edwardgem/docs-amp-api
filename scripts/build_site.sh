#!/usr/bin/env bash
set -euo pipefail

# Static site currently requires no compile step.
# Keep this script as a stable CI hook.

SPEC="/Users/edwardc/Projects/docs-amp-api/openapi/v1.yaml"
INDEX="/Users/edwardc/Projects/docs-amp-api/site/index.html"

if [[ ! -f "$SPEC" ]]; then
  echo "ERROR: missing spec at $SPEC" >&2
  exit 1
fi
if [[ ! -f "$INDEX" ]]; then
  echo "ERROR: missing site index at $INDEX" >&2
  exit 1
fi

echo "Site build check passed (static)."
