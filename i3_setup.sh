#i3 and lightdm
sudo pacman -S i3 lightdm lightdm-gtk-greeter picom alacritty rofi firefox
sudo enable lightdm
#i3 config
mkdir -p .config/i3
cp -avr .config/i3 ~/.config
