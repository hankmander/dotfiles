#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -la'
alias nomodsearch='grep -r --exclude-dir=node_modules'
alias opentuomas='cd /home/hanktard/crap/vpn-stuff/vpn/magine-vpc.tblk;sudo openvpn client-linux.ovpn'
alias mcp='~/tvoli/mcp/mcp.sh'
alias ndw='node-dev ~/tvoli/web/server.coffee'

#PS1='[\u@\h \W]\$ '
PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'

complete -cf sudo
source ~/.git-completion.bash
