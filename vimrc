"vimrc by Thomas Huang

set nocompatible
filetype plugin indent on

"Pathogen
execute pathogen#infect()

"display settings
set ruler
set showmode
set showmatch
set encoding=utf-8
set number

"write settings
set fileencoding=utf-8
set confirm

"edit settings
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set mouse=a
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "disables auto commenting on ENTER

filetype plugin on
filetype indent on

"syntax
syntax on
set background=dark
colorscheme solarized

"search settings
set ignorecase
set smartcase

"usability settings
set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set autoindent
