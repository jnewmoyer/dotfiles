set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'veegee/cql-vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()

au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au BufRead,BufNewFile *.spect setfiletype spec

filetype plugin indent on

"Standard vim setup
set showcmd
set autowrite
set number
set numberwidth=5
set cursorline
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
set scrolloff=3 "Keep 3 lines below and above the cursor

"Prevent background bleed over
set t_ut=

syntax case match
syntax sync minlines=256
syntax on

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

"remove quickfix window
let g:go_fmt_fail_silently = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_metalinter_autosave = 1
let g:go_fmt_command = "goimports"

