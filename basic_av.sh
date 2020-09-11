#basic visual
pacman -S xorg xrandr xorg-server xorg-xinit noto-fonts alacritty
#basic audio
pacman -S pulseaudio
#alacritty config
mkdir -p ~/.config
cp -avr .config/alacritty ~/.config
#nvidia
read -p "Do you use nvidia ? " -n 1 -r
echo #move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  sudo pacman -S nvidia nvidia-utils nvidia-settings xorg-server-devel opencl-nvidia
  sudo echo "blacklist nouveau" | sudo tee /usr/lib/modprobe.d/nvidia.conf
fi
#dpi
cp .Xresources ~/.Xresources
#gestures
pamac build libinput-gestures
sudo gpasswd -a $USER input
libinput-gestures-setup start
libinput-gestures-setup autostart
