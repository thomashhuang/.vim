"	vimrc file by Thomas Huang
"	newest version avaliable at https://github.com/thomashhuang/vimrc.git
"	steal lines from this as you please

set nocompatible		"must be first line

" VIM UI {

	set ruler				"show ruler
	set showmode			"show current mode
	set showmatch			"show matching brackets/parens
	set number				"line numbers
	set incsearch			"find as you type search
	set hlsearch			"highlight search terms
	set ignorecase			"case insensitive search
	set wildmenu			"show list instead of just completing

" }


" Formatting {

	set tabstop=4					"indents every four columns
	set softtabstop=0 noexpandtab	"backspace deletes indents
	set shiftwidth=4				"indents are 4 spaces long"
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o "disables auto commenting on ENTER
	let mapleader="`" 				"changes the <leader> key to tilde (`)
	set timeout timeoutlen=1500 	"allows 1.5 seconds to input after <leader>
	filetype plugin indent on		"automatically detect filetype
	set nowrap						"do not wrap long lines

" }


" General Settings {

	syntax on						"syntax highlighting
	set background=dark				"dark background
	colorscheme solarized			"syntax theme
	set mouse=a						"allows mouse use
	scriptencoding utf-8			"encoding
	set hidden						"buffer switching without saving
	set showcmd						"show commands in status line
	set backspace=indent,eol,start	"intuitive backspace
	set autoindent					"automatically indent next line

" }

"	All that follows is plugin-related

"Pathogen installation
execute pathogen#infect()


" Syntastic {

	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*
	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0"

" }


" NERDcommenter {

	let g:NERDCompactSexyComs=1
	let g:NERDDefaultAlign='left'
	let g:NERDCommentEmptyLines=1
	let g:NERDTrimTrailingWhitespace=1

" }
