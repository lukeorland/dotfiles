#!/bin/bash
sudo yum groupinstall 'Development tools'
sudo yum install ncurses ncurses-devel lua.x86_64 lua-devel.x86_64


PREFIX=~lorland/.local
cd $PREFIX/src

wget http://pkgs.repoforge.org/cmake/cmake-2.8.8-1.el6.rfx.x86_64.rpm
sudo rpm -i cmake-2.8.8-1.el6.rfx.x86_64.rpm

wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xjf vim-7.4.tar.bz2
cd vim74

./configure --prefix=$PREFIX --with-features=huge --enable-cscope --enable-rubyinterp --enable-pythoninterp --enable-luainterp=yes

make && make install
