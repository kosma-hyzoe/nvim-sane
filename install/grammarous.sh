#!/usr/bin/bash

wget https://www.languagetool.org/download/LanguageTool-5.9.zip
unzip LanguageTool-5.9.zip
mv LanguageTool-5.9 -f \
    ~/.local/share/nvim/site/pack/packer/start/vim-grammarous/misc
rm -rf LanguageTool-5.9.zip
