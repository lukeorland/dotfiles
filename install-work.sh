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
ln -sfn $PWD/gitconfig.neverware ~/.gitconfig.user
ln -sfn $PWD/screenrc ~/.screenrc
ln -sfn $PWD/remote-server/dotprofile ~/.profile
