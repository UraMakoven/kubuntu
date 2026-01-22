#!/bin/bash

echo "#!/bin/bash
cd /sys/kernel/debug/asus-nb-wmi
echo 0x5002f > dev_id
echo 0 > ctrl_param
cat devs
echo 1 > ctrl_param
cat devs
" | sudo tee /usr/bin/asus-vivobook-rgb-keyboard.sh

sudo chmod +x /usr/bin/asus-vivobook-rgb-keyboard.sh

echo "[Unit]
Description=ASUS Vivobook OOBE mode for RGB keyboard backlight
After=hibernate.target
StartLimitBurst=0

[Service]
Type=oneshot
ExecStart=/usr/bin/asus-vivobook-rgb-keyboard.sh

[Install]
WantedBy=hibernate.target multi-user.target
" | sudo tee /etc/systemd/system/asus-vivobook-rgb-keyboard.service

sudo systemctl daemon-reexec
sudo systemctl daemon-reload

sudo systemctl start  asus-vivobook-rgb-keyboard

sudo systemctl enable  asus-vivobook-rgb-keyboard

wget https://github.com/tshakalekholoane/bat/releases/download/1.2/bat ~/Programs/bat
sudo chmod +x ~/Programs/bat

sudo ~/Programs/bat threshold 80
sudo ~/Programs/bat persist
