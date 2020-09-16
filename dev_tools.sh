#git
git config --global user.email "prajapati.ani306@gmail.com"
git config --global user.name "aniketfuryrocks"
git config --global credential.helper store

#nvm
pamac build nvm

#node
nvm install node

#yarn
sudo pacman -S yarn --assume-installed=nodejs
echo "export PATH=\"\$PATH:$(yarn global bin)\"" >> ~/.zshrc
source ~/.zshrc
yarn global add nodemon serverless serve expo-cli

#nginx
sudo pacman -S nginx
sudo cp nginx.conf /etc/nginx.conf
sudo systemctl enable nginx

#deno
curl -fsSL https://deno.land/x/install/install.sh | sh

#java python aws-cli
sudo pacman -S jdk-openjdk python3 python-pip aws-cli
