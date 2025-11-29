#!/bin/bash

CUR_DIR="$(cd "$(dirname "$0")" && pwd)"
STOW_DIR="${CUR_DIR/install/packages}"
export STOW_DIR
export INSTALL_DIR="$CUR_DIR"

#sudo apt update
#sudo apt -y upgrade

sudo apt -y install stow

"$INSTALL_DIR/mc.sh"
"$INSTALL_DIR/tapper.sh"

"$INSTALL_DIR/snap.sh"

"$INSTALL_DIR/zsh.sh"
