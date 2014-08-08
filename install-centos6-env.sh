#!/bin/bash
sudo yum groupinstall 'Development tools'
sudo yum install ncurses ncurses-devel lua.x86_64 lua-devel.x86_64


PREFIX=~lorland/.local
cd $HOME/src

wget http://pkgs.repoforge.org/cmake/cmake-2.8.8-1.el6.rfx.x86_64.rpm
sudo rpm -i cmake-2.8.8-1.el6.rfx.x86_64.rpm

wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xjf vim-7.4.tar.bz2
cd vim74
./configure \
            --prefix=$PREFIX \
            --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/local/lib/python2.7/config \
            --enable-luainterp \
            --enable-cscope \
            #--enable-perlinterp \
            #--enable-gui=gtk2

make VIMRUNTIMEDIR=$PREFIX/share/vim/vim74
make install

sudo pip install flake8 pylint

# install dotvim
# then install YouCompleteMe
