#!/bin/bash

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
rm -rf ~/.local/nvim-linux
mkdir -p ~/.local/nvim-linux
chmod a+rX ~/.local/nvim-linux
tar -C ~/.local -xzf nvim-linux86_64.tar.gz
rm -rf nvim-linux-x86_64.tar.gz

mkdir -p ~/.local/share/applications

echo '[Desktop Entry]
Name=Neovim
Comment=Edit text files
Exec=/home/kosma/.local/nvim-linux
Terminal=true
Type=Application
Categories=Utility;TextEditor;
Keywords=vim;nvim;editor;' > ~/.local/share/applications/nvim.desktop
