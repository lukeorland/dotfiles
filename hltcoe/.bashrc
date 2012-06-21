# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls --color=auto -p"
alias cp='cp -i'
alias mv='mv -i'
alias viq='vim -u NONE'

set -o vi
