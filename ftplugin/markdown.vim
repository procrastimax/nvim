" compile pdf from markdown
nnoremap <F9> <CMD>w<CR><bar><CMD>!pandoc --from=markdown --output=%:r.pdf % --pdf-engine='xelatex' -V 'mainfont:DejaVuSans' -V 'geometry:a4paper' -V 'geometry:margin=2cm' -V 'urlcolor=cyan'<CR><bar><CMD>!evince %:r.pdf<CR>

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" dont fold files on opening
set nofoldenable
