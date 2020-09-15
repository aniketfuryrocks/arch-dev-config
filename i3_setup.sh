echo "install graphics drivers before running this"
#i3 and lightdm
sudo pacman -S i3 lightdm lightdm-webkit2-greeter picom rofi ranger conky
sudo enable lightdm
#i3 config
mkdir -p ~/.config
cp -avr .config/i3 ~/.config
cp -avr .config/i3blocks ~/.config
