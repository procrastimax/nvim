" file for dot files (creating graphs)
" ---------------
" GENERAL STUFF
" ---------------

" search for a line that starts with 'msc {' -> indicates not a normal dot file
let mscMode = search('^msc {')

if mscMode > 0
    " render image to .png file
    nnoremap <F9> :w <bar> :!mscgen -Tpng -i % -o %:r.png<CR><CR>

    " render image to .png file and open file in feh
    nnoremap <F10> :w <bar> :!mscgen -Tpng -i % -o %:r.png<CR> <bar> :! feh %:r.png &<CR>

else
    " render image to .png file
    nnoremap <F9> :w <bar> :!dot -Tpng -i % -o %:r.png<CR><CR>

    " render image to .png file and open file in feh
    nnoremap <F10> :w <bar> :!dot -Tpng -i % -o %:r.png<CR> <bar> :! feh %:r.png &<CR>
endif


" Autoclosing bracket
inoremap {<CR> {<CR>}<ESC>O
