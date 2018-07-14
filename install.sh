#!/bin/bash

function sl () { 
  if [ -f $2 ]; then
    rm -f $2
  fi;

  ln -s $1 $2
}

sl ~/.dotfiles/vscode/keybindings.json ~/.config/Code/User/keybindings.json
sl ~/.dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
