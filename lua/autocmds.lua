vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Problem: https://github.com/neovim/neovim/issues/26192
-- Fix: https://github.com/neovim/neovim/issues/26192#issuecomment-1825572232
-- TODO Add desc
vim.api.nvim_create_autocmd("FileType", {
	group = vim.api.nvim_create_augroup("treesitter", {}),
	callback = function(ev)
		local max_filesize = 100 * 1024 -- 100 KB
		local parsers = require("nvim-treesitter.parsers")
		local lang = parsers.ft_to_lang(ev.match)

		if not parsers.has_parser(lang) then
			return
		end

		local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(ev.buf))

		if ok and stats and stats.size > max_filesize then
			return
		end

		vim.treesitter.start(ev.buf)
	end,
})
