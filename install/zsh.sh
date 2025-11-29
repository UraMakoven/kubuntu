#!/bin/bash

tar xzf "$INSTALL_DIR/src/zshplugins.tar.gz" -C ~

rm ~/.config/konsolerc
rm ~/.local/share/konsole/ura.profile

mkdir -p ~/.local/share/fonts
tar xzf "$INSTALL_DIR/src/fonts.tar.gz" -C ~/.local/share/fonts
fc-cache -fv

stow -t ~ zsh

sudo apt -y install zsh fzf eza zoxide fd-find bat

chsh -s $(which zsh)
