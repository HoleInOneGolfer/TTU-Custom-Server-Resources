#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST_DIR="${ROOT_DIR}/dist"

DATAPACK_FILE="TTU-Datapack.zip"
RESOURCEPACK_FILE="TTU-Resourcepack.zip"
BUNDLE_FILE="TTU-Server-Packs.zip"

rm -rf "${DIST_DIR}"
mkdir -p "${DIST_DIR}"

(
  cd "${ROOT_DIR}/datapack"
  zip -rq "${DIST_DIR}/${DATAPACK_FILE}" . -x "*/.DS_Store" "*/Thumbs.db"
)

(
  cd "${ROOT_DIR}/resourcepack"
  zip -rq "${DIST_DIR}/${RESOURCEPACK_FILE}" . -x "*/.DS_Store" "*/Thumbs.db"
)

(
  cd "${DIST_DIR}"
  zip -rq "${BUNDLE_FILE}" "${DATAPACK_FILE}" "${RESOURCEPACK_FILE}"
)

echo "Created ${DIST_DIR}/${DATAPACK_FILE}"
echo "Created ${DIST_DIR}/${RESOURCEPACK_FILE}"
echo "Created ${DIST_DIR}/${BUNDLE_FILE}"
