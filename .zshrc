export ZSH="/home/aniketfuryrocks/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
ZSH_THEME="robbyrussell"
#plugins
plugins=(git zsh-autosuggestions)
#default apps
export EDITOR=nvim
#nvm
source /usr/share/nvm/init-nvm.sh
#cargo
export PATH="$PATH:$HOME/.cargo/bin"
#deno
export DENO_INSTALL="/home/dedsec/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# aliases
alias dir="ranger"
source /home/aniketfuryrocks/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
