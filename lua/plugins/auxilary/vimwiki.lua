return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_ext2syntax = { [".md"] = "markdown", [".markdown"] = "markdown", [".mdown"] = "markdown" }
		vim.g.vimwiki_key_mappings = {
			lists = 1,
			global = 0,
			headers = 0,
			text_objs = 0,
			table_format = 0,
			table_mappings = 0,
			links = 0,
			html = 0,
			mouse = 0,
		}
	end,
}
