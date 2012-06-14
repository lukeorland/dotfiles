
# use Vim as the MANPAGER
#export MANPAGER='col -bx | vim -c ":set ft=man nonu nolist" -c ":map q :q<CR>" -R -'

# vimpager, unfortunately, seems to mess up git diff for me.
#export PAGER=`which vimpager` 
#alias less=$PAGER

# replace stock Vim with the more well-endowed version bundled with MacVim.app
# http://blog.coredumped.org/2010/01/osx-vim-and-python.html
[ -x `which mvim` ] && alias vim=mvim
# and use it for git as well:
#GIT_EDITOR="/Applications/MacVim.App/Contents/MacOS/Vim"; export GIT_EDITOR

alias cp='cp -i'
alias mv='mv -i'

alias ll='ls -al'
# If using built-in Mac OS X version of ls:
alias ls='ls -FG'
# Else if using coreutils provided by homebrew:
#alias ls="$(brew --prefix)/bin/gls --color -p"
