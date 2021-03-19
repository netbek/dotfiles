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

code --install-extension bpruitt-goddard.mermaid-markdown-syntax-highlighting
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension esbenp.prettier-vscode
code --install-extension glen-84.sass-lint
code --install-extension jakeboone02.mediawiki
code --install-extension joaompinto.asciidoctor-vscode
code --install-extension lextudio.restructuredtext
code --install-extension ms-mssql.mssql
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension PhilHindle.errorlens
code --install-extension richie5um2.vscode-sort-json
code --install-extension ronnidc.nunjucks
code --install-extension samuelcolvin.jinjahtml
code --install-extension torn4dom4n.latex-support
code --install-extension vstirbu.vscode-mermaid-preview

success "Programs installed"

info "Installing configurations ..."

# R
make_link "$DOTFILES_ROOT/R/Renviron" "$HOME/.Renviron"
make_link "$DOTFILES_ROOT/R/Rprofile" "$HOME/.Rprofile"

# VS Code
make_link "$DOTFILES_ROOT/vscode/keybindings.json" "$HOME/.config/Code/User/keybindings.json"
make_link "$DOTFILES_ROOT/vscode/settings.json" "$HOME/.config/Code/User/settings.json"

success "Configurations installed"
