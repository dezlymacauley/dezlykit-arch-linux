#______________________________________________________________________________
# Activates the functionality of Mise,
# a polyglot tool version manager
if command -v mise 1>/dev/null 2>/dev/null; then
	eval "$(mise activate zsh)"
fi
#______________________________________________________________________________
# Starship shell prompt written in Rust
if command -v starship 1>/dev/null 2>/dev/null; then
   eval "$(starship init zsh)"
fi
#______________________________________________________________________________
