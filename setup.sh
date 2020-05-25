#!/bin/bash -x

set -e # exit if any single command fails

#configDir=${PWD}

# install nvim from nvim releases page
echo "installing nvim"
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
rm -f ./nvim.appimage

# create directory for nvim and copy init.vim into that directory
echo "setting up nvim"
mkdir -p ~/.config/nvim/      # -p option to create subdirectories if none exist
cp init.vim ~/.config/nvim/
ln ~/.config/nvim/init.vim ~/.vimrc

# copy relivant dotfiles
cp ./bash_aliases ~/.bash_aliases
cp ./tmux.conf ~/.tmux.conf
