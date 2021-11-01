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


" insert math arrows
nnoremap <leader>rarr i$\rightarrow$<ESC>
nnoremap <leader>larr i$\leftarrow$<ESC>
nnoremap <leader>lrarr i$\leftrightarrow$<ESC>

nnoremap <leader>bf i\textbf{}<ESC>i
nnoremap <leader>it i\textit{}<ESC>i
nnoremap <leader>quot i\enquote{}<ESC>i
nnoremap <leader>fig i\begin{figure}[h]<ESC>o\centering<ESC>o\includegraphics[width=\textwidth]{}<ESC>o\caption{Figure}<ESC>o\label{fig:}<ESC>o<BACKSPACE>\end{figure}<ESC>
