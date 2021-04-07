" rust config

" keep signcolumn open
set signcolumn=yes

" Open horizontal terminal split and compile program there and execute it
nnoremap <F9> :w <bar> :15split <bar> terminal cargo run<CR>
" SHIFT+F9 - Like command above but enables the user to pass parameters
nnoremap <F21> :w <bar> :15split <bar> terminal cargo run --

" format file and reload file to enable rust-analyzer again
nnoremap <Leader>F :!rustfmt %<CR><bar>:e %<CR><bar>:w %<CR>

" autocomplete
inoremap {<CR> {<CR>}<ESC>O
