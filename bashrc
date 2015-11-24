#PS1="\u@\h \W: "
PS1="\h:\W \u\$ "


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR="vim"

if [ $(uname -s) = "Darwin" ]
then
	POWERLINE_CONFIG_COMMAND=/Users/peter/Library/Python/2.7/bin/powerline-config
	export POWERLINE_CONFIG_COMMAND
fi

#alias vummath='~/.bin/vummath.sh'
if [ $(uname -s) = "Darwin" ]
then
	alias ls='ls -G'
	alias ll='ls -alG'
elif [ $(uname -s) = "Linux" ]
then
	alias ls='ls --color=auto'
	alias ll-'ls -al --color=auto'
fi

if [ $POWERLINE_START = "TRUE" ]
then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	if [ $(uname -s) = "Darwin" ]
	then
		. /Users/peter/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
	fi
fi

#Start tmux sessions if not already in existence
#~/.bin/tmux_start.sh
