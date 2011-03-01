export CLICOLOR=1;

# If using built-in Mac OS X version of ls:
alias ls='ls -FG'

# If using coreutils provided by homebrew:
#source /usr/local/Cellar/coreutils/8.5/aliases
#alias ls="$(brew --prefix)/bin/gls --color -p"

alias screen='byobu'

export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\n\$ '

# Give priority to /usr/local/bin
PATH=$HOME/Library/Application\ Support/MultiMarkdown/bin:"${PATH}"
PATH=/usr/local/sbin:"${PATH}"
PATH=/usr/local/bin:"${PATH}"
PATH=$HOME/.cabal/bin:"${PATH}"
PATH=$HOME/bin:"${PATH}"
PATH=/Library/Ruby/Gems/1.8/gems/:"${PATH}"

# bash editing using vi techniques
#set -o vi

# use Vim as the MANPAGER
export MANPAGER='col -bx | vim -c ":set ft=man nonu nolist" -c ":map q :q<CR>" -R -'
