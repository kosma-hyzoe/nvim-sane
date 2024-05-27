local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

if vim.vscode then
	require("lazy").setup({
		"tpope/vim-sleuth",

		{ import = "plugins.vscode" },
	}, {})
else
	require("lazy").setup({
		"lambdalisue/suda.vim",
		"tpope/vim-sleuth",

		{ import = "plugins.core" },
		{ import = "plugins.auxilary" },
	}, {})
end
