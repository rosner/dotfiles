# environment variables
# zsh specific
export ZSH=$HOME/.dotfiles/oh-my-zsh
export ZSH_THEME="steeef"
export CD_ABLE_VARS="true"

export LS_COLORS="$LSCOLORS"
# export GNUTERM="x11"

# export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

# virtualenv stuff
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/data/Documents/code/1kdims
      
# maven and java
export JAVA_HOME=`/usr/libexec/java_home`

plugins=(git heroku brew osx pip django node npm gem vagrant ruby virtualenvwrapper git-flow)

path=(/usr/local/share/python /usr/local/share/npm/bin /usr/local/bin /Applications/Postgres.app/Contents/MacOS/bin /usr/local/heroku/bin $path)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source $ZSH/oh-my-zsh.sh
alias scp -F ~/.ssh/config
alias l="ls -alfgh"

export EDITOR='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim -f'


[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

source /usr/local/bin/virtualenvwrapper.sh

unsetopt correct_all
