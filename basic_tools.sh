#Basic tools
sudo pacman -S git NetworkManager ranger zsh base-devel linux-tools unzip htop powertop
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


# _________configs___________
#hostname
read -p "Enter hostname : " host_name
echo $host_name | sudo tee -a /etc/hostname
#hosts
echo "127.0.1.1	$host_name" | sudo tee -a /etc/hosts
sudo cp hosts /etc/hosts


#syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
#auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#zshrc
cp .zshrc ~/.zshrc
