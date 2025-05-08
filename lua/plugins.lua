if not vim.g.vscode then
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		local lazyrepo = "https://github.com/folke/lazy.nvim.git"
		vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	end ---@diagnostic disable-next-line: undefined-field
	vim.opt.rtp:prepend(lazypath)

	require("lazy").setup({
		"lambdalisue/suda.vim",
		"tpope/vim-sleuth",

		{ import = "plugins.core" },
		{ import = "plugins.auxilary" },
	}, {})
end
