#!/bin/dash

# This will peform a full system upgrade with Paru
# This command will:
# 1. Update the official Arch repositories.
# 2. Upgrade all installed repo packages.
# 3. Check AUR packages and upgrade them if needed.
# 4. Handle dependencies between repo and AUR packages automatically.
paru -Syu --noconfirm
