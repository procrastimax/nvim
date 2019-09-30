" C style indentation
set cindent
set tabstop=4
set shiftwidth=2
set softtabstop=2

" Folding a class/ method by its matching brackets -> only works when bracket is last character in the line
nnoremap <Leader>fo $mz%zf'z

" Autoformat the current buffer with clang-format
nnoremap <Leader>F :w <bar> :1,$d <bar> :0r !clang-format %<CR>jdd

" Open horizontal terminal split and compile program there and execute it
nnoremap <F9> :w <bar> :15split <bar> terminal gcc -std=c99 -Wextra -Wall % -o %:r && ./%:r<CR>
