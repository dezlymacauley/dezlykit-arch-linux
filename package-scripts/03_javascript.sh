#!/usr/bin/env bash

# The most widely used JavaScript runtime
sudo pacman -S --needed nodejs

# The most widely used JavaScript package manager
# On Arch Linux, the `nodejs` package does not include `npm`
sudo pacman -S --needed npm

# Create a custom directory for npm packages that are installed 
# with the command `npm install -g name-of-package`
mkdir -p "${HOME}/.npm-global-pkgs"

# Set npm to use this directory 
# npm packages installed with the command `npm install -g name-of-package`,
# will installed to this location.
npm config set prefix "${HOME}/.npm-global-pkgs"

echo
echo "Packages installed with 'npm install -g' will be saved at:"
echo "$(npm prefix -g)"
echo

# A superset of JavaScript language, 
# that has additional syntax for types and additional features.
npm install -g typescript

# Language support for TypeScript
npm install -g typescript-language-server

echo
echo "The following npm packages have been installed:"
echo

echo
npm list -g
echo
