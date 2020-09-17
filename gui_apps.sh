#disk
sudo pacman -S gnome-disk-utility gnome-keyring obs-studio firefox gpick atom
#snap and flatpak
pamac build snapd
sudo systemctl enable --now snapd.socket
sudo systemctl start snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

sudo pacman -S snap flatpak
#vscode
sudo snap install code --classic
#mailspring
sudo snap install mailspring --classic
#discord
sudo snap install discord --classic
#spotify
flatpak install spotify
#woeusb
pamac build woeusb-git
#jetbrains toolbox
pamac build jetbrains-toolbox
#zoom
pamac build zoom
#pamac
pamac build postman
