#!/bin/dash

#______________________________________________________________________________

# SECTION: Rustup

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

#______________________________________________________________________________

# SECTION: Cargo-binstall

# `cargo-binstall` is a drop-in replacement for the `cargo install` command.
# Instead of using the command `cargo install`, 
# you can use the command `cargo binstall`

# This will look for a pre-compiled binary of a package and download it.
# If there is no pre-compiled binary, 
# then it will fall back to using the `cargo install` command,
# which will try to build the package from source.

# The catch is that to install `cargo-binstall` you need to build 
# it from source once (which can take about 6 minutes).

# This will add an executable binary to `$HOME/.cargo/bin/`
if ! command -v cargo-binstall 1>/dev/null 2>/dev/null; then
    printf '\n'
    cargo install cargo-binstall
else
    # Once `cargo-binstall` is installed, you can update it by 
    # using `cargo binstall` to download a pre-compiled binary, 
    # rather than having to build it from source again.
    printf '\n'
    cargo binstall --no-confirm cargo-binstall
fi

#______________________________________________________________________________

# SECTION: Cargo-module

# A cargo plugin for visualizing/analyzing a crate's internal structure.

printf '\n'
cargo binstall --no-confirm cargo-modules
printf '\n'

#______________________________________________________________________________

# SECTION: Setup mise

# A polyglot tool version manager written in Rust

printf '\n'
cargo binstall --no-confirm mise
printf '\n'

#______________________________________________________________________________
