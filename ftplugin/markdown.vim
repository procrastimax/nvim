" compile pdf from markdown

" somehow this messes with the lua preview of rust-analyzer and recognizes rust files as markdown files???
"nnoremap <F9> :w<bar>:!pandoc --from=markdown --output=%:r.pdf % -V geometry:a4paper -V geometry:margin=2cm -V mainfont="DejaVu Sans" --variable urlcolor=cyan<CR><bar>:!evince %:r.pdf<CR>
