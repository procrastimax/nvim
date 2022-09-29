set number
syntax on

" For Plugins to load correctly
filetype plugin indent on
" disable expanding of comments to new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions+=l

" Set leader key to 'SPACE'
let mapleader = " "

" Security
set modelines=0

" Show File stats
set ruler

" Blink cursor on error instead of sound beep
" set visualbell

set termguicolors

" set colorscheme
colorscheme nord

set encoding=utf-8

" no swap file
set noswapfile

" use undofile after closing vim
set undofile

set fileformat=unix

" set colorcolumn=80
set cursorline
set linebreak

" Whitespace
"set wrap
"set wrapmargin=0
"set textwidth=0
set formatoptions=tqn1

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

set autoindent
set smarttab

set wildmenu " visual autocomplete
set wildmode=longest,list,full

" only redraw when we must
set lazyredraw
" get dialog when :q, :w, :wq fails
set confirm
" use mouse in visual mode
set mouse=v

set splitbelow
set splitright

" Automatically delete all trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
set title

" Last line
set showmode
set showcmd

" Reload Buffer when file changes
set autoread

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase

" show matching brackets
set showmatch

" when entering a new buffer always reload it (only buffers with *.* name - so all files with an ending)
" this reapplies treesitter and fixes a bug where I had to reload it on my own
"autocmd BufEnter *.* edit
