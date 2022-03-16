" Don't try to be vi compatible
set nocompatible

" Remove bar
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

" Search
set nohlsearch  " noh
set smartcase	" Enable smart-case search
set gdefault	" Always substitute all matches in a line
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally

" Tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Set mouse
set mouse=a

" Set numbers
set relativenumber

" No line wrapping
set nowrap

" Better command-line completion
set wildmenu

" Allow unsaved buffers
set hidden

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Pluggins
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
call plug#end()

" Split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Add new lines
nnoremap <A-CR> O<ESC>
nnoremap <CR> o<ESC>

" Search with ,
nnoremap , /

colorscheme gruvbox

syntax on

let mapleader = " "

nnoremap <leader>q :NERDTreeToggle<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>r :!!<cr>
nnoremap <leader>b :buffers<cr>

