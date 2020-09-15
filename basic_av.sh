#basic visual
pacman -S xorg xrandr xorg-server-devel xorg-server xorg-xinit noto-fonts alacritty
#basic audio
pacman -S pulseaudio pulseaudio-alsa pavucontrol
#alacritty config
mkdir -p ~/.config
cp -avr .config/alacritty ~/.config
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
