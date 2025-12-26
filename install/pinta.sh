#!/bin/bash

TMP_FILE="/dev/shm/xtradeb.deb"

wget -O "$TMP_FILE" https://launchpad.net/~xtradeb/+archive/ubuntu/apps/+files/xtradeb-apt-source_0.4_all.deb
sudo apt -y install "$TMP_FILE"

sudo apt-get update

sudo apt-get -y install pinta libadwaita-1-0

