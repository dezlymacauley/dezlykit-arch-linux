#!/bin/dash

#______________________________________________________________________________

# SECTION: Node.js and npm

# The most widely used JavaScript runtime
mise use --global node@latest

# The most widely used JavaScript package manager
# On Arch Linux, the `nodejs` package does not include `npm`
# sudo pacman -S --needed npm

# Create a custom directory for npm packages that are installed 
# with the command `npm install -g name-of-package`
mkdir -p "${HOME}/.npm-global-pkgs"

# Set npm to use this directory 
# npm packages installed with the command `npm install -g name-of-package`,
# will installed to this location.
# This setting will be saved in `$HOME/.npmrc`
npm config set prefix "${HOME}/.npm-global-pkgs"

echo
echo "Packages installed with 'npm install -g' will be saved at:"
npm prefix -g
echo

#______________________________________________________________________________

# SECTION: Globally installed npm pakages

# A collection of language servers extracted 
# from the editor `Microsoft Visual Studio Code` aka VS Code
# I use this to get language support for html, css, json
npm install -g vscode-langservers-extracted@latest

# A superset of JavaScript language, 
# that has additional syntax for types and additional features.
npm install -g typescript@latest

# Language support for TypeScript
npm install -g typescript-language-server@latest

# Language support for Svelte projects
npm install -g svelte-language-server@latest

# Language support for Tailwind CSS. 
# Note: the `@` symbol is part of the name
npm install -g @tailwindcss/language-server@latest

# Language support for `.sh` files
npm install -g bash-language-server@latest

# A cli tool for checking if a shell script is POSIX compliant,
# and if a script contains syntax errors.
sudo pacman -S --needed shellcheck

# Language support for Solidity
# npm install -g @nomicfoundation/solidity-language-server@latest
# npm install -g vscode-solidity-server@latest

echo
echo "The following npm packages have been installed:"
echo

echo
npm list -g
echo

#______________________________________________________________________________

# SECTION: Deno

# A security-focused JavaScript runtime that is written in Rust
mise use --global deno@latest

#______________________________________________________________________________
