" Disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Retains cursor position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Delete all trailing whitespace and end of file newlines.
autocmd BufWritePre * let currPos = getpos(".")
	autocmd BufWritePre * %s/\s\+$//e
	autocmd BufWritePre * %s/\n\+\%$//e

autocmd FileType c call KernelStyle()
function! KernelStyle()
    setlocal tabstop=8
    setlocal shiftwidth=8
    setlocal noexpandtab
endfunction
