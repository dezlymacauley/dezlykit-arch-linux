#!/usr/dash

#______________________________________________________________________________

# SECTION: Go

# The compiler for the Go programming language
mise use --global go@latest

# Create a custom directory for Go tools that are installed 
# with the command `go install`
mkdir -p "${HOME}/.go-global-pkgs/bin"

# Language support for Go projects
go install golang.org/x/tools/gopls@latest

#______________________________________________________________________________

# SECTION: Docker

# The Docker engine
sudo pacman -S --needed docker

# This installs the BuildKit plugin for the Docker cli
# The improves the speed of building
sudo pacman -S --needed docker-buildx

# Docker compose allows you to define and run applications that require 
# multiple Docker containers. 
# E.g. A Rust API that may need one Docker container for the server 
# and second Docker container for the database.
sudo pacman -S --needed docker-compose

# Language support for `Dockerfile` and `compose.yml` files
go install \
github.com/docker/docker-language-server/cmd/docker-language-server@latest

#______________________________________________________________________________
