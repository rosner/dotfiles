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
plugins=(git github brew osx pip django node npm rvm gem vagrant knife rails3 ruby bundler)

source $ZSH/oh-my-zsh.sh

export CD_ABLE_VARS="true"
      
# .zshrc_local is the place to put stuff that's machine dependent
if [[ -e ~/.zshrc_local ]]; then
    . ~/.zshrc_local
fi

#include the path to the python install_scripts stuff
path=(/usr/local/bin /usr/local/share/python $path)

# open emacs with wait
alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias ctags='ctags -R --exclude=.git --exclude=log *'

export EDITOR='/Applications/MacVim.app/Contents/MacOS/Vim -f'

export JAVA_HOME=`/usr/libexec/java_home`
export EC2_PRIVATE_KEY="$(/bin/ls $HOME/.ec2/pk-*.pem)"
export EC2_CERT="$(/bin/ls $HOME/.ec2/cert-*.pem)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.4.2.2/jars"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.3-45758/jars"

export LS_COLORS="$LSCOLORS"
# chef stuff

# enables rvm
source "$HOME/.rvm/scripts/rvm"
#rvm use 1.9.2 --default
