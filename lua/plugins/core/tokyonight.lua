return {
	"folke/tokyonight.nvim",
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("tokyonight-night")
		vim.cmd.hi("Comment gui=none")
		vim.cmd.hi("clear SpellCap")
		vim.cmd.hi("clear SpellRare")
		vim.cmd.hi("clear SpellLocal")
		vim.cmd.hi("SpellBad gui=underline guisp=grey")
	end,
	opts = { transparent = true },
}
