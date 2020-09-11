#i3 and lightdm
sudo pacman -S i3 lightdm lightdm-gtk-greeter picom rofi ttf-font-awesome
sudo enable lightdm
#i3 config
mkdir -p ~/.config
cp -avr .config/i3 ~/.config
cp -avr .config/i3blocks ~/.config
