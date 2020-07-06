" file for DOT files (creating graphs)
" ---------------
" GENERAL STUFF
" ---------------

" render image to .png file
nnoremap <F9> :w <bar> :!dot -Tpng % -o %:r.png<CR><CR>

" render image to .png file and open file in feh
nnoremap <F10> :w <bar> :!dot -Tpng % -o %:r.png<CR> <bar> :! feh %:r.png &<CR>




" Autoclosing bracket
inoremap {<CR> {<CR>}<ESC>O


