require("remaps")
require("opt")
require("plugins")

-- this should prolly be elsewhere but it doesn't work then :/
vim.g.vim_markdown_folding_style_pythonic = 1
vim.g.vim_markdown_folding_level = 6
vim.g.vim_markdown_new_list_item_indent = 2

vim.cmd(':source ~/.config/nvim/misc.vim')
