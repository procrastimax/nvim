" ----------------
" GENERAL STUFF
" ----------------

" keep signcolumn open
set signcolumn=yes

set noexpandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()


" Open horizontal terminal split and compile program there and execute it
nnoremap <F9> :w<bar>:GoRun<CR>

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
