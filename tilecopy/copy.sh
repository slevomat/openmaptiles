#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly MBTILES_NAME=${MBTILES_NAME:-tiles.mbtiles}
readonly EXPORT_DIR=${EXPORT_DIR:-export}
readonly PART=${PART:-0}
readonly PARTS=${PARTS:-1}

function export_tiles() {
    exec mapbox-tile-copy \
        "${DATA_DIR}/${MBTILES_NAME}" \
        "${DATA_DIR}/${EXPORT_DIR}" \
        --part ${PART} \
        --parts ${PARTS}
}

function main() {
    export_tiles
}

main
