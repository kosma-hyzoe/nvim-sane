augroup gentle_highlight
    autocmd!
    au ColorScheme * call GentleHighlight()
augroup END
function! GentleHighlight()
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellBad
    hi clear SpellLocal
    hi Spellbad gui=underline
endfunction
