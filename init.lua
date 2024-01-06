require("remaps")
require("set")
require("plugins")

vim.cmd(':source ~/.config/nvim/lua/cmd.vim')

-- this should prolly be elsewhere but it doesn't work then :/
vim.g.vim_markdown_folding_style_pythonic = 1
vim.g.vim_markdown_folding_level = 6
