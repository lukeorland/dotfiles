# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ll="ls --color=auto -p -a -l -h"
alias ls="ls --color=auto -p"
alias cp='cp -i'
alias mv='mv -i'
alias viq='vim -u NONE -c "filetype on" -c "syntax on" -c "set cmdheight=2" -c e'
alias vi='vi'

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export HADOOP_VERSION="0.20.203.0"
export HADOOP=/opt/apache/hadoop
export HADOOP_CONF_DIR=/opt/apache/hadoop/conf/apache-mr/mapreduce
export JAVA_HOME=/usr/java/default
export JOSHUA=/home/hltcoe/lorland/apps/joshua
export AWS_SDK=/home/hltcoe/mpost/sw/aws-java-sdk-1.1.3
export AWS_VERSION=1.1.3

# cachepipe / cachecmd
export CACHEPIPE=$JOSHUA/scripts/training/cachepipe
export PERL5LIB=$CACHEPIPE:$DPTSG:$HOME/code/mt
export PERL5LIB="/home/hltcoe/mpost/perl5/lib/perl5/x86_64-linux-thread-multi-ld:/home/hltcoe/mpost/perl5/lib/perl5:$PERL5LIB";
. $CACHEPIPE/bashrc
