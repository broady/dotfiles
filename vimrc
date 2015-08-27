" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

let g:gofmt_command = "goimports"

" TODO
" set rtp+=~/.vim/bundle/vundle/
" set rtp+=/usr/local/go/misc/vim/
" autocmd FileType go autocmd BufWritePre <buffer> Fmt
" call vundle#rc()
" Bundle 'gmarik/vundle'
" Bundle 'Blackrush/vim-gocode'

" Hide the autocompletion scratch/preview window.
set completeopt-=preview
" Autocompletion.
inoremap <Tab> <C-X><C-O>

filetype plugin indent on
"syntax on

map ; :
