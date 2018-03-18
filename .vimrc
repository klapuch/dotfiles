"PLUGING
call plug#begin('~/.vim/plugged')
Plug 'git@github.com:Raimondi/delimitMate.git'
Plug 'git@github.com:airblade/vim-gitgutter.git'
Plug 'git@github.com:ervandew/supertab.git'
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'git@github.com:scrooloose/nerdtree.git'
Plug 'git@github.com:terryma/vim-multiple-cursors.git'
Plug 'git@github.com:tpope/vim-repeat.git'
Plug 'git@github.com:tpope/vim-surround.git'
Plug 'git@github.com:vim-airline/vim-airline.git'
Plug 'git@github.com:vim-scripts/matchit.zip.git'
Plug 'git@github.com:scrooloose/nerdcommenter.git'
Plug 'git@github.com:kshenoy/vim-signature.git'
call plug#end()

set number
syntax enable
colorscheme monokai

" CTRL + C to show NerdTree
map <C-c> :NERDTreeToggle<CR>

" Show NerdTree on start for no selected file (vim)
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close vim if NerdTree is the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show constraint of 80 column
set colorcolumn=81

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

" Omni complete for several languages
filetype plugin on
au FileType php set omnifunc=phpcomplete#CompletePHP
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType xhtml set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType php set omnifunc=phpcomplete#CompletePHP
let php_sql_query=1                                                                                        
let php_htmlInStrings=1

" Tab for Omni complete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Vim-like selection for Omni complete suggestion & CTRL - P
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Moving selected parts in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Ignore files for CTRL - P
set wildignore+=*/tmp/*,*/temp/*,*.so,*.swp,*.zip,*/Temporary/*

" PHPT behaves like PHP files
autocmd BufRead,BufNewFile *.phpt set filetype=php

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

" Path to generated ctags, if any
set tags=./tags.vim;/

" NerdTREE - show hidden files
let NERDTreeShowHidden=1
