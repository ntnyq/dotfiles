" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example):
" set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

" Leader key
let mapleader=";"

syntax on                     
set number          " Show line numbers.
set ruler           " Show where cursor at
set encoding=utf8   " Encoding setting
set lazyredraw      " Avoid scrolling problem
set background=dark " Main theme style
set ttyfast         " You got a fast terminal

" Search
set hlsearch        " Highlight search result
set ignorecase      " Ignore case in search patterns.
set nocompatible    " Disable compatible mode

set wildmenu        " Autocomplete vim command
set showcmd         " Show (partial) command in status line.
set showmatch       " Jump to matched bracket when insert

" Indent
set autoindent " Indent when copy
set smarttab
set expandtab 
set tabstop=2       " Number of spaces that a <Tab> in the file counts for. 
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
set backspace=2     " Ensure delete indent, eol, start .etc

set formatoptions=tcqr " Auto format control
" set mouse=a         " Enable the use of the mouse.
set ttyscroll=3

" Note: need create folders manually
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set backup
set backupdir=~/.vim/backup

set clipboard=unnamed,autoselect

" Disable cursor blink
set gcr=a:block-blinkon0

" Show status all the time
set laststatus=2

" Hide scrollbar
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set tags=tags
set splitright
set title
set foldenable
set foldmethod=syntax
set foldlevelstart=99 " Don't fold code by default

" Open filetype detect and load plugin when match
filetype on
filetype plugin on 

" List of vim-plug plugins
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'Chiel92/vim-autoformat'

Plug 'stephpy/vim-yaml'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'sekel/vim-vue-syntastic'
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
Plug 'jelera/vim-javascript-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-pug'
Plug 'dNitro/vim-pug-complete'
Plug 'isRuslan/vim-es6'

Plug 'kien/rainbow_parentheses.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()

" For emmet
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,less,jsx,javascript,javascript.jsx EmmetInstall
let g:user_emmet_expandabbr_key = '<C-j>'
let g:user_emmet_settings = {
\ 'javascript.jsx': {
\   'extends': 'jsx',
\   'quote_char': "'",
\ },
\}

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" For nerdtree
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

nnoremap <Leader>` :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Show hidden files
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
  \    '\.git$', '\.svn$', '\.swp$', '\.DS_Store', '\.sass_cache',
  \ ]

" Change menu icons
" let g:NERDTreeDirArrowExpandable = '+'
" let g:NERDTreeDirArrowCollapsible = '-'

" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" For tagbar
nnoremap <Leader>? :TagbarToggle<CR>

" Auto source ~/.vimrc when change
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" Custom key binding {

  " for <Esc>
  inoremap jj <Esc>`^
  inoremap hhh <Esc>`^
  inoremap kkk <Esc>`^
  inoremap lll <Esc>`^
  
  " Code block indent
  xnoremap < <gv
  xnoremap > >gv

  " Cancel search
  noremap <Esc><Esc> :nohlsearch<CR><Esc>

  " Split window
  nnoremap ss :split<Enter>
  nnoremap sv :vsplit<Enter>

  " Walk sub windows
  nnoremap <Leader>lw <C-W>l  " Jump to right window
  nnoremap <Leader>hw <C-W>h  " Jump to left window
  nnoremap <Leader>kw <C-W>k  " Jump to top window
  nnoremap <Leader>jw <C-W>j  " Jump to bottom window
" }

