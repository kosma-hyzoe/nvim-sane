-- Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Interface
vim.opt.colorcolumn = '81'
vim.opt.mouse = 'a'
vim.opt.smartcase = true
vim.opt.number = false
vim.opt.ignorecase = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.scrolloff = 5

vim.opt.updatetime = 1000
vim.opt.textwidth = 0
vim.opt.wildmode = 'longest,list,full'
vim.opt.spelllang = 'en_us,pl'
vim.opt.spell = true
vim.opt.spellsuggest = 'best,9'
vim.opt.conceallevel = 0

-- Use internal formatting for bindings like gq
vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
        vim.bo[args.buf].formatexpr = nil
    end,
 })

 -- Highlight bad spell as a grey underline, disable other spell suggestions
 if vim.g.vscode then
    vim.cmd([[
        hi clear SpellCap
        hi clear SpellRare
        hi clear SpellLocal
        hi clear SpellBad
        hi Spellbad gui=underline
    ]])
 end
