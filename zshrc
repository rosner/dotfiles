# environment variables
# zsh specific
export ZSH=$HOME/.dotfiles/oh-my-zsh
export ZSH_THEME="steeef"
export CD_ABLE_VARS="true"
      
# maven and java
export JAVA_HOME=`/usr/libexec/java_home`

plugins=(git heroku brew osx pip django node npm gem vagrant ruby virtualenvwrapper)

path=(/usr/local/bin /Applications/Postgres.app/Contents/MacOS/bin /usr/local/heroku/bin $path)

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias vi='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim'
alias vim='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim'
alias scp -F ~/.ssh/config

export EDITOR='/usr/local/Cellar/macvim/7.3-64/MacVim.app/Contents/MacOS/Vim -f'


[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator


source $ZSH/oh-my-zsh.sh
unsetopt correct_all
