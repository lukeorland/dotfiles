#.profile
# TODO: check out https://github.com/adamv/dotfiles

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

. ~/.secrets

# User specific environment and startup programs

export CLICOLOR=1;

# avoid having consecutive duplicate commands and other not so useful
# information appended to the history list.
export HISTIGNORE="&:pwd:ls:ls -l:ls -la:ll:cd:cd \-:cd /:cd .."

# ignores any 2 letter command.
export HISTIGNORE="?? "

# bash editing using vi techniques
#set -o vi

# next three commands are for rvm
# http://beginrescueend.com/rvm/install/
#export CC=gcc-4.2  # put this line in ~/.rmvrc
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
#PATH=/Library/Ruby/Gems/1.8/gems:"${PATH}"
#eval "$(rbenv init -)"
# support RVM in Vim/Janus
# Define Vim wrappers which unsets GEM_HOME and GEM_PATH before
# invoking vim and all known aliases
#
# @author Wael Nasreddine <wael.nasreddine@gmail.com>
function define_vim_wrappers()
{
  vim_commands=(
    eview evim gview gvim gvimdiff gvimtutor rgview
    rgvim rview rvim vim vimdiff vimtutor xxd mvim
  )

  for cmd in ${vim_commands[@]}; do
    cmd_path=`/usr/bin/env which -a "${cmd}" 2>/dev/null | grep '^/'`
    if [ -x "${cmd_path}" ]; then
      eval "function ${cmd} () { (unset GEM_HOME; unset GEM_PATH; $cmd_path \$@) }"
    fi
  done
}
define_vim_wrappers

# Homebrew
source `brew --prefix`/Library/Contributions/brew_bash_completion.sh
# If using coreutils provided by homebrew:
#source /usr/local/Cellar/coreutils/8.5/aliases

# Give priority to /usr/local/bin
# prepending in this order:
PATH=/usr/local/sbin:"${PATH}"
PATH=/usr/local/bin:"${PATH}"
#PATH=`brew --prefix`/share/python3:"${PATH}"
#PATH=`brew --prefix`/share/python:"${PATH}"
#PS1='[\u@\h \w$(__git_ps1 " (%s)")]\$
# TaskWarrior
#source `brew --prefix`/etc/bash_completion.d/task_completion.sh
#export PYTHONPATH=`brew --prefix`/lib/python:$PYTHONPATH
ps1='\n\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\]'

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
  # bash completion for git
  GIT_PS1_SHOWDIRTYSTATE=true
  ps1=$ps1'$(__git_ps1 " (%s)")'
fi
export PS1="$ps1\n\$ "

# Java
export JAVA_HOME="$(/usr/libexec/java_home)"

# Joshua
export JOSHUA="$HOME/workspace/mt/joshua"

PATH=$HOME/.cabal/bin:"${PATH}"
PATH=$HOME/Library/Application\ Support/MultiMarkdown/bin:"${PATH}"
PATH=$HOME/opt/bin:"${PATH}"
export PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export LOCAL_DEV=true

# EC2 stuff
#export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi
