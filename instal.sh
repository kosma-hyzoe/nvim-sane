#!/usr/bin/bash

NVIM_DOWNLOAD_URL="https://github.com/neovim/neovim/releases/download/stable/nvim.appimage"

install_libfuse() {
  if ! dpkg -s libfuse2 &>/dev/null; then
    echo "Installing libfuse2..."
    sudo add-apt-repository -y universe &>/dev/null
    install libfuse2 > /dev/null
  fi
}

install_libfuse
sudo apt install xclip vim-gtk3


wget -O nvim ${NVIM_DOWNLOAD_URL}
sudo mv nvim /usr/bin
sudo chmod u+x /usr/bin/nvim
