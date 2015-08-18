set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'veegee/cql-vim'

call vundle#end()

au FileType go nmap <Leader>dt <Plug>(go-def-tab)

filetype plugin indent on

"Standard vim setup
set showcmd
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

"Disable arrow keys
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"Color
set background=dark

"Remove highlighting from searches on demand
nmap <silent> <leader><space> :nohlsearch<cr>

"remove quickfix window
let g:go_fmt_fail_silently = 1
