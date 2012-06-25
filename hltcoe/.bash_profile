# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

# bash completion for git
GIT_PS1_SHOWDIRTYSTATE=true
[[ -s "/usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash" ]] && \
	source "/usr/share/doc/git-1.7.1/contrib/completion/git-completion.bash" && \
	export PS1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " (%s)")\n\$ '

export JOSHUA=/home/hltcoe/lorland/workspace/joshua
export JAVA_HOME=/usr/java/default
export GIT_SSL_NO_VERIFY=true
export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache

export HADOOP_VERSION="0.20.203.0"
export HADOOP=/opt/apache/hadoop
export HADOOP_CONF_DIR=/opt/apache/hadoop/conf/apache-mr/mapreduce

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$HOME/opt/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# http://www.funtoo.org/wiki/Keychain
eval `keychain --eval --agents ssh id_rsa`
