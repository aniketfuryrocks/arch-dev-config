#oh my zsh
export ZSH="/home/dedsec/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#default apps
export EDITOR=nano
#nvm
source /usr/share/nvm/init-nvm.sh
#cargo
export PATH="$PATH:$HOME/.cargo/bin"
#deno
export DENO_INSTALL="/home/dedsec/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
# aliases
alias dir="ranger"
alias commit="git commit -m"
alias push="git push -u origin master"
alias data="cd /media/dedsec/Data"
alias pro="cd /media/dedsec/Projects"
alias nvidia="optimus-manager --switch nvidia"
alias intel="optimus-manager --switch intel"
