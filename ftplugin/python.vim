" keep signcolumn open
set signcolumn=yes

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" dont fold files on opening
set nofoldenable

" overwrite LSP formatting since pyright currently does not support formatting
nnoremap <leader>f :!autopep8 -i %<CR><CR>
