# DezlyKit - Arch Linux
_______________________________________________________________________________

## Requirements
1. A freshly installed Arch Linux setup
2. Git 

_______________________________________________________________________________

```sh
sudo pacman -Syu
```

```sh
sudo pacman -S --needed git
```
_______________________________________________________________________________

```sh
git clone https://github.com/dezlymacauley/dezlykit-arch-linux.git
```
_______________________________________________________________________________

Run this command to make all `.sh` files in 
the `package-scripts` directory executable.
```sh
find package-scripts -type f -name '*.sh' -exec chmod +x {} \;
```
_______________________________________________________________________________

To login to Hyprland run this command from the TTY:
```sh
start-hyprland
```
_______________________________________________________________________________
