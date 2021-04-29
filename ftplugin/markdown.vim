" compile pdf from markdown

nnoremap <F9> :w<bar>:!pandoc --from=markdown --output=%:r.pdf % -V geometry:a4paper -V geometry:margin=2cm -V mainfont="DejaVu Sans" --variable urlcolor=cyan<CR><bar>:!evince %:r.pdf<CR>
