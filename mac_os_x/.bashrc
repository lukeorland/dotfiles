# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# VIM EVERYWHERE
# replace stock Vim with the more well-endowed version bundled with MacVim.app
# http://blog.coredumped.org/2010/01/osx-vim-and-python.html
[ -x `which mvim` ] && alias vim=mvim
alias viq='vi -u NONE -c "filetype on" -c "syntax on" -c "set cmdheight=2" -c e'
alias vi='vi -u NONE -c "filetype on" -c "syntax on" -c "set cmdheight=2" -c e'
set -o vi

alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -al'
# If using built-in Mac OS X version of ls:
alias ls='ls -FG'
# Else if using coreutils provided by homebrew:
#alias ls="$(brew --prefix)/bin/gls --color -p"
