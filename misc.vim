" Retain cursor position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Delete all trailing white-space and end of file newlines
autocmd BufWritePre * let currPos = getpos(".")
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e


" Language-specific settings
autocmd FileType c call KernelOrSTMStyle()
function! KernelOrSTMStyle()
    if getline(1) =~ 'USER CODE BEGIN Header'
        set nomodeline
        setlocal tabstop=2 shiftwidth=2 expandtab
    else
        setlocal tabstop=8 shiftwidth=8 noexpandtab
    endif
endfunction

autocmd FileType markdown call MarkdownStyle()
function! MarkdownStyle()
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal shiftwidth=2
endfunction


augroup gentle_highlight
    autocmd!
    au ColorScheme * call GentleHighlight()
augroup END

function! GentleHighlight()
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellBad
    hi clear SpellLocal
    hi Spellbad gui=underline guisp=grey
endfunction
