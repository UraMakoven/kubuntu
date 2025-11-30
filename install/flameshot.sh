#!/bin/bash

stow -t ~ flameshot

sudo apt -y install wl-clipboard flameshot

echo "\n[services][net.local.sh.desktop]\n_launch=Print\n\n" >> ~/.config/kglobalshortcutsrc
