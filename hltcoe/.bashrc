# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls --color -p"
alias cp='cp -i'
alias mv='mv -i'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
