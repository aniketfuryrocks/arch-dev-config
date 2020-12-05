#Basic tools
sudo pacman -S git ranger unzip htop powertop
#yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#rust
sudo pacman -S rustup
rustup install stable
#cargo
cargo install bat
cargo install hostcat

#bluetooth
sudo pacman -S bluez bluez-utils blueman pulseaudio-bluetooth
sudo systemctl enable bluetooth
sudo mkdir /etc/bluetooth
sudo cp audio.conf /etc/bluetooth/audio.conf

#printer
sudo pacman -S cups hplip
sudo systemctl enable org.cups.cupsd.service

#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
#zshrc
cp .zshrc ~/.zshrc
