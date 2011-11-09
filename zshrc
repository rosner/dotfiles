# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="steeef"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
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
