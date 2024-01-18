wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-*.tar.gz
rm -f nvim-*.tar.gz

mkdir -p ~/.local/bin
cp -rf nvim-linux64 ~/.local && rm -rf nvim-linux64
mkdir -p ~/.config
echo 'export "PATH=$PATH:$HOME/.local/nvim-linux64/bin"' >> ~/.config/localshrc

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
