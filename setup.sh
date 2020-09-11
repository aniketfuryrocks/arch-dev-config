#oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#source
source ~/.zshrc
#syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
#auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
#rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update
#yarn
sudo pacman -Syu yarn --assume-installed=node
#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
nvm install node
#yarn global
yarn global add nodemon serverless serve expo-cli
#configs
sudo cp ./nginx.conf /etc/nginx/nginx.conf
sudo cp ./hosts /etx/hosts
cp .zshrc ~/.zshrc
#yarn global path
echo "export PATH=\"\$PATH:$(yarn global bin)\"" >> ~/.zshrc
#gnome disk,nginx, gnome-keyring, java, obs studio
sudo pacman -S gnome-disk-utility nginx gnome-keyring jdk-openjdk obs-studio opera unzip
#enable nginx
sudo systemctl enable nginx
sudo systemctl start nginx
#woe-usb
pamac build woeusb-git
#vscode
sudo snap install code --classic
#mailspring
sudo snap install mailspring --classic
#discord
sudo snap install discord --classic
#spotify
#pamac build mailspring
flatpak install spotify
#deno
curl -fsSL https://deno.land/x/install/install.sh | sh
#jetbrrains toolbox
pamac build jetbrains-toolbox
#gestures
pamac build libinput-gestures
sudo gpasswd -a $USER input
libinput-gestures-setup start
libinput-gestures-setup autostart
#zoom
pamac build zoom
#upgrade
sudo pacman -Syu 
