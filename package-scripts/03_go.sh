#!/usr/bin/env bash

# The compiler for the Go programming language
sudo pacman -S --needed go

# Create a custom directory for Go tools that are installed 
# with the command `go install`
mkdir -p "${HOME}/.go-global-pkgs"
