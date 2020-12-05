# i3 and lightdm (Install plasma for settings and other support)
sudo pacman -S i3 i3-gaps lightdm lightdm-webkit2-greeter 
yay -S polybar
sudo systemctl enable lightdm

# i3 config
mkdir -p ~/.config
cp -avr .config/i3 ~/.config
cp -avr .config/i3blocks ~/.config
cp -avr .config/polybar ~/.config
cp -avr .config/picom ~/.config
