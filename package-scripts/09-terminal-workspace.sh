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

# A terminal emulator written in Zig
sudo pacman -S --needed ghostty

# A shell prompt written in Rust. 
# It makes it easier to see what directory you are in without having to keep
# typing the `pwd` command.
echo
sudo pacman -S --needed starship
echo

# A Rust alternative to the `ls` command.
# It makes is easier to distinguish directories from files,
# and to see what a filetype is.
echo
sudo pacman --needed lsd
echo

# A Rust alternative to the `cat` command.
# It allows you to browse a file from the terminal without opening it,
# and with an output that has syntax highlighting
echo
sudo pacman -S --needed bat
echo

# A Rust-powered terminal file manager
echo
sudo pacman -S --needed yazi
echo

# This is used by yazi to preview .svg files
echo
sudo pacman -S --needed resvg
echo

# Terminal multiplexor
echo
sudo pacman -S --needed zellij
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

# Neovim requires lua version 5.1
echo
sudo pacman -S --neede lua51
echo

# The best terminal code editor in the world.
echo
sudo pacman -S --needed neovim
echo

# Used by the Neovim plugin `nvim-telescope` to search for text in a file.
echo
sudo pacman -S --needed ripgrep
echo

# Used by the Neovim plugin `nvim-telescope` to search for files 
# in a directory.
echo
sudo pacman -S --needed fd
echo

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

# NOTE: Does not seem to be working

sudo pacman -S --needed tree-sitter
sudo pacman -S --needed tree-sitter-cli
echo

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
