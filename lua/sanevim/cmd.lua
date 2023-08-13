-- Disable  automatic commenting on newline
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- Retain cursor position
vim.cmd([[autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
]])

-- Delete all trailing whitespaces on save without loosing the cursor position
local currPos = vim.fn.getpos(".")
vim.api.nvim_exec([[ %s/\s\+$//e ]], false)
vim.fn.setpos('.', currPos)

