" file for DOT files (creating graphs)
" ---------------
" GENERAL STUFF
" ---------------

" Open horizontal terminal split and compile program there and execute it
nnoremap <F9> :w <bar> :!dot -Tpng % -o %:r.png<CR>



" Autoclosing bracket
inoremap {<CR> {<CR>}<ESC>O


