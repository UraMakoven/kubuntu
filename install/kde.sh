#!/bin/bash

plasma-apply-lookandfeel -a org.kde.breezedark.desktop

kwriteconfig6 --file kwinrc --group Desktops --key Number 4
kwriteconfig6 --file kwinrc --group Desktops --key Rows 2

kwriteconfig6 --file kwinrc --group "Plugins" --key "blurEnabled" true
kwriteconfig6 --file kwinrc --group "Plugins" --key "diminactiveEnabled" true

kwriteconfig6 --file kwinrc --group "NightColor" --key "Active" true

kwriteconfig6 --file kscreenlockerrc --group Daemon --key "LockGrace" 60

kwriteconfig6 --file kactivitymanagerdrc --group "General" --key "keepHistory" false
kwriteconfig6 --file kprivacyrc --group "RecentUsage" --key "rememberActivity" false
kwriteconfig6 --file kprivacyrc --group "RecentUsage" --key "rememberDocuments" false
kwriteconfig6 --file kprivacyrc --group "RecentUsage" --key "rememberApplications" false
kwriteconfig6 --file kiorc --group "RecentDocuments" --key "MaxRecentDocuments" 0

kwriteconfig6 --file ksmserverrc --group General --key loginMode emptySession
kwriteconfig6 --file ksmserverrc --group General --key confirmLogout false

stow -nvt ~ kde --adopt 2>&1 | grep "LINK:" | awk '{print $2}' | while read f; do
    echo "Deleting $HOME/$f"
    rm -f "$HOME/$f"
done

stow -t ~ kde
