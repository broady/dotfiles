" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\·\ ,trail:·

let g:go_fmt_command = "goimports"

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

" Hide the autocompletion scratch/preview window.
set completeopt-=preview

filetype plugin indent on

syntax off

map ; :
