#!/bin/bash

#sudo cp /etc/systemd/journald.conf /etc/systemd/journald.conf.orig

echo "
[Journal]
# Хранить только в оперативке
Storage=volatile
# Ограничить общий объём логов
RuntimeMaxUse=50M
RuntimeKeepFree=10M
# Ограничить размер одного файла
RuntimeMaxFileSize=10M
# Срок хранения (чтобы не копить)
MaxRetentionSec=1week
# Снижает количество сбросов на диск
SyncIntervalSec=30s
" | sudo tee /etc/systemd/journald.conf

sudo systemctl restart systemd-journald

sudo journalctl --vacuum-time=1d
