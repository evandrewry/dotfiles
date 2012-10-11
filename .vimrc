"pathogen
filetype off
call pathogen#infect()
filetype plugin indent on

syntax enable
"let g:solarized_termcolors=256
colorscheme solarized
set background=dark

set nocompatible

set modelines=0

"tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"make vim behave in a sane manner
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
"set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set number
set undofile
syntax on

"normal searhing and regex options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

"tab to see matching (){}[]
nnoremap <tab> %
vnoremap <tab> %

"wrapping
set wrap 
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"disable arrow keya
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"save on focus lost
au FocusLost * silent! wall

"strip trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

"select pasted text
nnoremap <leader>v V`]

"double j to move back into normal mode
inoremap jj <ESC>

"split window and switch
nnoremap <leader>w <C-w>v<C-w>l

"remap split window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"powerline
let g:Powerline_symbols = 'fancy'
set guifont=Menlo\ for\ Powerline

"macvim toolbar
if has("gui_running")
    set guioptions=egmrt
endif
