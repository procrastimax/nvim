" ----------------
" GENERAL STUFF
" ----------------

lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}

set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Folding a class/ method by its matching brackets -> only works when bracket is last character in the line
nnoremap <Leader>fo $mz%zf'z

" Autoformat the current buffer with clang-format
nnoremap <Leader>F :GoFmt<CR>

" Open horizontal terminal split and compile program there and execute it
nnoremap <F9> :w <bar> :15split <bar> terminal go run *.go<CR>

" ---------------
" AUTO CLOSE BRACKETS
" ---------------
"inoremap [ []<left>
inoremap {<CR> {<CR>}<ESC>O

" ---------------
" CODE SNIPPETS
" ---------------
" Some code snippet utilitie -> move between <++> tags and replace them, tag before
nnoremap tb ?<++><CR>d%i

" CREATE IF-ELSE
"inoremap ??ife if (<++>) {<CR><CR>} else {<CR>}<CR><ESC>

" CREATE IF
"inoremap ??if if (<++>) {<CR><CR>}<CR><ESC>

" CREATE WHILE LOOP
"inoremap ??while while(<++>){<CR>}<CR><ESC>

" Create FOR LOOP
"inoremap ??for for(size_t i = 0; i < <++>; i++){<CR>}<ESC>

" CREATE BASE PROGRAM
inoremap ??base package main<CR><CR>import (<CR>"fmt"<CR>)<CR>func main(){<CR>fmt.Println("Hello World")<CR>}<ESC>:GoFmt<CR>
