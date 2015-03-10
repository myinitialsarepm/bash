#PS1="\u@\h \W: "
PS1="\h:\W \u\$ "


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR="vim"

genpasswd() {
	local l=$1
       	[ "$l" == "" ] && l=16
      	tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}

cl() {
	cd $1; ls
}

POWERLINE_CONFIG_COMMAND=/Users/peter/Library/Python/2.7/bin/powerline-config
export POWERLINE_CONFIG_COMMAND

alias vummath='~/.my_scripts/vummath.sh'
alias ll='ls -l'

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /Users/peter/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh

#Start tmux sessions if not already in existence
~/.my_scripts/tmux_start.sh
