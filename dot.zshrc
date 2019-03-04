export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gratz/.oh-my-zsh"

# Theme
# ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# aliases
eval $(thefuck --alias)
alias l='ls -lFh'
alias zshrc='${=EDITOR} ~/.zshrc' # Quick access to the ~/.zshrc file
alias grep='grep --color'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias search="sudo grep --color -rnw ./ -e "
alias update="sudo apt-get update && sudo apt-get upgrade "

# Make zsh know about hosts already accessed by SSH
zstyle -e ':completion:*:(ssh|scp|sftp|rsh|rsync):hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

# config terminal
# Speeds up load time
DISABLE_UPDATE_PROMPT=true

# Perform compinit only once a day.
#autoload -Uz compinit

#setopt EXTENDEDGLOB
#for dump in $ZSH_COMPDUMP(#qN.m1); do
#  compinit
#  if [[ -s "$dump" && (! -s "$dump.zwc" || "$dump" -nt "$dump.zwc") ]]; then
#    zcompile "$dump"
#  fi
#  echo "Initializing Completions..."
#done
#unsetopt EXTENDEDGLOB
#compinit -C

autoload -Uz compinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;

# Powerlevel theme customization
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_CONTEXT_TEMPLATE='%n'
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND='238'
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

# Prompt settings
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
#POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time dir_writable ip ram load)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(nvm dir_writable ip)

POWERLEVEL9K_NVM_DEFAULT_BACKGROUND='yellow'

# Separators
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\ue0b0'
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=$'\ue0b1'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\ue0b2'
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=$'\ue0b7'

# Dir
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='black'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='033'

# VCS icons
POWERLEVEL9K_VCS_GIT_ICON=$'\uf1d2'
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
#POWERLEVEL9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
#POWERLEVEL9K_VCS_BRANCH_ICON=$''
#POWERLEVEL9K_VCS_STAGED_ICON=$'\uf055'
#POWERLEVEL9K_VCS_UNSTAGED_ICON=$'\uf421'
#POWERLEVEL9K_VCS_UNTRACKED_ICON=$'\uf00d'
#POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
#POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '

# VCS colours
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='11'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='41'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'

# VCS CONFIG
POWERLEVEL9K_SHOW_CHANGESET=false

# Status
#POWERLEVEL9K_OK_ICON=$'\uf164'
#POWERLEVEL9K_FAIL_ICON=$'\uf165'
POWERLEVEL9K_CARRIAGE_RETURN_ICON=$'\uf165'
POWERLEVEL9K_STATUS_OK_BACKGROUND='020'
POWERLEVEL9K_STATUS_OK_FOREGROUND='white'
POWERLEVEL9K_STATUS_ERROR_BACKGROUND='160'
POWERLEVEL9K_STATUS_ERROR_FOREGROUND='white'

#source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $ZSH/oh-my-zsh.sh

