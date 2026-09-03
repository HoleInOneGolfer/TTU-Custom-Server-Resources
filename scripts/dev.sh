#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

validate_json() {
  python3 - <<'PY'
import json
from pathlib import Path

root = Path(".")
paths = sorted(
    list(root.glob("datapack/**/*.json"))
    + list(root.glob("resourcepack/**/*.json"))
    + list(root.glob("datapack/**/*.mcmeta"))
    + list(root.glob("resourcepack/**/*.mcmeta"))
)
for path in paths:
    with path.open("r", encoding="utf-8") as handle:
        json.load(handle)
print(f"Validated {len(paths)} JSON/mcmeta files")
PY
}

validate_python() {
  python3 -m py_compile "${ROOT_DIR}/datapack/data/mannequins/main.py"
  echo "Python validation passed"
}

show_tree() {
  if command -v tree >/dev/null 2>&1; then
    tree "${ROOT_DIR}"
  else
    find "${ROOT_DIR}" -maxdepth 4 | sort
  fi
}

case "${1:-help}" in
  help)
    cat <<'USAGE'
Usage: scripts/dev.sh <command>

Commands:
  help            Show this help text
  validate-json   Validate datapack/resourcepack JSON and mcmeta files
  validate-python Validate the mannequins Python script
  package         Build release zip artifacts into ./dist
  tree            Print repository tree
USAGE
    ;;
  validate-json)
    cd "${ROOT_DIR}"
    validate_json
    ;;
  validate-python)
    validate_python
    ;;
  package)
    "${ROOT_DIR}/scripts/package.sh"
    ;;
  tree)
    show_tree
    ;;
  *)
    echo "Unknown command: ${1}" >&2
    exit 1
    ;;
esac
