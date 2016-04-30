# Path to your oh-my-zsh installation.
  export ZSH=/home/highforcex/.oh-my-zsh

#show todays tasks
t
export PS1="[$(t | wc -l | sed -e's/ *//')] $PS1"
# time that oh-my-zsh is loaded.
ZSH_THEME="highforcex"

# History
HISTFILE=~/.dotgunk/.zsh_history         # where to store zsh config
HISTSIZE=1024                   # big history
SAVEHIST=1024                   # big history
setopt append_history           # append
setopt hist_ignore_all_dups     # no duplicate
unsetopt hist_ignore_space      # ignore space prefixed commands
setopt hist_reduce_blanks       # trim blanks
setopt hist_verify              # show before executing history commands
setopt inc_append_history       # add commands as they are typed, don't wait until shell exit
setopt share_history            # share hist between sessions
setopt bang_hist                # !keyword

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh autosuggestions thefuck tmux sublime copydir alias-tips)
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="You know you have an alias for that, right?: "
# User configuration

  export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source ~/.alias
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source $ZSH/oh-my-zsh.sh

