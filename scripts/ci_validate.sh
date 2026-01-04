#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

find "$ROOT/stacks" -mindepth 2 -maxdepth 2 -type d | while read -r dir; do
  if ls "$dir"/*.tf >/dev/null 2>&1; then
    echo "==> Validating: ${dir#$ROOT/}"
    (cd "$dir" && terraform init -backend=false -input=false >/dev/null && terraform validate)
  fi
done
