# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls="ls --color=auto -p"
lsp(){ ls -pahl --color=always "$@" | less -RF; }
alias ll="lsp"

alias cp='cp -i'
alias mv='mv -i'
alias tail='tail ---disable-inotify'
alias vi='vim -u NONE -c "nocompatible" -c "filetype on" -c "syntax on" -c "set cmdheight=2"'

export EDITOR='vim -u NONE'
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export HADOOP_VERSION="0.20.203.0"
export HADOOP=/opt/apache/hadoop
#export HADOOP_CONF_DIR=/opt/apache/hadoop/conf/apache-mr/mapreduce
export HADOOP_CONF_DIR=$HOME/.local/mapreduce
export JAVA_HOME=/usr/java/default
export JOSHUA=/home/hltcoe/lorland/apps/joshua-current
export JOSHUA_DEV=/home/hltcoe/lorland/workspace/mt/joshua
export MOSES=/home/hltcoe/mpost/code/mosesdecoder
export AWS_SDK=/home/hltcoe/mpost/sw/aws-java-sdk-1.1.3
export AWS_VERSION=1.1.3

# cachepipe / cachecmd
export CACHEPIPE=$JOSHUA/scripts/training/cachepipe
export PERL5LIB=$CACHEPIPE:$DPTSG:$HOME/code/mt
export PERL5LIB="/home/hltcoe/mpost/perl5/lib/perl5/x86_64-linux-thread-multi-ld:/home/hltcoe/mpost/perl5/lib/perl5:$PERL5LIB";
. $CACHEPIPE/bashrc
