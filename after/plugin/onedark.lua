if not vim.g.vscode then
    require('onedark').setup {
        style = 'warm',
        transparent = true,
        term_colors = true,
    }
    require('onedark').load()
end

vim.cmd([[
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    hi clear SpellBad
    hi Spellbad gui=underline guisp=grey
]])
