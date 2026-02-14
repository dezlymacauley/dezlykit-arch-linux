#!/bin/dash
#______________________________________________________________________________

# SECTION: Wayland Compositor & Core Components

# Hyprland — dynamic tiling Wayland compositor
# Manages windows, workspaces, and display rendering.
echo
sudo pacman -S --needed hyprland
echo

# Hyprland desktop portal backend
# Enables screen sharing, screenshots, and sandboxed permissions.
echo
sudo pacman -S --needed xdg-desktop-portal-hyprland
echo

# Screen locker for Hyprland
echo
sudo pacman -S --needed hyprlock
echo

# Wallpaper utility for Hyprland
echo
sudo pacman -S --needed hyprpaper
echo

# Polkit authentication agent for GUI privilege escalation
echo
sudo pacman -S --needed hyprpolkitagent
echo


#______________________________________________________________________________

# SECTION: Hyprland Utilities

# Color picker with screen freeze capability
echo
sudo pacman -S --needed hyprpicker
echo

# Screenshot tool for Hyprland (uses hyprpicker for region selection)
echo
sudo pacman -S --needed hyprshot
echo


#______________________________________________________________________________

# SECTION: Desktop Integration (Wayland Support)

# GTK desktop portal backend (file pickers, dialogs, etc.)
echo
sudo pacman -S --needed xdg-desktop-portal-gtk
echo

# Wayland support for Qt5 applications
echo
sudo pacman -S --needed qt5-wayland
echo

# Wayland support for Qt6 applications
echo
sudo pacman -S --needed qt6-wayland
echo


#______________________________________________________________________________

# SECTION: Desktop UX Components

# Notification daemon (Wayland-compatible)
echo
sudo pacman -S --needed swaync
echo

# Application launcher (XWayland-based)
echo
sudo pacman -S --needed rofi
echo

# Volume control GUI
echo
sudo pacman -S --needed pavucontrol
echo

#______________________________________________________________________________

# SECTION: External Drive Management

echo
sudo pacman -S --needed udiskie

#______________________________________________________________________________

# SECTION: Clipboard Functionality

# Adds clipboard functionality to Wayland
# Neovim requires a clipboard tool to be installed.
sudo pacman -S --needed wl-clipboard

# A Wayland clipboard manager
echo
sudo pacman -S --needed cliphist 

# Ensures that copied data remains in the clipboard after an application
# has been closed.
echo
sudo pacman -S --needed wl-clip-persist

#______________________________________________________________________________

# SECTION: GUI Applications

# Web browser
echo
sudo pacman -S --needed firefox
echo

# Video player
echo
sudo pacman -S --needed mpv
echo

# Lightweight image viewer
echo
sudo pacman -S --needed viewnior
echo


#______________________________________________________________________________

# SECTION: Theming

# GTK theme configuration tool
echo
sudo pacman -S --needed nwg-look
echo

# GTK theme
echo
sudo pacman -S --needed materia-gtk-theme
echo

#______________________________________________________________________________

# SECTION: Content Creation

# Video recording Software
sudo pacman -S --needed obs-studio       	

# Background removal plugin for OBS
paru -S --needed --noconfirm obs-backgroundremoval

# allows OBS to use your Intel UHD 620 (my GPU) through VAAPI/QuickSync.
sudo pacman -S --needed intel-media-driver 

# Video Editing Software
sudo pacman -S --needed kdenlive

# Thumbnail creation / Image editing software
sudo pacman -S --needed gimp

# Document creation
sudo pacman -S --needed libreoffice-fresh

#______________________________________________________________________________
