" Quick replace
nmap Q :%s//g<Left><Left>

" Perform dot commands over visual blocks
vnoremap . :normal .<CR>

" Indent
vnoremap <s-tab> <<
imap <s-tab> <c-d>

" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move selection up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Center cursor while searching and scrolling
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
nnoremap { {zz
nnoremap } }zz

" Center cursor while searching
nnoremap n nzzzv
nnoremap N Nzzzv

" Center cursor while joining lines
nnoremap J mzJ`z

" Ctrl remaps

" Comfy copy, paste, cut and select all
vnoremap <c-c> "+y
map <c-v> "+p
inoremap <c-v> <esc>"+pa
vnoremap <c-x> "+d
nnoremap <c-a> <Nop>
map <c-a> ggVG

nnoremap <c-e> ge

" Leader remaps

let g:mapleader = " "
nnoremap <leader>tn :set number!<CR>
nnoremap <leader>tr :set relativenumber!<CR>
nnoremap <leader>tw :set wrap!<CR>
nnoremap <leader>ai z=
nnoremap <leader>er :Ex<CR>
nnoremap <leader>aw :set formatoptions+=t<CR>

" Add run permissions on currently open file
nnoremap <leader>cx :!chmod +x %<CR>

" Show diff
nnoremap <leader>di :w !diff % -<CR>

" Close buffer
nmap <leadset formatoptions+=ter>cb :bp<bar>sp<bar>bn<bar>bd<CR>

" Exit terminal mode
tmap <esc><esc> <c-\><c-n>

" Change indent width, use tabs for t8
nnoremap <leader>t2 :set tabstop=2 softtabstop=2 shiftwidth=2 expandtab<CR>
nnoremap <leader>t4 :set tabstop=4 softtabstop=4 shiftwidth=4 expandtab<CR>
nnoremap <leader>t8 :set tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab<CR>

" Disable commenting on new line  TODO: make this a reversible function
nnoremap <leader>nc :set formatoptions-=c formatoptions-=r formatoptions-=o<CR>

" Surround word/WORD
nmap <leader>sw ysiw
nmap <leader>sW ysiW

" Toggle highlight off
nnoremap <Esc> :nohlsearch<CR>

" Neovim diff

" Check file in shellcheck
map <leader>sc :!clear && shellcheck -x %<CR>


" Source vimrc
noremap <leader>sv :source $MYVIMRC<CR>
