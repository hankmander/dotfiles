#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias nomodsearch='grep -r --exclude-dir=node_modules'
PS1='[\u@\h \W]\$ '

complete -cf sudo
source ~/.git-completion.sh
