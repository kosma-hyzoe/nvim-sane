#!/usr/bin/bash

git clone https://github.com/neovim/neovim
cd neovim || exit
git checkout stable
make CMAKE_BUILD_TYPE=Release
sudo make install && cd .. && rm -rf neovim

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

if grep -q "./local/nvim-linux64/bin" ~/.config/localshrc &>/dev/null; then
    echo "export PATH='\$PATH:\$HOME/.local/nvim-linux64/bin'" >> ~/.config/localshrc
fi
