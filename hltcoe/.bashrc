# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls --color -p"
alias cp='cp -i'
alias mv='mv -i'

set -o vi
