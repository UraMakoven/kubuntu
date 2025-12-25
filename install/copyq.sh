#!/bin/bash

stow -t ~ copyq

sudo apt -y install copyq

sudo apt -y install git cmake scdoc

cd /dev/shm
git clone https://github.com/ReimuNotMoe/ydotool.git
cd ydotool
mkdir build
cd build
cmake ..
time make -j "$(nproc)"
sudo make install

sudo usermod -aG input "$(whoami)"

echo '## ydotoold fix
##     https://github.com/ReimuNotMoe/ydotool/issues/25#issuecomment-535842993
KERNEL=="uinput", GROUP="input", MODE="0660", OPTIONS+="static_node=uinput"
' | sudo tee /etc/udev/rules.d/80-uinput.rules > /dev/null
