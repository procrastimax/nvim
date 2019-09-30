" C style indentation
set cindent

" Folding a class/ method by its matching brackets -> only works when bracket is last character in the line
nnoremap <leader>fo $mz%zf'z

" Autoformat the current buffer with clang-format
nnoremap <leader>F :1,$d <bar> :0r !clang-format %<CR>jdd
