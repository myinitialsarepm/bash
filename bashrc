#PS1="\u@\h \W: "
PS1="\h:\W \u\$ "


export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export EDITOR="vim"

if [ $(uname -s) = "Darwin" ]
then
	POWERLINE_CONFIG_COMMAND=/Users/peter/Library/Python/2.7/bin/powerline-config
elif [ $(uname -s) = "Linux" ]
then
	POWERLINE_CONFIG_COMMAND=/usr/bin/powerline-config
fi
export POWERLINE_CONFIG_COMMAND

alias pud='pushd'
alias pod='popd'
alias ud='pushd'
alias od='popd'
alias pund='pushd -n'
alias pond='popd -n'
alias und='pushd -n'
alias ond='popd -n'
alias dirs='dirs -v'

alias rmpc='mpc -p 6601'

#alias vummath='~/.bin/vummath.sh'
if [ $(uname -s) = "Darwin" ]
then
	alias ls='ls -G'
	alias ll='ls -alG'
elif [ $(uname -s) = "Linux" ]
then
	alias ls='ls --color=auto'
	alias ll='ls -alh --color=auto'
fi

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
if [ $(uname -s) = "Darwin" ]
then
	. /Users/peter/Library/Python/2.7/lib/python/site-packages/powerline/bindings/bash/powerline.sh
elif [ $(uname -s) = "Linux" ]
then
	. /usr/share/powerline/bash/powerline.sh
fi

function mkc(){
	mkdir -p $1 && cd $1
}

export VAGRANT_DEFAULT_PROVIDER=virtualbox

#Start tmux sessions if not already in existence
#~/.bin/tmux_start.sh
