#!/bin/bash

flatpak install -y flathub org.flameshot.Flameshot

mkdir -p ~/.var/app/org.flameshot.Flameshot/config/flameshot

echo '[General]
buttons=@Variant(\0\0\0\x7f\0\0\0\vQList<int>\0\0\0\0\r\0\0\0\0\0\0\0\x1\0\0\0\x2\0\0\0\x3\0\0\0\x5\0\0\0\x12\0\0\0\xf\0\0\0\x13\0\0\0\n\0\0\0\v\0\0\0\x17\0\0\0\f\0\0\0\x11)
contrastOpacity=188
copyOnDoubleClick=true
showAbortNotification=false
showDesktopNotification=false
showHelp=false
showStartupLaunchMessage=false
' | tee ~/.var/app/org.flameshot.Flameshot/config/flameshot/flameshot.ini > /dev/null

sudo flatpak override --filesystem=xdg-config:rw org.flameshot.Flameshot

mkdir -p ~/Programs

echo '#!/bin/bash

flatpak run org.flameshot.Flameshot gui
' | tee ~/Programs/flameshot.sh > /dev/null

chmod +x ~/Programs/flameshot.sh
