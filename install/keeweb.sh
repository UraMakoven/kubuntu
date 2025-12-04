#!/bin/bash


TMP_FILE="/dev/shm/keeweb.deb"

wget -qO "$TMP_FILE" "https://github.com/keeweb/keeweb/releases/download/v1.18.7/KeeWeb-1.18.7.linux.x64.deb"

sudo dpkg -i "$TMP_FILE"
rm "$TMP_FILE"
