#!/usr/bin/env bash
set -euo pipefail

SRC_DEFAULT="/Users/edwardc/Projects/docs-backend-docgen/output/openapi.draft.yaml"
SRC="${1:-$SRC_DEFAULT}"
DST="/Users/edwardc/Projects/docs-amp-api/openapi/v1.yaml"

if [[ ! -f "$SRC" ]]; then
  echo "ERROR: source spec not found: $SRC" >&2
  exit 1
fi

cp "$SRC" "$DST"
echo "Synced OpenAPI spec:"
echo "  from: $SRC"
echo "  to:   $DST"
