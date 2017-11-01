
# Optional
vaca

# Path to your oh-my-zsh installation.
export ZSH=/home/jps/.oh-my-zsh

# Go env variables
export GOROOT=/usr/local/go
export GOPATH=/home/jps/Documents/Go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Eclipse path
export PATH=$PATH:/home/jps/.eclipse/java-oxygen/eclipse

# Themes https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"
plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Addition bin paths
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/home/jps/.gem/ruby/2.4.0/bin
export PATH=$PATH:/usr/local/VSCode/bin

export ARCHFLAGS="-arch x86_64"
export EDITOR='nvim'

alias cd..="cd .."
alias free="free -mth"
alias folder="du --max-depth=1 -h"

alias vim="nvim"
alias v="nvim"
alias m="ls -lah | grep -i"
