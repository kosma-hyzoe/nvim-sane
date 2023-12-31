vim.g.mapleader = ","

--- Ctrl remaps

-- Comfy copy, paste, cut and select all
vim.keymap.set('v', '<c-c>', '"+y')
vim.keymap.set({'n', 'v', 'o'}, '<c-v>', '"+p', {remap = true})
vim.keymap.set('i', '<c-v>', '<esc>"+pa')
vim.keymap.set('v', '<c-x>', '"+d')
vim.keymap.set({'n', 'v', 'o'}, '<leader>in', '<c-a>')
vim.keymap.set('n', '<c-a>', '<Nop>')
vim.keymap.set({'n', 'v', 'o'}, '<c-a>', 'ggVG', {remap = true})

-- Use Ctrl+i for visual mode
vim.keymap.set('n', '<c-i>', '<c-v>')

vim.keymap.set('n', '<c-e>', 'ge')


--- Leader remaps

vim.keymap.set('n', '<leader>nh', ':nohl<CR>')
vim.keymap.set('n', '<leader>sn', ':set number!<CR>')
vim.keymap.set('n', '<leader>sr', ':set relativenumber!<CR>')

-- Search word/WORD
vim.keymap.set('n', '<leader>nw', 'viw"ty/<c-r>t<enter>')
vim.keymap.set('n', '<leader>nW', 'viW"ty/<c-r>t<enter>')

-- Show diff
vim.keymap.set('n', '<leader>sd', ':w !diff % -<CR>')

-- Close buffer
vim.keymap.set('n', '<leader>cb', ':bp<bar>sp<bar>bn<bar>bd<CR>', {remap = true})

-- Quick search
vim.keymap.set('n', 'Q', ':%s//g<Left><Left>', {remap = true})

-- Perform dot commands over visual blocks
vim.keymap.set('v', '.', ':normal .<CR>')

--- Recent additions

-- Spellcheck
vim.keymap.set({'n', 'v', 'o'}, '<leader>o', ':setlocal spell! spelllang=en_us,pl<CR>', {remap = true})

-- Look for next/previous word with m/M
vim.keymap.set({'n', 'v', 'o'}, 'm', '*')
vim.keymap.set({'n', 'v', 'o'}, 'M', '#')

-- Split navigation
vim.keymap.set({'n', 'v', 'o'}, '<C-h>', '<C-w>h', {remap = true})
vim.keymap.set({'n', 'v', 'o'}, '<C-j>', '<C-w>j', {remap = true})
vim.keymap.set({'n', 'v', 'o'}, '<C-k>', '<C-w>k', {remap = true})
vim.keymap.set({'n', 'v', 'o'}, '<C-l>', '<C-w>l', {remap = true})

-- Move selection up/down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor while searching and scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "{", "{zz")
vim.keymap.set("n", "}", "}zz")

-- Center curor while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Center cursor while joining lines
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true })

-- Replace word that the cursor is on
vim.keymap.set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Change indent width, use tabs for t8
vim.keymap.set("n", "<leader>t2",
               ":set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>")
vim.keymap.set("n", "<leader>t4",
               ":set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>")
vim.keymap.set("n", "<leader>t8",
               ":set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab<CR>")


vim.keymap.set({'n', 'v', 'o'}, "<leader>nn", ":set number!<CR>")
