#!/bin/sh

# If you have just installed Arch Linux, then the `AUR` helper paru won't
# be installed so you need to update the default package manager `pacman`,
# and then use pacman to update all of the default packages that are included
# in the Arch Linux ISO image.
if ! command -v paru >/dev/null 2>&1; then
    echo "paru not found, using pacman..."
    sudo pacman -Syu
else
    echo "paru found, using paru..."
    paru -Syu
fi

# A collection of packages that are required by many AUR packages
echo
sudo pacman -S --needed base-devel

sudo pacman -S --needed dash

# Install git.
# This is needed for interacting with github repos on GitHub
echo
sudo pacman -S --needed git

# Required by certain git commands
echo
sudo pacman -S --needed git less

# Extracting the contents of `.rar` files
echo
sudo pacman -S --needed unrar

# Extracting the contents of `.7z` files
echo
sudo pacman -S --needed 7zip

#______________________________________________________________________________
