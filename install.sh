#!/usr/bin/bash

NVIM_DOWNLOAD_URL="https://github.com/neovim/neovim/releases/download/stable/nvim.appimage"

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

install_libfuse() {
  if ! dpkg -s libfuse2 &>/dev/null; then
    echo "Installing libfuse2..."
    sudo add-apt-repository -y universe &>/dev/null
    sudo apt install libfuse2 > /dev/null
  fi
}

install_libfuse
sudo apt install xclip vim-gtk3


wget -O nvim ${NVIM_DOWNLOAD_URL}
sudo mv nvim /usr/bin
sudo chmod u+x /usr/bin/nvim
