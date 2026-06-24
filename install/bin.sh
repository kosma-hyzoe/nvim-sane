#!/bin/bash

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf ~/.local/nvim-linux-x86_64
mkdir -p ~/.local/nvim-linux-x86_64
chmod a+rX ~/.local/nvim-linux-x86_64
tar -C ~/.local -xzf nvim-linux-x86_64.tar.gz
tar -C ~/.local -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
ln -sf ~/.local/nvim-linux64/bin/nvim ~/.local/bin
