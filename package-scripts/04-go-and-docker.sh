#!/usr/dash

#______________________________________________________________________________

# SECTION: Go

# The compiler for the Go programming language
sudo pacman -S --needed go

# Create a custom directory for Go tools that are installed 
# with the command `go install`
mkdir -p "${HOME}/.go-global-pkgs"

#______________________________________________________________________________

# SECTION: Docker

# The Docker engine
sudo pacman -S --needed docker

# This installs the BuildKit plugin for the Docker cli
# The improves the speed of building
sudo pacman -S --needed docker-buildx

# sudo pacman -S --needed docker-compose

# Language support for `Dockerfile` and `compose.yml` files
go install \
github.com/docker/docker-language-server/cmd/docker-language-server@latest

#______________________________________________________________________________
