-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.textwidth = 0

-- Interface
vim.opt.colorcolumn = "81"
vim.opt.cursorline = true
vim.opt.mouse = "a"
vim.opt.smartcase = true
vim.opt.number = false
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = true
vim.opt.scrolloff = 5
vim.opt.conceallevel = 0

-- Spelling
vim.opt.wildmode = "longest,list,full"
if vim.g.vscode then vim.opt.spell = false else vim.opt.spell = true end
vim.opt.spelllang = "en_us,pl"
vim.opt.spellsuggest = "best,9"

-- Timing
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Vim diff

-- Interface
vim.opt.showmode = false
vim.opt.inccommand = "split"
vim.opt.signcolumn = "yes"
vim.opt.list = true
vim.opt.listchars = { tab = "· ", trail = "·", nbsp = "␣" }
vim.g.have_nerd_font = true

-- Use internal formatting for bindings like gq
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		vim.bo[args.buf].formatexpr = nil
	end,
})

-- Highlight bad spell as a grey underline, disable other suggests (VS Code)
if vim.g.vscode then
	vim.cmd.hi("Comment gui=none")
	vim.cmd.hi("clear SpellCap")
	vim.cmd.hi("clear SpellRare")
	vim.cmd.hi("clear SpellLocal")
	vim.cmd.hi("SpellBad gui=underline guisp=grey")
end