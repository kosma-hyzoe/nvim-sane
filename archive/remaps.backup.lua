-- Ctrl remaps

-- Comfy copy, paste, cut and select all
vim.keymap.set("v", "<c-c>", '"+y')
vim.keymap.set({ "n", "v", "o" }, "<c-v>", '"+p', { remap = true })
vim.keymap.set("i", "<c-v>", '<esc>"+pa')
vim.keymap.set("v", "<c-x>", '"+d')
vim.keymap.set("n", "<c-a>", "<Nop>")
vim.keymap.set({ "n", "v", "o" }, "<c-a>", "ggVG", { remap = true })

vim.keymap.set("n", "<c-e>", "ge")

-- Leader remaps

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>tn", ":set number!<CR>")
vim.keymap.set("n", "<leader>tr", ":set relativenumber!<CR>")
vim.keymap.set("n", "<leader>tw", ":set wrap!<CR>")
vim.keymap.set("n", "<leader>ai", "z=")
vim.keymap.set("n", "<leader>er", vim.cmd.Ex)
vim.keymap.set("n", "<leader>aw", ":set formatoptions+=t<CR>")

-- Add run permissions on currently open file
vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true })

-- Show diff
vim.keymap.set("n", "<leader>di", ":w !diff % -<CR>")

-- Close buffer
vim.keymap.set("n", "<leader>cb", ":bp<bar>sp<bar>bn<bar>bd<CR>", { remap = true })

-- Exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Change indent width, use tabs for t8
vim.keymap.set("n", "<leader>t2", ":set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>")
vim.keymap.set("n", "<leader>t4", ":set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>")
vim.keymap.set("n", "<leader>t8", ":set tabstop=8  shiftwidth=8 noexpandtab<CR>")

-- Disable commenting on new line  TODO: make this a reversible function
vim.keymap.set("n", "<leader>ac", ":set formatoptions+=c formatoptions+=r formatoptions+=o<CR>")

-- Surround word/WORD
vim.keymap.set("n", "<leader>sw", "ysiw", { remap = true })
vim.keymap.set("n", "<leader>sW", "ysiW", { remap = true })

-- Toggle highlight off
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Vim diff

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
