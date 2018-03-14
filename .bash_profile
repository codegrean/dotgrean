# Original from Hashrocket
# https://github.com/hashrocket/dotmatrix
source "$HOME/.sharedrc"

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

CLICOLOR=1
LSCOLORS=gxgxcxdxbxegedabagacad

export CLICOLOR LSCOLORS

# Prefix
prefix=
if [ -n "$SSH_CONNECTION" ]; then
  prefix="\[\033[0;33m\][\u@\h]"
else
  prefix="\[\033[0;32m\][\u@\h]"
fi
# Current path
currentPath="\[\033[0;36m\][\w]"
# Git Info
gitInfo="$(git_prompt_info '\[\033[0;33m\][git:%s]')"

export PS1="$prefix$currentPath$gitInfo \[\033[0;35m\]$\[\033[00m\] "

