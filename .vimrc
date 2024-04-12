execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set nowrap
set showmode
set showcmd

colorscheme darkblue
if &diff
    colorscheme skittles_berry
endif

set incsearch
set hlsearch
set ignorecase smartcase

" Set cursor as blinking bar at insert mode "
let &t_SI = "\e[5 q"
" Set cursor as blinking block at normal mode "
let &t_EI = "\e[1 q"
" Set cursor as static bar at replace mode "
let &t_SR = "\e[2 q"

" set cursorline "
set showmatch
set title
set tabstop=4
set shiftwidth=4
set expandtab

" set folding for programming "
" set foldmethod=syntax "

" vim-airline customizations "
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" automated commands using NERDTree "
"autocmd VimEnter * NERDTree "
autocmd BufWinEnter * NERDTreeMirror

let &pythonthreedll = 'C:\Tool\Common\Python39\python39.dll'
