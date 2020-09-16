echo "install graphics drivers before running this"

#i3 and lightdm

sudo pacman -S i3-gaps lightdm lightdm-webkit2-greeter picom rofi ranger conky playerctl libnotify dunst
pamac build polybar
sudo systemctl enable lightdm

#i3 config
mkdir -p ~/.config
cp -avr .config/i3 ~/.config
cp -avr .config/i3blocks ~/.config
cp -avr .config/dunst ~/.config
cp -avr .config/polybar ~/.config/
