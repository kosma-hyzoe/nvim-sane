return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = {
		ensure_installed = { "bash", "c", "html", "lua", "luadoc", "markdown", "vim", "vimdoc" },
		auto_install = true,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = { "ruby", "markdown" },
		},
		indent = { enable = true, disable = { "ruby", "markdown" } },
	},
	config = function(_, opts)
		---@diagnostic disable-next-line: missing-fields
		require("nvim-treesitter.configs").setup(opts)
	end,
}
