#!/bin/bash

cd ~/.dotfiles/install

#sudo apt update
#sudo apt -y upgrade

sudo apt -y install stow

cd ~/.dotfiles/packages
stow -t ~ */

cd ~/.dotfiles/install

sudo apt -y install mc

./snap.sh
./tapper.sh
