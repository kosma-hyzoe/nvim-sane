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
		require("treesitter-context").setup({
			enable = true, -- Enable this plugin
			max_lines = 0, -- How many lines the window can be
			min_window_height = 0, -- Minimum height of the context window
			line_numbers = true, -- Show line numbers
			multiline_threshold = 20, -- The threshold for multiline contexts
			trim_scope = "outer", -- Trim scope options: 'outer', 'inner'
			mode = "topline", -- Options: 'topline', 'cursor' or 'smart'
		})
	end,
}
