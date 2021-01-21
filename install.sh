#!/bin/bash

# https://stackoverflow.com/a/246128
DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

function info () {
  echo -e "\e[39m$1\e[0m"
}

function success () {
  echo -e "\e[32m$1\e[0m"
}

function make_link () {
  # If target is a symlink and it exists, then delete it
  if [ -L $2 ]; then
    rm $2
  # If target is a regular file and it exists, then back it up
  elif [ -f $2 ]; then
    mv $2 $2.bak
  fi
  # Make symlink
  ln -s $1 $2
}

info "Installing programs ..."

sudo apt update
sudo apt install code r-base

success "Programs installed"

info "Installing configurations ..."

# R
make_link "$DOTFILES_ROOT/R/Renviron" "$HOME/.Renviron"
make_link "$DOTFILES_ROOT/R/Rprofile" "$HOME/.Rprofile"

# VS Code
make_link "$DOTFILES_ROOT/vscode/keybindings.json" "$HOME/.config/Code/User/keybindings.json"
make_link "$DOTFILES_ROOT/vscode/settings.json" "$HOME/.config/Code/User/settings.json"

success "Configurations installed"
