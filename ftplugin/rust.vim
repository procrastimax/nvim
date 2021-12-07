" rust config

" keep signcolumn open
set signcolumn=yes

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" dont fold files on opening
set nofoldenable

" Open horizontal terminal split and compile program there and execute it
nnoremap <F9> :w <bar> :15split <bar> terminal cargo run<CR>
" SHIFT+F9 - Like command above but enables the user to pass parameters
nnoremap <F21> :w <bar> :15split <bar> terminal cargo run --

" autocomplete
inoremap {<CR> {<CR>}<ESC>O
