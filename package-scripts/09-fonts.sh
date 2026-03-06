#!/bin/sh

#______________________________________________________________________________

# My nerd font of choice
sudo pacman -S --needed ttf-meslo-nerd

# Recommended by Wezterm to display Nerd font symbols correctly
sudo pacman -S --needed ttf-nerd-fonts-symbols-mono

# Needed by web browsers and GUI tools
echo
sudo pacman -S --needed noto-fonts

echo
sudo pacman -S --needed noto-fonts-emoji

echo
sudo pacman -S --needed noto-fonts-cjk

echo
sudo pacman -S --needed noto-fonts-extra 

#______________________________________________________________________________
