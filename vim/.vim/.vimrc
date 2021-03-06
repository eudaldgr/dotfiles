set encoding=utf-8
scriptencoding utf-8
let g:is_bash = 1
set directory=~/etc/vim,~/,/tmp
set backupdir=~/etc/vim,~/,/tmp
set viminfo+=n~/etc/vim/viminfo
set runtimepath=~/etc/vim,~/etc/vim/after,$VIM,$VIMRUNTIME

if empty(glob('~/etc/vim/autoload/plug.vim'))
  silent !curl -fLo ~/etc/vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/etc/vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
  let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
    \   'right': [ [ 'linter_errors', 'linter_warnings' ],
    \              [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
    \ },
    \ 'component': {
    \   'charvaluehex': '0x%B'
    \ },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead'
    \ },
    \ 'component_expand': {
    \   'linter_warnings': 'lightline#ale#warnings',
    \   'linter_errors': 'lightline#ale#errors',
    \ },
    \ 'component_type': {
    \   'linter_warnings': 'warning',
    \   'linter_errors': 'error',
    \ },
    \ }
  let g:lightline#ale#indicator_warnings = "\uf071"
  let g:lightline#ale#indicator_errors = "\uf05e"
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'maximbaz/lightline-ale'
Plug 'lervag/vimtex'
  let g:tex_flavor = 'latex'
Plug 'ledger/vim-ledger'
Plug 'arrufat/vala.vim'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'chun-yang/auto-pairs'
Plug 'joom/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'chrisbra/colorizer'
Plug 'chrisbra/unicode.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/gv.vim', { 'on': 'GV' }
Plug 'w0rp/ale'
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'junegunn/limelight.vim', { 'on': 'Goyo' }
Plug 'maxboisvert/vim-simple-complete'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin on
syntax on

colorscheme gruvbox

set nocompatible
set modeline
set hidden
set showmatch
set noshowmode
set termguicolors
set background=dark
set synmaxcol=512
set number
set relativenumber
set nowrap
set cursorline
set cursorcolumn
set laststatus=2
set undofile
set undodir=~/etc/vim/tmp/undo/
set backupdir=~/etc/vim/tmp/backup/
set noswapfile
set backspace=indent,eol,start
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set autochdir
set clipboard=unnamedplus
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch
set nofoldenable
set foldlevel=99
set foldminlines=99
set foldlevelstart=99
set listchars=tab:·\ ,trail:·,extends:»,precedes:«,nbsp:_

if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), 'p')
endif

if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), 'p')
endif
