#!/bin/bash

mkdir -p ~/src
cd ~/src


# Vim
cd deps
sh vimified/install.sh
echo "let g:vimified_packages = ['general', 'fancy', 'js', 'os', 'html', 'python', 'coding', 'color']" > ~/.vim/local.vimrc
cd -

# Git
ln -s $PWD/deps/yadr/git/gitconfig ~/.gitconfig
ln -s $PWD/gitconfig.neverware ~/.gitconfig.user
ln -s $PWD/deps/yadr/git/gitignore ~/.gitignore
