#!/bin/bash -x

#configDir=${PWD}

# install nvim from nvim releases page
echo "installing nvim"
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
rm -f ./nvim.appimage

# create directory for nvim and copy init.vim into that directory
echo "setting up nvim"
mkdir -p ~/.config/nvim/ 
cp init.vim ~/.config/nvim/
