## COPY THIS FILE TO YOUR $HOME.

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"

# aliases
alias grep='grep -n --color=auto' # grep candy
alias less='/usr/share/vim/vim74/macros/less.sh' # use vim less and nano more
alias ls='ls --color=auto' # ls candy (not sl!)
alias zless=$PAGER

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git archlinux compleat dircycle dirpersist gpg-agent git-extras git_remote_branch lol per-directory-history pip pyenv 
repo svn systemd urltools vi-mode virtualenvwrapper web-search wd2 colorize colored-man command-not-found copydir copyfile 
zsh-syntax-highlighting zsh-history-substring-search.zsh)

# zsh-history-substring-search controls
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

source $ZSH/oh-my-zsh.sh

# System PATH
export PATH=$PATH:/usr/sbin:/sbin:/bin:/usr/games:/usr/local/sbin:/usr/local/bin:/usr/bin:/opt/android-sdk/build-tools/19/:/opt/android-sdk/platform-tools:/opt/android-sdk/tools:/opt/java6/bin:/opt/java6/db/bin:/opt/java6/jre/bin:/usr/bin/vendor_perl:/usr/bin/core_perl

# Golang PATH
export GOROOT=/usr/share/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Ruby PATH
# gems
export PATH=$PATH:/home/matejlach/.gem/ruby/2.0.0/bin

# Colors for scripts
normalize=$(tput sgr0) # reset the foreground colour
black=$(tput setaf 0) # black
red=$(tput setaf 1) # red
green=$(tput setaf 2) # green
yellow=$(tput setaf 3) # yellow
blue=$(tput setaf 4) # blue
magenta=$(tput setaf 5) # magenta
cyan=$(tput setaf 6) # cyan
white=$(tput setaf 7) # white

# Python
export PYTHONPATH=/usr/lib/python3.3/site-packages
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# Emacs's not so good on the cli
export EDITOR=vim
# Use vim as a pager
export PAGER=/usr/bin/vimpager

# Fix java for awesome
export _JAVA_AWT_WM_NONREPARENTING=1

# Archey
archey3

# Arch RSS feed
# AUR: https://aur.archlinux.org/packages/archnews/
# Homepage: http://matej-lach.me/archnews/ 
# 
echo "Hi $(tput setaf 2)$USER$(tput sgr0), here are the latest $(tput setaf 4)Arch Linux$(tput sgr0) news -¬"
cat $HOME/.archnews_format
