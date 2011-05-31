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
plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -r ~/.zshrc_local ]]; then
    . ~/.zshrc_local
fi

export CD_ABLE_VARS="true"

alias mkdir='mkdir -p'
alias ll='ls -aliGh'
alias ls='ls -Gh'

export JAVA_OPTS="-Xms128m -Xmx1024m -XX:MaxPermSize=256m -Djava.awt.headless=true"
# this is os x specific
export JAVA_HOME=`/usr/libexec/java_home`         

export PATH=/usr/local/bin:${PATH}

path=($path)