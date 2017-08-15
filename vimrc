"vimrc by Thomas Huang
set nocompatible
filetype plugin indent on

"pathogen
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
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
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

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0"
