return {
	"folke/tokyonight.nvim",
	priority = 1000,
	init = function()
		local scheme = vim.env.DARKMODE and "tokyonight-night" or "tokyonight-day"
		vim.cmd.colorscheme(scheme)
		vim.cmd.hi("Comment gui=none")
		vim.cmd.hi("clear SpellCap")
		vim.cmd.hi("clear SpellRare")
		vim.cmd.hi("clear SpellLocal")
		vim.cmd.hi("SpellBad gui=underline guisp=grey")
	end,
	opts = { transparent = true },
}
