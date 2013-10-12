filetype on
set nocompatible
filetype off

" Vundle inititialization
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'bling/vim-airline'
Bundle 'Valloric/YouCompleteMe'

Bundle 'tpope/vim-markdown'

set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set cinkeys=0{,0},0),:,0#,!^F,o,O,e
set number
set bs=2
set encoding=utf-8
set laststatus=2

let mapleader = ","

filetype plugin on
filetype plugin indent on

autocmd filetype python set expandtab

syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
  "set guifont=Ubuntu\ Mono\ 13
  "set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
endif

" Python: set tab to 4 spaces
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*pyw set tabstop=4

" Initially ignore cases in searches
set ignorecase

" Smart case searching. Case insensitive if all lowercase, but if you
" provide uppercase it will force matching case
set smartcase

" Visually display matching braces
set showmatch

let g:molokai_original = 1
let g:ycm_confirm_extra_conf = 0

let g:syntastic_python_pylint_args='-d C0301 -d C0103 -f parseable -r n -i y'
let g:clang_library_path='/home/cms/brochet/.local/lib'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

"let g:airline_theme='light'
if has('gui_running')
  let g:airline_powerline_fonts=1
else
  let g:airline_powerline_fonts=0

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
endif
