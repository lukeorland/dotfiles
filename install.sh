#!/bin/bash

# Vim
INSTALLDIR=deps/vimified
create_symlinks () {
    if [ ! -f ~/.vim ]; then
        echo "Now, we will create ~/.vim and ~/.vimrc files to configure Vim."
        ln -sfn $INSTALLDIR ~/.vim
    fi

    if [ ! -f ~/.vimrc ]; then
        ln -sfn $INSTALLDIR/vimrc ~/.vimrc
    fi
  }

create_symlinks
ln -sfn $PWD/vimrc.extra ~/.vim/extra.vimrc
ln -sfn $PWD/vimrc.after ~/.vim/after.vimrc
echo "let g:vimified_packages = ['general', 'fancy', 'js', 'os', 'html', 'python', 'coding', 'color']" > ~/.vim/local.vimrc
pushd $PWD
cd deps
sh vimified/install.sh
popd

# Git
ln -sfn $PWD/deps/yadr/git/gitconfig ~/.gitconfig
ln -sfn $PWD/gitconfig.neverware ~/.gitconfig.user
ln -sfn $PWD/deps/yadr/git/gitignore ~/.gitignore
