#disk
sudo pacman -S gnome-disk-utility gnome-keyring obs-studio firefox gpick atom
#snap
yay -S snapd
sudo systemctl enable --now snapd.socket
sudo systemctl start snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
#flatpak
sudo pacman -S flatpak
#vscode
yay -S visual-studio-code-bin
#mailspring
yay -S mailspring
#discord
yay -S discord
#spotify
sudo snap install spotify
#woeusb
yay -S woeusb
#jetbrains toolbox
yay -S jetbrains-toolbox
#zoom
yay -S zoom
#pamac
yay -S postman-bin
