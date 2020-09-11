#basic visual
pacman -S xorg xrandr xorg-server xorg-xinit noto-fonts
#basic audio
pacman -S pulseaudio
#nvidia
read -p "Do you use nvidia ? " -n 1 -r
echo #move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
  sudo pacman -S nvidia nvidia-utils nvidia-settings xorg-server-devel opencl-nvidia
  sudo echo "blacklist nouveau" | sudo tee /usr/lib/modprobe.d/nvidia.conf
fi
