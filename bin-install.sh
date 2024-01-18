wget https://github.com/neovim/neovim/releases/download/v0.9.5/nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz

mkdir -p ~/.local/bin
cp nvim-linux64/bin/nvim ~/.local/bin && rm -rf nvim-linux64
