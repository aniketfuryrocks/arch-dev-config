echo "install graphics drivers before running this"

# i3 and lightdm

sudo pacman -S i3 i3-gaps lightdm lightdm-webkit2-greeter
pamac build polybar
sudo systemctl enable lightdm

# utils
sudo pacman -S picom rofi ranger conky playerctl libnotify dunst feh

# tray icon tools
sudo pacman -S network-manager-applet mictray pasystray
pamac build mictray

# i3 config
mkdir -p ~/.config
cp -avr .config/i3 ~/.config
cp -avr .config/i3blocks ~/.config
cp -avr .config/dunst ~/.config
cp -avr .config/polybar ~/.config
cp -avr .config/picom ~/.config
