# utils
sudo pacman -S picom rofi ranger playerctl libnotify dunst feh dolphin polkit-gnome pamac-tray
yay -S betterlockscreen

# dunst notification config
cp -avr .config/dunst ~/.config

# tray
sudo pacman -S network-manager-applet pasystray cbatticon flameshot
yay -S mictray
