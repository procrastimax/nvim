" Find/Replace word under current cursor
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>

" Copy from virtual selection
vnoremap <Leader>c "+y
" Paste with current clipboard selection
nnoremap <Leader>v "+p

" Auto Close Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<ESC>O
