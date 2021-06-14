" compile pdf from markdown

nnoremap <F9> <CMD>w<CR><bar><CMD>!pandoc --from=markdown --output=%:r.pdf % --pdf-engine='pdflatex' -V 'fontfamily:arev' -V 'geometry:a4paper' -V 'geometry:margin=2cm' -V 'urlcolor=cyan'<CR><bar><CMD>!evince %:r.pdf<CR>
