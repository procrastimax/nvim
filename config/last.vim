" A file with commands loaded last

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" dont fold files on opening
set nofoldenable
