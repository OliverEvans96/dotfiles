### zsh-specific settings

# Make home and end keys work
# bindkey "${terminfo[khome]}" beginning-of-line
# bindkey "${terminfo[kend]}" end-of-line
bindkey "^[[H" beginning-of-line # home key
bindkey "^[[F" end-of-line # end key
bindkey "^[[3~" delete-char # end key
bindkey "^[[1;5D" backward-word # ctrl-left
bindkey "^[[1;5C" forward-word # ctrl-right
bindkey "^[[A" up-line-or-search # up arrow
bindkey "^[[B" down-line-or-search # down arrow

# Path to your oh-my-zsh installation.
# export ZSH=$HOME/.oh-my-zsh
# Not a good idea!
#export LD_LIBRARY_PATH="$HOME/local/lib:/usr/lib:/usr/local/lib:$LD_LIBRARY_PATH"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="oliver"

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
# plugins=(poetry)

# User configuration

# export PATH="$HOME/.yarn/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
#export PATH="$HOME/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# source $ZSH/oh-my-zsh.sh

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


# Set keyboard layout
# setxkbmap -layout dvorak
# setxkbmap -layout us

# The next line updates PATH for the Google Cloud SDK.
# if [ -f "$HOME/local/src/google-cloud-sdk/path.zsh.inc" ]; then source "$HOME/local/src/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
# if [ -f "$HOME/local/src/google-cloud-sdk/completion.zsh.inc" ]; then source "$HOME/local/src/google-cloud-sdk/completion.zsh.inc"; fi

# z dir util
# [[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# export TOGGL_KEY=0a6774bee7dfc2f798fe56d4c92d3f48

# fpath=(~/.zsh/completions $fpath)
### Standard environment variables

# Locale
export LC_ALL=""
export LC_COLLATE=C
export LANG=en_US.UTF-8

# Allow side-scrolling by default for wide pages/tables
# Also, set default side-scroll to 20 columns
export PAGER="less -#20 -S"
export EDITOR="vim"


### Application-specific variables

# Postgresql socket path issue
# https://stackoverflow.com/a/11237439/4228052
export PGHOST=localhost
export PGUSER=oliver

### Set path


# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export PATH="$PATH:$HOME/local/bin"
export PATH="$PATH:$HOME/.rvm/bin"
# export PATH="$PATH:$HOME/.gem/ruby/2.6.0/bin"
# export PATH="$PATH:$HOME/.gem/ruby/3.0.0/bin"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
# export PATH="$PATH:$HOME/local/src/UnrealEngine/Engine/Binaries/Linux/"

# PHP package manager :(
# export PATH="$PATH:/home/oliver/.config/composer/vendor/bin"




# Android studio
# export ANDROID_SDK_ROOT=$HOME/Android/Sdk
# export ANDROID_HOME=$ANDROID_SDK_ROOT
# export NDK_HOME=/opt/android-ndk

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/oliver/.conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/oliver/.conda/etc/profile.d/conda.sh" ]; then
#         . "/home/oliver/.conda/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/oliver/.conda/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
# [[ -f /home/oliver/.cache/yay/httptoolkit/src/httptoolkit/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/oliver/.cache/yay/httptoolkit/src/httptoolkit/node_modules/tabtab/.completions/electron-forge.zsh

### Source standard files
source ~/.alias
source ~/.profile


# Set ls colors
eval "$(dircolors $HOME/.dircolors.ansi-dark)"

# Enable direnv
# https://direnv.net/docs/hook.html
eval "$(direnv hook zsh)"

eval "$(starship init zsh)"

