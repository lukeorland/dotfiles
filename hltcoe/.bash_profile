# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$HOME/opt/bin:$PATH
export PATH

# bash completion for git
GIT_PS1_SHOWDIRTYSTATE=true
source /usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash

export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n\$ '

source /home/hltcoe/lorland/.bash_profile_run_ssh-agent
export JOSHUA=/home/hltcoe/lorland/workspace/joshua
export JAVA_HOME=/usr/java/default
export GIT_SSL_NO_VERIFY=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
