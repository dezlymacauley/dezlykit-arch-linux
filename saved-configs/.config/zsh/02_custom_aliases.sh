# Edit configuration files
alias cfgzsh="cd $HOME/.config/zsh && nvim ."
alias cfgghostty="cd $HOME/.config/ghostty/ && nvim ."
alias cfghyprland="cd $HOME/.config/hypr/ && nvim ."
alias cfgneovim="cd $HOME/.config/nvim/ && nvim ."
alias cfgyazi="cd $HOME/.config/yazi/ && nvim ."
#______________________________________________________________________________
# Reload wallpaper
alias wallpaper_reload="systemctl --user restart hyprpaper.service"
#______________________________________________________________________________
# Directory display
alias tree="tree -a -I '.git'"
#______________________________________________________________________________
# Disk space management
alias disk_space="df -h"
alias fsize="du -sh"
alias dsize="du -sh"
#______________________________________________________________________________
# Battery Check
alias battery="acpi"
#______________________________________________________________________________
# Screen Brightness Control
alias b1="brightnessctl set 1%"
alias b2="brightnessctl set 2%"
alias b4="brightnessctl set 4%"
alias b5="brightnessctl set 5%"
alias b10="brightnessctl set 10%"
alias b20="brightnessctl set 20%"
alias b25="brightnessctl set 25%"
alias b50="brightnessctl set 50%"
alias b100="brightnessctl set 100%"
#______________________________________________________________________________
# Improved ls appearance

# `lsd` is the Rust alternative to the `ls` command
if command -v lsd 1>/dev/null 2>/dev/null; then
   alias ls="lsd"
fi
#______________________________________________________________________________
