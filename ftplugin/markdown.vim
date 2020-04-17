" compile pdf from markdown

nnoremap <F9> :w <bar> :!pandoc --from=markdown --output=%:r.pdf % --variable=geometry:"margin=0.5cm, paperheight=845pt, paperwidth=595pt" --highlight-style=espresso<CR> <bar> :!evince %:r.pdf<CR>
