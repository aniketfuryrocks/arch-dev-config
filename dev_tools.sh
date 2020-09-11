#nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#node
nvm install node
#yarn
sudo pacman -S yarn --assume-installed=nodejs
echo "export PATH=\"\$PATH:$(yarn global bin)\"" >> ~/.zshrc
source .zshrc
yarn global add nodemon serverless serve expo-cli
#nginx
sudo pacman -S nginx
sudo cp nginx.conf /etc/nginx.conf
sudo systemctl enable nginx
#deno
curl -fsSL https://deno.land/x/install/install.sh | sh
#java
sudo pacman -S jdk-openjdk
#python
sudo pacman -S python3 python3-pip
