#!/bin/bash

plasma-apply-lookandfeel -a org.kde.breezedark.desktop

kwriteconfig6 --file kwinrc --group Desktops --key Number 4
kwriteconfig6 --file kwinrc --group Desktops --key Rows 2

kwriteconfig6 --file kwinrc --group "Plugins" --key "blurEnabled" true
kwriteconfig6 --file kwinrc --group "Plugins" --key "diminactiveEnabled" true

kwriteconfig6 --file kwinrc --group "NightColor" --key "Active" true

kwriteconfig6 --file kscreenlockerrc --group Daemon --key "LockGrace" 60

kwriteconfig6 --file kactivitymanagerdrc --group Plugins --key org.kde.ActivityManager.ResourceScoringEnabled false
kwriteconfig6 --file kactivitymanagerdrc --group General --key KeepHistory false

kwriteconfig6 --file ksmserverrc --group General --key loginMode emptySession

