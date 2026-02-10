#!/usr/bin/env bash

# The most widely used JavaScript runtime
sudo pacman -S --needed nodejs

# The most widely used JavaScript package manager
# On Arch Linux, the `nodejs` package does not include `npm`
sudo pacman -S --needed npm
