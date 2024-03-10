wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-*.tar.gz
rm -f nvim-*.tar.gz

mkdir -p ~/.local/bin
cp -rf nvim-linux64 ~/.local && rm -rf nvim-linux64
mkdir -p ~/.config

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

wget https://www.languagetool.org/download/LanguageTool-5.9.zip
unzip LanguageTool-5.9.zip
mv LanguageTool-5.9 -f \
    ~/.local/share/nvim/site/pack/packer/start/vim-grammarous/misc
ln ~/.local/bin/nvim /usr/local/bin/nvim
ln ~/.local/bin/nvim /usr/local/bin/nvim
sudo ln ~/.local/nvim-linux64/bin/nvim /usr/local/bin/nvim
