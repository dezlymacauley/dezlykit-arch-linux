#!/bin/sh

#______________________________________________________________________________

# Determine script directory
SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd -P)
PACKAGE_SCRIPTS_DIR="$SCRIPT_DIR/package-scripts"

# Loop through and source all package scripts
for f in "$PACKAGE_SCRIPTS_DIR"/*.sh; do
    [ -f "$f" ] || continue
    # shellcheck disable=SC1090
    . "$f"
done
