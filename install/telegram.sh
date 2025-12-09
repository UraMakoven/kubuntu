#!/bin/bash


TMP_FILE="/dev/shm/tsetup.tar.xz"

wget -O "$TMP_FILE" "https://telegram.org/dl/desktop/linux"

mkdir -p ~/Programs

tar xf "$TMP_FILE" -C ~/Programs

stow -t ~ telegram
