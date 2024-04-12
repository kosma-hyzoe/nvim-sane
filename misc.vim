" Retain cursor position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Deletes all trailing whitespace and EOL newlines on save, resets cursor pos.
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

" Language-specific settings
autocmd FileType c call KernelOrSTMStyle()
function! KernelOrSTMStyle()
    if getline(1) =~ 'USER CODE BEGIN Header'
        setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
    else
        setlocal tabstop=8 shiftwidth=8 noexpandtab
    endif
endfunction

autocmd FileType markdown call MarkdownStyle()
autocmd FileType vimwiki call MarkdownStyle()
function! MarkdownStyle()
    setlocal tabstop=2
    setlocal softtabstop=2
    setlocal shiftwidth=2
endfunction

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction
nnoremap <silent> <leader>h :call ToggleHiddenAll()<CR>
