#!/bin/bash


TMP_FILE="/dev/shm/obsidian.deb"

wget -O "$TMP_FILE" "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.10.6/obsidian_1.10.6_amd64.deb"

sudo dpkg -i "$TMP_FILE"
rm "$TMP_FILE"
