#!/bin/dash

#______________________________________________________________________________

# SECTION: Python

# The interpreter for the Python programming language

# NOTE: Do not install Python globally with `mise` because certain packages
# on `https://archlinux.org/packages/` like `virt-manager` require the
# system version of Node.js 

sudo pacman -S --needed python

# A Rust-powered version manager, and package manager for Python,
# that can also setup Python virtual environments
sudo pacman -S --needed uv

# A cli tool for API testing
# It comes with two main commands `http` and `https`
uv tool install httpie@latest

# A Rust-powered formatter for Python
uv tool install ty@latest

# A Rust-powered language server for Python
uv tool install ruff@latest

# A language server for Cmake files
uv tool install cmake-language-server@latest 

# A package manager for C and C++
uv tool install conan@latest

echo "The following Python tools have been installed by uv:"
uv tool list

#______________________________________________________________________________
