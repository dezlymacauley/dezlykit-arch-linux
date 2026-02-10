#!/bin/sh

#______________________________________________________________________________

# STEP: 1 => Set environment variables

DEZLYKIT_ARCH_LINUX_ROOT=$(
  CDPATH= cd -- "$(dirname -- "$0")" 2>/dev/null && pwd -P
)

PACKAGE_SCRIPTS_DIR="$DEZLYKIT_ARCH_LINUX_ROOT/package-scripts"

#______________________________________________________________________________

# STEP: 2 => Set environment variables

# Source all `.sh` files in the `package-scripts` directory
for dot_sh_file in "$PACKAGE_SCRIPTS_DIR"/*.sh; do
  [ -f "$dot_sh_file" ] || continue
  . "$dot_sh_file"
done

#______________________________________________________________________________
