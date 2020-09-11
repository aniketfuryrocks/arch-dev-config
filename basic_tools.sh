#Basic tools
sudo pacman -S git curl wget NetworkManager ranger zsh base-devel linux-tools
#yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
#cargo
cargo install bat
cargo install hostcat
#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# _________configs___________
#hostname
read -p "Enter hostname : " host_name
echo $host_name | sudo tee -a /etc/hostname
#hosts
echo "127.0.1.1	$host_name" | sudo tee -a /etc/hosts
sudo cp hosts /etc/hosts
#zshrc
cp .zshrc ~/.zshrc
