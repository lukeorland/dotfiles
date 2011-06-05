# Begin ~/.bashrc
# Written for Beyond Linux From Scratch
# by James Robertson <jameswrobertson@earthlink.net>

# Personal aliases and functions.

# Git completion
source ~/opt/bin/git-completion.bash
export GIT_PS1_SHOWDIRTYSTATE=true

export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n\$ '
export PATH=$PATH:/usr/local/data/cs325/hw1

# Personal environment variables and startup programs should go in
# ~/.bash_profile.  System wide environment variables and startup
# programs are in /etc/profile.  System wide aliases and functions are
# in /etc/bashrc.

if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
fi

# End ~/.bashrc
