set nocompatible

set hlsearch
set incsearch

" https://stackoverflow.com/questions/56408989/set-tab-as-2-spaces-in-vimrc-but-still-set-to-4-spaces-when-editing-python-file
let g:python_recommended_style = 0 " turn off 4-space indent for Python

syntax on                  " syntax highlighting (based on file extension)
filetype plugin indent on  " switch on file type detection (w/o syntax highlighting),
                           " with automatic indenting and settings :h :filetype
                           " FYI: indent works although it produces 8-space
                           " tabs.
runtime macros/matchit.vim

set number
set rnu
" set laststatus=2  " always display a status line
" set statusline=
" set statusline+=%f
" set statusline+=\ %y

set expandtab     " convert tabs to spaces
set shiftwidth=2  " indentation size in spaces
set softtabstop=2 " tab size
