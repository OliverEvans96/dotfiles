# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
# Not a good idea!
#export LD_LIBRARY_PATH="$HOME/local/lib:/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH"

# For Kale development w/ vcluster
export KALE_SRC="$HOME/lbl/kale"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="oliver"

# Set TERM explicitly for TMUX
#export TERM="xterm-256color"
#[[ -n "$TMUX" ]] && export TERM="screen-256color"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="$HOME/local/bin:$HOME/.gem/ruby/2.5.0/bin:$HOME/local/miniconda3/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
#export PATH="$HOME/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#

# Make home and end keys work
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line

# Locale
export LC_ALL=""
export LC_COLLATE=C
export LANG=en_US.UTF-8

source '$HOME/.alias'

# Set ls colors
eval "$(dircolors $HOME/.dircolors.ansi-dark)"

# Set keyboard layout
# setxkbmap -layout dvorak
setxkbmap -layout us

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/local/src/google-cloud-sdk/path.zsh.inc' ]; then source '$HOME/local/src/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '$HOME/local/src/google-cloud-sdk/completion.zsh.inc' ]; then source '$HOME/local/src/google-cloud-sdk/completion.zsh.inc'; fi

# GTD TaskWarrior
#export PS1='$(task +in +PENDING count) '$PS1
export PS1='$(n=$(task +in +PENDING count); [[ $n > 0 ]] && echo "[in:$n] ")'$PS1

#source $HOME/.terminal-colors

export TOGGL_KEY=0a6774bee7dfc2f798fe56d4c92d3f48
