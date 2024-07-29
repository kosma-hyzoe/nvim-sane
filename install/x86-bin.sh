#!/usr/bin/bash

wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-*.tar.gz
rm -f nvim-*.tar.gz

mkdir -p ~/.local/bin
mv -rf nvim-linux64 ~/.local

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
