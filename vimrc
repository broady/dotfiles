" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\·\ ,trail:·

let g:gofmt_command = "goimports"

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/go/misc/vim/
autocmd FileType go autocmd BufWritePre <buffer> Fmt

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'Blackrush/vim-gocode'
call vundle#end()

" Hide the autocompletion scratch/preview window.
set completeopt-=preview
" Autocompletion.
inoremap <Tab> <C-X><C-O>

filetype plugin indent on
"syntax on

map ; :
