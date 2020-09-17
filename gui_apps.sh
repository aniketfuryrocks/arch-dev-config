#disk
sudo pacman -S gnome-disk-utility gnome-keyring obs-studio firefox gpick atom
#snap
pamac build snapd
sudo systemctl enable --now snapd.socket
sudo systemctl start snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
#flatpak
sudo pacman -S flatpak
#vscode
sudo snap install code --classic
#mailspring
pamac build mailspring
#discord
sudo snap install discord --classic
#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | gpg --import -
pamac build spotify
#woeusb
pamac build woeusb-git
#jetbrains toolbox
pamac build jetbrains-toolbox
#zoom
pamac build zoom
#pamac
pamac build postman
