# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# bash completion for git
#GIT_PS1_SHOWDIRTYSTATE=true
[[ -s "/usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash" ]] && \
	source "/usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash" && \
	#export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n\$ '
	export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]\n\$ '

export GIT_SSL_NO_VERIFY=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Python
PYTHONPATH=~/.local
export PYTHONPATH

PATH=$HOME/.local/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH

# http://www.funtoo.org/wiki/Keychain
eval `keychain --eval --agents ssh id_rsa`
