" rust config

" keep signcolumn open
set signcolumn=yes

nnoremap <Leader>F :!rustfmt %<CR>

" autocomplete '{/('-bracket
inoremap {<CR> {<CR>}<ESC>O
