#!/usr/bin/bash

git clone https://github.com/neovim/neovim
cd neovim
git checkout release
make CMAKE_BUILD_TYPE=Relase
sudo make install && cd .. && rm -rf neovim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

