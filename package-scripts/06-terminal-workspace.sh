#!/bin/dash

#______________________________________________________________________________

# SECTION: Zsh

echo
sudo pacman -S --needed zsh
echo

echo
sudo pacman -S --needed zsh-syntax-highlighting
echo

echo
sudo pacman -S --needed zsh-autosuggestions 
echo

#______________________________________________________________________________

# SECTION: Terminal Tools

# A shell prompt written in Rust. 
# It makes it easier to see what directory you are in without having to keep
# typing the `pwd` command.
echo
mise use -g starship@latest
echo

# A Rust alternative to the `ls` command.
# It makes is easier to distinguish directories from files,
# and to see what a filetype is.
echo
mise use -g lsd@latest
echo

# A Rust alternative to the `cat` command.
# It allows you to browse a file from the terminal without opening it,
# and with an output that has syntax highlighting
echo
mise use -g bat@latest
echo

# A Rust-powered terminal file manager
echo
mise use -g yazi@latest
echo

# This is used by yazi to preview .svg files
echo
mise use -g resvg@latest
echo

# Terminal multiplexor
echo
mise use -g zellij@latest
echo

echo
sudo pacman -S --needed acpi
echo

echo
sudo pacman -S --needed brightnessctl
echo

echo
sudo pacman -S --needed trash-cli
echo

echo
sudo pacman -S --needed tree
echo

#______________________________________________________________________________

# SECTION: Neovim Setup

# The best terminal code editor in the world.
echo
mise use -g neovim@latest

# Used by the Neovim plugin `nvim-telescope` to search for text in a file.
echo
mise use -g ripgrep@latest

# Used by the Neovim plugin `nvim-telescope` to search for files 
# in a directory.
echo
mise use -g fd@latest

# This is needed by the Neovim plugin `nvim-treesitter` to download parsers
# for syntax highlighting
echo
sudo pacman -S --needed tar

# This is needed by the Neovim plugin `nvim-treesitter` to download parsers
# for syntax highlighting
echo
sudo pacman -S --needed curl

# This is required by the Neovim plugin `nvim-treesitter` to work correctly.
echo
mise use -g tree-sitter@latest

# Adds clipboard functionality to Wayland
# Neovim requires a clipboard tool to be installed.
sudo pacman -S --needed wl-clipboard

# This is needed by the file watcher of vim.lsp
# If this package is not installed vim.lsp will use libuv-watchdirs, 
# which has known performance issues.
sudo pacman -S --needed inotify-tools

# Uncomplicated Firewall
echo
sudo pacman -S --needed ufw

# A Rust implementation of the age encryption tool
echo
sudo pacman -S --needed rage-encryption

#______________________________________________________________________________
