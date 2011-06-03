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
plugins=(git github brew osx)

source $ZSH/oh-my-zsh.sh

export CD_ABLE_VARS="true"
      
# .zshrc_local is the place to put stuff that's machine dependent
if [[ -r ~/.zshrc_local ]]; then
    . ~/.zshrc_local
fi

path=($path)

emacs() {
	open -a /usr/local/Cellar/emacs/HEAD/Emacs.app "$*";
}
