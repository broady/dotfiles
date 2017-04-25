" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\·\ ,trail:·
set nojoinspaces

let g:go_fmt_command = "goimports"

set completeopt=preview,menuone

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'dracula/vim'
Plugin 'chrisbra/Colorizer'
call vundle#end()

" Hide the autocompletion scratch/preview window.
set completeopt-=preview

syntax on
set t_Co=256
colorscheme dracula

filetype plugin indent on

map ; :

" Mouse support (scrolling, selection, etc)
set mouse=a

" Persistent history
set undodir=~/.vim/undo
set undofile
