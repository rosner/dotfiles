# Norman Rosner's dotfiles (Kudos go to Ryan Bates for the initial idea!) 

These are my config file for vim, git etc. 


## Installation
### Requirements

```
git clone git://github.com/rosner/dotfiles ~/.dotfiles
cd ~/.dotfiles
rake install
```

Also initiate `vundle` through:

```
git submodule init
git submoule update
```

After updating the `vundle` submodule you need to open `vim` and do a `:BundleInstall!`. Now every plugin/Bundle used in .vimrc should be installed

## Environment

I'm on OS X so this works there. Be aware that I'm using zsh! There's a branch for ubuntu as well though it's not maintained that well at the moment but probably will be in the future.

  chsh -s /bin/zsh
## Features

I am using oh-my-zsh, so far I don't use any custom zsh functions. So there's just a simple zshrc here that specifies the oh-my-zsh theme. Also I removed Ryans RoR stuff, cause I don't use it.

## TODOs:
* integrate `git submodule init && git submodule update` and `:BundleInstall!` into `Rakefile`
* integrate building command-t

