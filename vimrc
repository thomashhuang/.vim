" vimrc file by Thomas Huang
" Using iTerm2 with background color 0x303030

set nocompatible            "must be first line

" Pathogen installation
execute pathogen#infect()

" NERDTree {
   
    nnoremap <C-t> :NERDTreeToggle<CR>
    "close vim if only open window is NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }

" NERDcommenter { improves commenting
" comment lines with <leader>c and a movement key

    let g:NERDCompactSexyComs=1             "compact multiline comments
    let g:NERDDefaultAlign='left'           "line comments go flush to left rather than indent
    let g:NERDCommentEmptyLines=1           "allow commenting and inverting empty lines
    let g:NERDTrimTrailingWhitespace=1      "enable trimming when uncommenting

" }

" airline-themes {

    let g:airline_theme='deus'

" }

" indentLine {

    let g:indentLine_char = '┆'
    let g:vim_json_conceal=0
    let g:markdown_syntax_conceal=0

" }

" numbers {
    
    let g:numbers_exclude = ['nerdtree']   "don't show line numbers on tree

" }

" syntastic {

    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

" }


" General Settings {

    syntax on                       "syntax highlighting
    set background=dark             "dark background
    colorscheme neodark             "syntax theme
    set mouse=a                     "allows mouse use
    scriptencoding utf-8            "encoding
    set encoding=utf-8              "cont...
    set fileencoding=utf-8          "cont...
    set hidden                      "buffer switching without saving
    set showcmd                     "show commands in status line
    set backspace=indent,eol,start  "intuitive backspace
    set autoindent                  "automatically indent next line
    set smartindent					"smart indent
    set lazyredraw                  "stop redrawing when unnecessary
    set autoread                    "reload files changed outside vim
    
" }

" VIM UI {

    set ruler               "show ruler
    set showmode            "show current mode
    set showmatch           "show matching brackets/parens
    set number              "line numbers
    set cursorline          "highlight current line
    set incsearch           "find as you type search
    set hlsearch            "highlight search terms
    set ignorecase          "case insensitive search
    set wildmenu            "show list instead of just completing
    set noerrorbells        "disabling error bells
    "set nowrap              "do not wrap long lines

" }

" Formatting {

    set tabstop=4                   "indents every four columns
    set softtabstop=0               "backspace deletes indents
    set shiftwidth=4                "indents are 4 spaces long
    set expandtab                   "tab inserts spaces instead
    filetype plugin indent on       "enable file-specific config

" }

" Keybinds and macros {

    "space as leader key
    let mapleader=" "

    "remap B and E to beginning and end of line
    nnoremap B ^
    nnoremap E $
    
    "unmap $ and ^
    nnoremap $ <nop>
    nnoremap ^ <nop>

    "auto indent blocks with {<ENTER>
    inoremap {<CR> {<CR>}<left><CR><esc>kA<tab>

    "refactor between {
    nnoremap gr gd[{V%::s/<C-R>///gc<left><left><left>}]
    "refactor globally
    nnoremap gR gD:%s/<C-R>///gc<left><left><left>

    "when opening a file, jump to line where cursor was last time 
    if has("autocmd")
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
            \| exe "normal! g'\"" | endif
    endif

    "disable automatically commenting next line
    inoremap <expr> <enter> getline('.') =~ '^\s*//' ? '<enter><esc>S' : '<enter>'
    nnoremap <expr> O getline('.') =~ '^\s*//' ? 'O<esc>S' : 'O'
    nnoremap <expr> o getline('.') =~ '^\s*//' ? 'o<esc>S' : 'o'

    "Ctrl+hl to move between tabs
    noremap <C-h> :tabp<CR>
    noremap <C-l> :tabn<CR>

    "Ctrl+jk to move between buffers
    noremap <C-k> :bprev<CR>
    noremap <C-j> :bnext<CR>

    "Ctrl+b to show buffers
    map <C-b> :buffers<CR>

    "<leader><number> to switch to window <number>
    let i = 1
    while i <= 9
        execute 'nnoremap <Leader>' . i . ' :' . i . 'wincmd w<CR>'
        let i = i + 1
    endwhile

" }
