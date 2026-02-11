# SECTION: Rust

# This is where executable binaries from Rust packages 
# on `https://crates.io` will be placed.
# This allows the shell to 

# This allows the shell access the binaries of Rust packages 
# that were installed with the command:
# `cargo install name-of-package` or `cargo binstall name-of-package`
export PATH="$HOME/.cargo/bin:$PATH"

# When installing Rust packages with `cargo-binstall`,
# this will skip the telemetry prompt, and automatically answer `no`
export BINSTALL_DISABLE_TELEMETRY=true

#______________________________________________________________________________

# SECTION: TypeScript / JavaScript

# This allows the shell access the binaries of npm packages 
# that were installed with the command:
# `npm install -g name-of-package`
export PATH="$HOME/.npm-global-pkgs/bin:$PATH"

#______________________________________________________________________________

# SECTION: Go

# These two lines are there to keep my home directory clean 
# when programming in Go.

# If the `GOPATH` and `GOBIN` variables are not set, 
# Go will create a directory called `go` in the home directory.
export GOPATH="$HOME/.go-global-pkgs"
export GOBIN="$GOPATH/bin" 

# This allows the shell access the binaries of Go packages 
# that were installed with the command:
# `go install name-of-package`
export PATH="$GOBIN:$PATH"

#______________________________________________________________________________

# SECTION: Python

# This allows the shell access the binaries of Python packages 
# that were installed with the command:
# `uv tool install name-of-package`
export PATH="$HOME/.local/bin:$PATH"

#______________________________________________________________________________
