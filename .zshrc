#oh my zsh
export ZSH="/home/dedsec/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh
#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
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
