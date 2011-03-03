# custom aliases
alias nautilus='nautilus --no-desktop --browser'
alias rm='rm -i'
alias cp='cp -iv'
alias mv='mv -iv'
#alias open='gnome-open'

# from alias scpresume="rsync --partial --progress"
alias scpresume="rsync --partial --progress --rsh=ssh"

# custom paths
export PATH=/var/lib/gems/1.8/bin:$PATH
export PATH=$HOME/.gem/ruby/1.8/bin:$PATH

# custom settings
set visible-stats on
#set -o vi

#other aliases added by luke
alias vi='vim'
alias rm='rm -i'
alias eixt='exit'
alias chromium-browser='chromium-browser --enable-user-scripts'
