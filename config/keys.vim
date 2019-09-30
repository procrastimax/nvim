" Find/Replace word under current cursor
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>

" Auto Close Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap {<CR> {<CR>}<ESC>O
