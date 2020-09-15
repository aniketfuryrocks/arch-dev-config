echo "NVIDIA only setup"

sudo mkdir -p /etc/X11/xorg.conf.d

#make nvidia primary
echo "Section "OutputClass"
    Identifier "intel"
    MatchDriver "i915"
    Driver "modesetting"
EndSection

Section "OutputClass"
    Identifier "nvidia"
    MatchDriver "nvidia-drm"
    Driver "nvidia"
    Option "AllowEmptyInitialConfiguration"
    Option "PrimaryGPU" "yes"
    ModulePath "/usr/lib/nvidia/xorg"
    ModulePath "/usr/lib/xorg/modules"
EndSection" >> /etc/X11/xorg.conf.d/10-nvidia-drm-outputclass.conf

#use nvidia
echo "xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto" >> ~/.xinitrc

#follow
echo "Follow the following link https://wiki.archlinux.org/index.php/NVIDIA_Optimus"

#lightdm setup script
echo -e "xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
" > /etc/lightdm/display_setup.sh

chmod +x /etc/lightdm/display_setup.sh

#start script
echo "write the following line after [Seat:*] display-setup-script=/etc/lightdm/display_setup.sh"
