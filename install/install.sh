#!/bin/bash

CUR_DIR="$(cd "$(dirname "$0")" && pwd)"
STOW_DIR="${CUR_DIR/install/packages}"
export STOW_DIR
export INSTALL_DIR="$CUR_DIR"

# спросить пароль один раз
sudo -v

# в фоне обновлять sudo-кэш, пока работает скрипт
while true; do
    sudo -v
    sleep 60
done &
SUDO_REFRESH_PID=$!

sudo apt update
sudo apt -y upgrade

sudo apt -y install stow lazygit

git config --global user.email "ura.makoven@gmail.com"
git config --global user.name "$HOST"

"$INSTALL_DIR/kde.sh"

"$INSTALL_DIR/feedback.sh"

"$INSTALL_DIR/mc.sh"
"$INSTALL_DIR/tapper.sh"

"$INSTALL_DIR/snapd.sh"

"$INSTALL_DIR/zsh.sh"

#"$INSTALL_DIR/flameshot.sh"

sudo -y apt autoremove

# по завершению убить обновление таймера
kill $SUDO_REFRESH_PID
