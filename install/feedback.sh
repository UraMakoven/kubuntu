#!/bin/bash
# Скрипт включает звездочки при вводе пароля для sudo (pwfeedback)

# Создаем резервную копию sudoers
sudo cp /etc/sudoers /etc/sudoers.bak

# Проверяем, есть ли уже pwfeedback
if sudo grep -q "Defaults.*pwfeedback" /etc/sudoers; then
    echo "pwfeedback уже включен"
else
    # Добавляем pwfeedback в Defaults
    sudo sed -i 's/^Defaults\s*\(.*\)/Defaults \1,pwfeedback/' /etc/sudoers
    echo "pwfeedback включен"
fi
