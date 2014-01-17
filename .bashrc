#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias opentuomas='cd /home/hanktard/crap/vpn-stuff/vpn/magine-vpc.tblk;sudo openvpn client-linux.ovpn'
alias mcp='~/tvoli/mcp/mcp.sh'
alias gw='cd ~/tvoli/web/;grunt;'
alias gs='git status'
alias gd='git diff'
alias gc='git commit'
alias pull='git pull'
alias push='git push'
alias ssh='eval $(/usr/bin/keychain --eval --agents ssh -Q --quiet ~/.ssh/id_rsa) && ssh'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

complete -cf sudo
source ~/.git-completion.bash
