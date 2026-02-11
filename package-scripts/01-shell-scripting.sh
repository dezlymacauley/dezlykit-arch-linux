#!/bin/sh

#______________________________________________________________________________

# SECTION: Dash and shellcheck

# Dash (Debian Alqmuist shell) is POSIX compliant shell that 
# aims to be as small as possible. 
# It's also more performant than Bash for non-interactive scripts.
sudo pacman -S --needed dash

# A cli tool for checking if a shell script is POSIX compliant,
# and if a script contains syntax errors.
sudo pacman -S --needed shellcheck

#______________________________________________________________________________
