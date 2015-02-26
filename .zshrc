# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"

~/.vim/bundle/gruvbox/gruvbox_256palette.sh

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby)

alias hs='history | grep'
alias g='git'
alias work='cd ~/Code/work'
alias playground='cd ~/Projects/playground'
alias bank='cd /media/Bank'
# Rails shit
alias rs='rails s'
alias rc='rails c'
alias rg='rails g'
alias rd='rails d'
alias recreatedb='rake db:drop && rake db:create && rake db:migrate'
alias rake="noglob rake"
alias bin/rake="noglob rake"
alias i3lock='i3lock -c 222222'
alias tag='ctags -R .'
alias lock='xscreensaver-command --lock'

alias movie='smplayer'
alias web='chromium'
alias dev='tmux attach -t dev || tmux new -s dev'

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export TERM='xterm-256color'
[ -n "$TMUX" ] && export TERM=screen-256color

export PANEL_FIFO="/tmp/panel-fifo"
export PANEL_HEIGHT=24

# # Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

source ~/.bin/tmuxinator.zsh
source $ZSH/oh-my-zsh.sh
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
