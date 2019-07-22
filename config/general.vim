" Todo:
" - folding
" - add more keys
" - configure language specific settings
" - install plugins
" - https://www.freecodecamp.org/news/learn-linux-vim-basic-features-19134461ab85/ -> functions of code block indentation etc

set number
syntax on

" For Plugins to load correctly
filetype plugin indent on

" disable expanding of comments to new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set leader key
let mapleader = " "

" Security
set modelines=0

" Show File stats
set ruler

" Blink cursor on error instead of sound beep
" set visualbell

" set colorscheme
colorscheme srcery

set encoding=utf-8

" Whitespace
set wrap
set textwidth=79
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

"split movement
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
"saner splits
nnoremap <C-w>\| <C-w>v
nnoremap <C-w>_ <C-w>s
"resizing splits
nnoremap <C-w><C-w><C-w>h <C-w><
nnoremap <C-w><C-w><C-w>l <C-w>>
nnoremap <C-w><C-w><C-w>k <C-w>-
nnoremap <C-w><C-w><C-w>j <C-w>+

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! marcos/matchit.vim

" Allow hidden buffers
set hidden
" open new empty buffer
nmap <leader>T :enew<CR>
" switch to next buffer
nmap <leader>bn :bnext<CR>
" switch to previous buffer
nmap <leader>bp :bprevious<CR>
" close a current buffer and move to rpevious
nmap <leader>bq :bp <BAR> bd #<CR>
" show all buffers ad their status
nmap <leader>bl :ls<CR>

" Rendering
set ttyfast

" Status bar
set laststatus=2
set title

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase

" show matching brackets
set showmatch

" clear search
map <leader><ESC> :let @/=''<cr>

" spellchecing
map <leader>en :setlocal spell! spelllang=en<CR>
map <leader>de :setlocal spell! spelllang=de<CR>

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬,trail::
" toggle tabs and eol
map <leader>l :set list!<CR>

" clipboard
" copy
noremap <C-c> "+y
" paste
noremap <C-v> "+p
" cut
noremap <C-x> "+d
" paste in insert mode
inoremap <C-v> <Esc>"+pa
