" No vi compatibility
set nocompatible

" Disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Automatically detect file types
filetype on
filetype indent on
filetype plugin on

" set syntax

" Force file to be UTF-8 encoded (upon writing to a file)
" set fileencoding=utf-8

" Force file to be UTF-8 encoded (upon displaying)
" set encoding=utf-8

" Load the entire list of plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Disable file swapping
set noswapfile

" Add recently accessed projects menu (project plugin)
set viminfo^=\!

" Set <Leader> key
let mapleader=","

" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Handle issues between YCM and UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

" .ru files are Ruby
au Bufread,BufNewFile *.ru setfiletype ruby

syntax enable
colorscheme monokai

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme

" Formatting
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
" set backspace=indent,eol,start
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch " Set incremental search
" set hlsearch  " Highlight search results
set ignorecase  " Ignore search case sensitivity
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent  " Use smart indentation
set smarttab
set smartcase  " Set smart filters in searches
set gdefault  " Always add a `g` flag in substitutions
set expandtab " Convert tabs to spaces

" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list  " Show all the tabs and line endings
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
set cursorline  " Highlight the line you are in

" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modesc
set guioptions-=m  " Remove menu bar
set guioptions-=T  " Remove toolbar
set guioptions-=r  " Remove right-hand scroll bar
set guioptions-=L  " Remove left-hand scroll bar

" Highlight trailing spaces
match ErrorMsg '\s\+$'

" Remove trailing spaces
function! TrimWhiteSpaces()
  %s/\s\+$//e
endfunction

nnoremap <silent> <Leader>rts :call TrimWhiteSpaces()

au FileWritePre   * :call TrimWhiteSpaces()
au FileAppendPre  * :call TrimWhiteSpaces()
au FilterWritePre * :call TrimWhiteSpaces()
au BufWritePre    * :call TrimWhiteSpaces()

" Highlight line characters starting from 81st one
highlight ColorColumn ctermbg=magenta guibg=Magenta
call matchadd('ColorColumn', '\%>80v.\+', 100)
