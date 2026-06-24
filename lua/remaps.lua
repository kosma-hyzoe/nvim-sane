vim.cmd(":source ~/.config/nvim/vim/remaps.vim")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<c-i>", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- LSP control
vim.keymap.set("n", "<leader>ls", ":LspStop<CR>")
vim.keymap.set("n", "<leader>lst", ":LspStart<CR>")

-- Buffers
vim.api.nvim_set_keymap("n", "<leader>1", ":buffer 1<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>2", ":buffer 2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>n", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>p", ":bprevious<CR>", { noremap = true, silent = true })
