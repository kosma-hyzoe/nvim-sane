vim.g.mapleader = ","

--- Staples

-- Comfy ctrl mappings
vim.keymap.set('v', '<c-c>', '"+y')
vim.keymap.set('n', '<c-v>', '"+p')
vim.keymap.set('i', '<c-v>', '<esc>"+pa')
vim.keymap.set('v', '<c-x>', '"+d')
vim.keymap.set('n', '<c-a>', '<Nop>')
vim.keymap.set('n', '<c-a>', 'ggVG')

--

--- Recent additions

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

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>t2",
               "[[:set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>]]")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

