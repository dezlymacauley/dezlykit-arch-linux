#!/usr/bin/env bash

# The Rust toolchain manager. 
sudo pacman -S --needed rustup

# This will use rustup to install the latest stable version 
# of the Rust toolchain and set it as the default toolchain.
# After this is installed, you should have access to the cargo command.
rustup default stable

# Language support for Rust projects
# This will add `rust-analyzer` to the current Rust toolchain 
# of the directory where this command is executed
rustup component add --toolchain stable rust-analyzer
