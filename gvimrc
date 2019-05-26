"
" Vundle Setup
"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tpope/vim-dispatch'
Plugin 'xolox/vim-misc' " DEPENDENCY: exuberant ctags
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'w0rp/ale'
Plugin 'rakr/vim-one'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'junegunn/gv.vim'
Plugin 'junegunn/goyo.vim'
call vundle#end()
filetype plugin indent on

"
" Plugin Settings
"

nmap <silent> <C-t> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

set tags=./tags;,~/.vimtags
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

nmap <silent> <C-b> :TagbarToggle<CR>

let g:deoplete#enable_at_startup = 1

let g:airline_theme='one'

"
" General Settings
"

colorscheme one
let hr = (strftime('%H'))
if hr >= 15
set background=dark
elseif hr >= 8
set background=light
elseif hr >= 0
set background=dark
endif

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast
set laststatus=2

set backspace=indent,eol,start

set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

let mapleader=';'

set hidden

set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

let g:session_directory = "~/.vim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

syntax on
set ruler
set number

let no_buffers_menu=1
silent! colorscheme molokai

set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
  if has("gui_mac") || has("gui_macvim")
    set guifont=Menlo:h12
    set transparency=7
  endif
else
  let g:CSApprox_loaded = 1
endif
