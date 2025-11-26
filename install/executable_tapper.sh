#!/bin/bash

kwriteconfig5 --file kxkbrc --group Layout --key LayoutList "us,ru,ua"

cd ~/install

mkdir tapper
tar xzf ./src/tapper-0.7.4-0.vdb.1.tar.gz tapper
cd tapper-0.7.4-0.vdb.1

mkdir _build
cd _build

sudo ../bin/setup.sh -y

../configure
make -j

sudo make install

#29:KEY_LEFTCTRL, 54:KEY_RIGHTSHIFT, 97:KEY_RIGHTCTRL
tapper --save-setting 29=@1, 97=@2, 54=@3

tapper --autostart
