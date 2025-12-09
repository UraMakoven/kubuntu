#!/bin/bash


TMP_FILE="/dev/shm/applauncher.deb"

wget -O "$TMP_FILE" "https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb"

sudo dpkg -i "$TMP_FILE"
rm "$TMP_FILE"
