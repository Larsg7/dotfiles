set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-repeat'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-fugitive'

call vundle#end()            
filetype plugin indent on 

colorscheme apprentice

set number
set relativenumber
syntax on
set spell spelllang=en
set modifiable
set cursorline
set mouse=a
set lazyredraw
set t_Co=256
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab

" Syntastc
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Airline theme
let g:airline_theme='lucius'
let g:airline_powerline_fonts = 1

" Python mode
let g:pymode_python = 'python3'
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_rename_bind = '<C-c>rr'


" Autostart

" pep8
let g:pymode_options_max_line_length = 99

" Custom commands
nmap oo o<Esc>k
nmap OO O<Esc>j
