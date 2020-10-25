#basic visual
sudo pacman -S xorg xorg-server-devel xorg-server xorg-xinit alacritty vlc
#basic audio
sudo pacman -S pulseaudio pulseaudio-alsa pulseaudio-bluetooth alsa-utils alsa-plugins alsa-lib pavucontrol
#basic fonts
sudo pacman -S noto-fonts-emoji noto-fonts ttf-ubuntu-font-family ttf-dejavu ttf-freefont ttf-liberation ttf-droid ttf-inconsolata ttf-roboto terminus-font ttf-font-awesome
yay -S siji-git ttf-ms-fonts
#alacritty config
mkdir -p ~/.config
cp -avr .config/alacritty ~/.config
cp -avr .config/fontconfig ~/.config
#nvidia
read -p "Do you use nvidia ? " -n 1 -r
echo #move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  sudo pacman -S nvidia nvidia-utils nvidia-settings opencl-nvidia
  sudo echo "blacklist nouveau" | sudo tee /usr/lib/modprobe.d/nvidia.conf
fi
#dpi
cp .Xresources ~/.Xresources
