call plug#begin('~/.vim/plugged')

Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/matchit.zip'
Plug 'kshenoy/vim-signature'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'lifepillar/pgsql.vim'
Plug 'crusoexia/vim-monokai'
Plug 'Olical/conjure'
Plug 'luochen1990/rainbow'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

set number
syntax enable
colorscheme monokai

let g:rainbow_active = 1

" Show constraint of 80 column
set colorcolumn=120

" Remember undo after you close Vim
set undofile
set undodir=~/.vim/undodir

" Stop scrolling just in time
set lazyredraw

" Show line with current insert mode
au InsertEnter,InsertLeave * set cul!

" Proper tabs
set shiftwidth=4
set tabstop=4
set noexpandtab
set smarttab

" Moving selected parts in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Ignore files for CTRL - P
set wildignore+=*/tmp/*,*/temp/*,*.so,*.swp,*.zip,*/Temporary/*

" Highlight searches
set hlsearch

" Show searching match
set showmatch

" Keep Vim quiet
set noerrorbells
set novisualbell

" Pauses between ESC
set timeoutlen=1000
set ttimeoutlen=0

" Reading and writing encoding
set encoding=utf-8
set fileencoding=utf-8

" From long one line is made multiline
map j gj
map k gk

" all .sql are parsed as postgres syntax
let g:sql_type_default = 'pgsql'
