#!/bin/bash


TMP_FILE="/dev/shm/dropbox.deb"

wget -qO "$TMP_FILE" "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2025.05.20_amd64.deb"

sudo dpkg -i "$TMP_FILE"
rm "$TMP_FILE"
