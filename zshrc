export ZSH=$HOME/.dotfiles/oh-my-zsh

export ZSH_THEME="steeef"

plugins=(git github brew osx pip django node npm gem vagrant knife rails3 ruby bundler)

source $ZSH/oh-my-zsh.sh

export CD_ABLE_VARS="true"
      
#include the path to the python install_scripts stuff
path=($HOME/.rbenv/shims $HOME/.rbenv/bin /usr/local/bin $path)
eval "$(rbenv init -)"

# open emacs with wait
alias vi='${HOME}/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='${HOME}/Applications/MacVim.app/Contents/MacOS/Vim'

export EDITOR='${HOME}/Applications/MacVim.app/Contents/MacOS/Vim -f'

export JAVA_HOME=`/usr/libexec/java_home`

export LS_COLORS="$LSCOLORS"
export GNUTERM="x11"
