#!/usr/bin/bash

git clone https://github.com/neovim/neovim --depth=1
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install && cd .. && rm -rf neovim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
