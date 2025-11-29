#!/bin/bash

if command -v tapper >/dev/null 2>&1; then
    echo "Tapper уже установлен. Выход."
    exit 0
fi

#add layouts
kwriteconfig5 --file kxkbrc --group Layout --key LayoutList "us,ru,ua"
kwriteconfig5 --file kxkbrc --group Layout --key Use true
#change mode
kwriteconfig5 --file kxkbrc --group Layout --key SwitchMode "Window"

cd "$INSTALL_DIR"
mkdir tapper
cd tapper
tar xzf "$INSTALL_DIR/src/tapper-0.7.4-0.vdb.1.tar.gz"
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
