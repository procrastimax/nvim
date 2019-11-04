"" SPLITS
"split movement
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
" saner splits
nnoremap <C-w>v <C-w>v
nnoremap <C-w>h <C-w>s
"resizing splits
nnoremap <C-w><C-w><C-w>h <C-w><
nnoremap <C-w><C-w><C-w>l <C-w>>
nnoremap <C-w><C-w><C-w>k <C-w>-
nnoremap <C-w><C-w><C-w>j <C-w>+

"" COPY & PASTE
" Copy from virtual selection
vnoremap <Leader>c "+y
" Cut current virtual selection
vnoremap <Leader>x "+x
" Paste with current clipboard selection
nnoremap <Leader>v "+p

""  BUFFERS
" open new empty buffer
nmap <leader>bnew :enew<CR>
" switch to next buffer
nmap <leader>bn :bnext<CR>
" switch to previous buffer
nmap <leader>bp :bprevious<CR>
" close a current buffer and move to rpevious
nmap <leader>bq :bp <BAR> bd #<CR>
" show all buffers ad their status
nmap <leader>bl :ls<CR>

"" SPELLCHECKING
map <leader>en :setlocal spell! spelllang=en<CR>
map <leader>de :setlocal spell! spelllang=de<CR>

"" UTILITIES
" Find/Replace word under current cursor
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>
" Find the word under current cursor
nnoremap <Leader>fi :/<C-r><C-w><CR>

" clear search
map <leader><ESC> :let @/=''<cr>
" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬,trail::
" toggle tabs and eol
map <leader>l :set list!<CR>
