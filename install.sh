#!/bin/sh

echo 'Downloading files...'

git clone https://github.com/sadrbox/.dotfiles.git /home/$USER/.dotfiles
cd /home/$USER/.dotfiles

echo 'Installing Vim "Plug" Plugin Manager'

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo 'Setup location files...'  
find /home/$USER/.dotfiles -maxdepth 1 -type f -name ".*" -exec ln -sv {} ~/ \;

echo 'Everything done!'
