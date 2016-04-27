# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="awesomepanda"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(git zsh-syntax-highlighting github python sublime history-substring-search)
#plugins=(git zsh-syntax-highlighting github last-working-dir python sublime)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export LANG=en_US.UTF-8

# Example aliases
alias zshc="sudo vim ~/.zshrc"
alias vimc="sudo vim ~/.vimrc"
alias tmuxc="sudo vim ~/.tmux.conf"
alias ke="xinput float 14"

alias res="sudo service lightdm restart"
alias reboot="sudo reboot"
alias off="sudo poweroff"

export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:~/dotfiles/bin

#autoloads the ~/dotfiles/functions directory
export FPATH=~/dotfiles/functions:$FPATH
autoload -Uz ~/dotfiles/functions/**/[^_+]*(N^/:t) zmv edit-command-line

#lines added to remove use of sudo with npm install
NPM_PACKAGES="${HOME}/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

