#!/bin/bash

git submodule update --init --recursive

# Vim
pushd $PWD
cd dotvim
./install.sh
popd

# Git
ln -sfn $PWD/dotvim/deps/yadr/git/gitconfig ~/.gitconfig
ln -sfn $PWD/dotvim/deps/yadr/git/gitignore ~/.gitignore
ln -sfn $PWD/gitconfig.personal ~/.gitconfig.user
