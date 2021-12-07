" LATEX ftplugin

function! SaveCompileView()
    :w
    :VimtexCompile
    :VimtexView
endfunction

nnoremap <F9> :w<CR>:call SaveCompileView()<CR>

"" execute this function when saving with 'W'
command! W :call SaveCompileView()
let g:vimtex_quickfix_mode = 2
" close quickfix (error) window after moving cursor
let g:vimtex_quickfix_autoclose_after_keystrokes = 1
" open quickfix window on warnings
let g:vimtex_quickfix_open_on_warning = 0

" keep signcolumn open
set signcolumn=yes

" insert math arrows
nnoremap <leader>rarr a$\rightarrow$<ESC>
nnoremap <leader>larr a$\leftarrow$<ESC>
nnoremap <leader>lrarr a$\leftrightarrow$<ESC>

nnoremap <leader>bf a\textbf{}<ESC>i
nnoremap <leader>it a\textit{}<ESC>i
nnoremap <leader>ul a\underline{}<ESC>i
nnoremap <leader>quot a\enquote{}<ESC>i

nnoremap <leader>list i\begin{itemize}<ESC>o\item<ESC>o<BACKSPACE><BACKSPACE>\end{itemize}<ESC>
nnoremap <leader>enum i\begin{enumerate}<ESC>o\item<ESC>o<BACKSPACE><BACKSPACE>\end{enumerate}<ESC>

nnoremap <leader>fig i\begin{figure}[h]<ESC>o\centering<ESC>o\includegraphics[width=\textwidth]{}<ESC>o\caption{Figure}<ESC>o\label{fig:}<ESC>o<BACKSPACE>\end{figure}<ESC>
