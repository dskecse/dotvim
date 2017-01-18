set nocompatible

set hlsearch
set incsearch

syntax on                  " syntax highlighting (based on file extension)
filetype plugin indent on  " switch on file type detection (w/o syntax highlighting),
                           " with automatic indenting and settings :h :filetype
                           " FYI: indent works although it produces 8-space
                           " tabs.
runtime macros/matchit.vim

set number
