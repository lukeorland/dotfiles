export CLICOLOR=1;

# If using built-in Mac OS X version of ls:
alias ls='ls -FG'

# If using coreutils provided by homebrew:
#source /usr/local/Cellar/coreutils/8.5/aliases
#alias ls="$(brew --prefix)/bin/gls --color -p"
alias cp='cp -i'
alias mv='mv -i'

alias screen='byobu'

export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n\$ '

# bash completion for git
GIT_PS1_SHOWDIRTYSTATE=true
source ~/opt/bin/git-completion.bash
#PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$

# Give priority to /usr/local/bin
# prepending in this order:
PATH=/usr/local/sbin:"${PATH}"
PATH=/usr/local/bin:"${PATH}"
PATH=$HOME/.cabal/bin:"${PATH}"
PATH=$HOME/Library/Application\ Support/MultiMarkdown/bin:"${PATH}"
PATH=/Library/Ruby/Gems/1.8/gems/:"${PATH}"
PATH=/usr/local/share/python3:"${PATH}"
PATH=/usr/local/share/python:"${PATH}"
PATH=$HOME/opt/bin:"${PATH}"

export PYTHONPATH=/usr/local/lib/python:$PYTHONPATH

# bash editing using vi techniques
#set -o vi

# use Vim as the MANPAGER
#export MANPAGER='col -bx | vim -c ":set ft=man nonu nolist" -c ":map q :q<CR>" -R -'

# vimpager, unfortunately, seems to mess up git diff for me.
#export PAGER=`which vimpager` 
#alias less=$PAGER

# replace stock Vim with the more well-endowed version bundled with MacVim.app
# http://blog.coredumped.org/2010/01/osx-vim-and-python.html
[ -x "/Applications/MacVim.app/Contents/MacOS/Vim" ] && alias vim=/Applications/MacVim.app/Contents/MacOS/Vim

# next three commands are for rvm
# http://beginrescueend.com/rvm/install/
export CC=gcc-4.2
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Homebrew
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
