sudo mkdir -p /etc/X11/xorg.conf.d
echo "Section "InputClass"
        Identifier "touchpad"
        MatchIsTouchpad "on"
        Driver "libinput"
        Option "Tapping" "on"
        Option "TappingButtonMap" "lrm"
        Option "NaturalScrolling" "on"
        Option "ScrollMethod" "twofinger"
EndSection" | sudo tee /etc/X11/xorg.conf.d/90-touchpad.conf
