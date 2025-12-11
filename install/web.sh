#!/bin/bash

sudo apt -y install php composer php-xml php-gd php-bcmath npm

sudo systemctl stop apache2
sudo systemctl disable apache2

sudo apt -y remove apache2

sudo apt -y autoremove