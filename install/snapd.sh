#!/bin/bash

# Получаем список всех пакетов кроме core

echo "Удаляем все snap-пакеты которые можем..."
for pkg in $(snap list | awk 'NR>1 {print $1}'); do
    echo "Удаляем $pkg..."
    sudo snap remove --purge "$pkg"
done

echo "Удаляем все snap-пакеты которые остались..."
for pkg in $(snap list | awk 'NR>1 {print $1}'); do
    echo "Удаляем $pkg..."
    sudo snap remove --purge "$pkg"
done

echo "Удаляем все snap-пакеты, если еще есть..."
for pkg in $(snap list | awk 'NR>1 {print $1}'); do
    echo "Удаляем $pkg..."
    sudo snap remove --purge "$pkg"
done

sudo apt purge -y snapd

sudo rm -rf ~/snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snapd
sudo rm -rf /var/cache/snapd

echo "Snap полностью удален!"
