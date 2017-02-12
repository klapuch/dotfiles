set number
syntax enable
colorscheme monokai
set shiftwidth=4
set tabstop=4
set ruler
set noexpandtab
set smarttab
set autoindent
set smartindent
set cindent
set showcmd
set history=700
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set hlsearch
set lazyredraw
set showmatch
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set encoding=utf8
set ffs=unix,dos,mac
set autoread
set ignorecase
set magic
set background=dark
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
nmap <F10> :TagbarToggle<CR>
au InsertEnter,InsertLeave * set cul!
map j gj
map k gk
set colorcolumn=81
execute pathogen#infect()
au VimEnter * NERDTree
au VimEnter * wincmd p
map <leader>r :NERDTreeFind<cr>
map <C-c> :NERDTreeToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/Temporary/*
map <F2> :!./vendor/bin/tester -o console -s -p php-cgi -j 8 -c ./Tests/php.ini % <CR>
map <F3> :!./vendor/bin/tester -o console -s -p php-cgi -j 8 -c ./Tests/php.ini Tests/ <CR>
map <F4> :!composer dump-autoload <CR>
map <F5> :!composer update <CR>
filetype plugin on
filetype indent on
au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType xhtml set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
au FileType xml set omnifunc=xmlcomplete#CompleteTags
au FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php setlocal noeol binary fileformat=dos
au FileType ruby compiler ruby
au FileType ruby,eruby set omnifunc=rubycomplete#Complete
au FileType {xml,xsl,xslt} setlocal iskeyword=@,-,\:,48-57,_,128-167,224-235
au FileType {xsl,xslt} XMLns xhtml10s
au FileType {xsl,xslt} XMLns xsl xsl
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
inoremap <C-@> <c-x><c-o>
autocmd BufRead,BufNewFile *.phpt set filetype=php
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set tags=./tags.vim;/
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set completeopt=menuone,longest
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")
set spell spelllang=en_us
hi clear SpellBad
hi SpellBad cterm=bold ctermfg=009 ctermbg=none
hi SpellLocal ctermfg=009 ctermbg=none
set noeol
nnoremap Q <nop>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php'"