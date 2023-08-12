set runtimepath^=~/.vim runtimepath+=~/.vim/after
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/.vim/bindings.vim

" disables automatic commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" retain cursor position
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" deletes all trailing whitespaces on save retaining the cursor position
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

" appearance, style and formatting
set textwidth=80
set scrolloff=5
set splitbelow splitright
set nowrap

set colorcolumn=81
hi ColorColumn ctermbg=lightgrey guibg=lightgrey
hi clear SpellBad
hi clear SpellLocal
hi clear SpellCap
hi SpellBad cterm=underline

" interface
set mouse=a
set smartcase
set number
set ignorecase

" syntax, lsp, spellcheck etc.
set smartindent
set spell spelllang=en_us,pl
set wildmode=longest,list,full
"" indentation
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
