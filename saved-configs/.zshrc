# Source all `.sh` files in `config/zsh`
for dot_sh_file in "$HOME/.config/zsh/"*.sh; do
  [ -f "$dot_sh_file" ] || continue
  . "$dot_sh_file"
done
