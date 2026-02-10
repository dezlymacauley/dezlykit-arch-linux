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
npm install -g typescript@latest

# Language support for TypeScript
npm install -g typescript-language-server@latest

# A collection of language servers extracted 
# from the editor `Microsoft Visual Studio Code` aka VS Code
# I use this to get language support for html, css, json
npm install -g vscode-langservers-extracted@latest

# Language support for Svelte projects
npm install -g svelte-language-server@latest

# Language support for Tailwind CSS. 
# Note: the `@` symbol is part of the name
npm install -g @tailwindcss/language-server@latest

# Language support for `.sh` files
npm install -g bash-language-server@latest

echo
echo "The following npm packages have been installed:"
echo

echo
npm list -g
echo
