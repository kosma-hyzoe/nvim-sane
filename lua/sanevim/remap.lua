vim.g.mapleader = ","

-- recent additions
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>t2",
               "[[:set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>]]")
