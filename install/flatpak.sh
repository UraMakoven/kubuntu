#!/bin/bash

sudo apt -y install flatpak

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo apt install -y plasma-discover-backend-flatpak
