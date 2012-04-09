export ZSH=$HOME/.dotfiles/oh-my-zsh

export ZSH_THEME="steeef"

export CD_ABLE_VARS="true"
      
plugins=(git github brew osx pip django node npm gem vagrant knife ruby bundler)
#include the path to the python install_scripts stuff
path=($HOME/.rbenv/shims $HOME/.rbenv/bin /usr/local/bin $path)
eval "$(rbenv init -)"

# open emacs with wait
alias vi='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim'
alias vim='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim'

export EDITOR='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim -f'

export JAVA_HOME=`/usr/libexec/java_home`

[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

export LS_COLORS="$LSCOLORS"
export GNUTERM="x11"

source $ZSH/oh-my-zsh.sh
