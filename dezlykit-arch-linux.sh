#!/bin/sh

#==============================================================================
# dezlykit-arch-linux.sh
# POSIX dash bootstrap for Arch Linux
#==============================================================================

# STEP 0: Determine script directory
SCRIPT_DIR=$(cd -- "$(dirname -- "$0")" && pwd -P)

#==============================================================================
# STEP 1: Ensure dash is installed and running
#==============================================================================

if ! command -v dash >/dev/null 2>&1; then
    echo "[INFO] Dash not found. Installing..."
    sudo pacman -S --needed dash
else
    echo "[INFO] Dash is already installed."
fi

# Re-exec under dash if needed
CURRENT_SHELL=$(ps -p $$ -o comm=)
if [ "$CURRENT_SHELL" != "dash" ]; then
    echo "[INFO] Current shell is '$CURRENT_SHELL'. Re-execing under dash..."
    exec dash "$0" "$@"
fi

echo "[INFO] Now running under dash."
echo "[CONFIRM] Shell process: $(ps -p $$ -o comm=), default shell: $SHELL"
echo

#==============================================================================
# STEP 2: Source POSIX-compatible environment variables
#==============================================================================

ENV_FILE="$SCRIPT_DIR/saved-configs/.zprofile"

if [ -f "$ENV_FILE" ]; then
    # shellcheck source=./saved-configs/.zprofile
    . "$ENV_FILE"
    echo "[INFO] Sourced environment variables from $ENV_FILE"
else
    echo "[WARN] No env file found at $ENV_FILE; proceeding without it"
fi

#==============================================================================
# STEP 3: Source all package scripts
#==============================================================================

PACKAGE_SCRIPTS_DIR="$SCRIPT_DIR/package-scripts"

# Tell ShellCheck what the files are to avoid SC1090
# shellcheck source=./package-scripts/01-rust.sh
# shellcheck source=./package-scripts/02-go-and-docker.sh
# shellcheck source=./package-scripts/03-python.sh
# shellcheck source=./package-scripts/04-javascript-and-bash.sh
# shellcheck source=./package-scripts/05-fonts.sh
# shellcheck source=./package-scripts/06-terminal-workspace.sh
# shellcheck source=./package-scripts/07-gui-workspace.sh
for dot_sh_file in "$PACKAGE_SCRIPTS_DIR"/*.sh; do
    [ -f "$dot_sh_file" ] || continue
    . "$dot_sh_file"
done

echo
echo "[INFO] Bootstrap complete. All tools should now be available in PATH:"
echo "$PATH"
echo
