#!/bin/bash

tar xzf ../src/zshplugins -C ~
stow -t ~ zsh

sudo apt -y install zsh

chsh -s $(which zsh)
