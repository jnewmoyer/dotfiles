set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript' "Required for vim-jsx support
Plugin 'mxw/vim-jsx' "react support
"Plugin 'scrooloose/syntastic'
Plugin 'benekastah/neomake'
Plugin 'veegee/cql-vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()

au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>t <Plug>(go-test)
au BufRead,BufNewFile *.spect setfiletype spec

filetype plugin indent on

"Standard vim setup
set showcmd
set autowrite
set number
set numberwidth=5
set cursorline
set complete=.,w,b,u,t "better completion
set completeopt=longest,menuone,preview "better completion options
set autoindent
set backup
set backupdir=~/.vim/tmp/backup/
set directory=~/.vim/tmp/swp/
set encoding=utf8
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set noerrorbells
set showcmd
set showtabline=2
set smartcase
set smartindent
set title
set undolevels=20
set t_ti= t_te=
set textwidth=120
set t_Co=256 "If in terminal use 256 colors
set scrolloff=9999 "Keep 3 lines below and above the cursor

"Prevent background bleed over
set t_ut=

syntax case match
syntax sync minlines=256
syntax on

if has('autocmd')
	autocmd BufNewFile,BufRead *.js setlocal et ts=4 sw=4 sts=4

	"Beautify
	autocmd FileType javascript nnoremap <leader>f :call JsBeautify()<cr>
	autocmd FileType javascript nnoremap <leader>t :call JsxBeautify()<cr>
	"make
	autocmd! BufWritePost,BufEnter * Neomake
	"GoRun
	autocmd FileType go nnoremap <leader>r :call GoRun()<cr>
endif

"Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"Color
"let g:molokei_original = 1
let g:rehash256 = 1
set background=dark
colorscheme delek

"Remove highlighting from searches on demand
nmap <silent> <leader><space> :nohlsearch<cr>

" React js files
let g:jsx_ext_required = 0 "Allow JSX in normal JS files

" Neomake
let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_error_sign = {
    \ 'text': 'E>',
    \ 'texthl': 'ErrorMsg',
    \ }
let g:neomake_warning_sign = {
    \ 'text': 'W>',
    \ 'texthl': 'WarningMsg',
    \ }

"remove quickfix window
let g:go_fmt_fail_silently = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_autosave = 1
let g:go_fmt_command = "goimports"

