#i3 and lightdm
sudo pacman -S i3 lightdm lightdm-gtk-greeter picom rofi
sudo enable lightdm
#i3 config
mkdir -p ~/.config
cp -avr .config/i3 ~/.config
