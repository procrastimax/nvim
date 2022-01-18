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

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" dont fold files on opening
set nofoldenable

" dont set window title for latex files, since compilin them somehow messes with the titlt update -> gets updated multiple times per second
set notitle

" insert math arrows
nnoremap <leader>rarr a$\rightarrow$<ESC>
nnoremap <leader>larr a$\leftarrow$<ESC>
nnoremap <leader>lrarr a$\leftrightarrow$<ESC>

nnoremap <leader>Rarr a$\Rightarrow$<ESC>
nnoremap <leader>Larr a$\Leftarrow$<ESC>
nnoremap <leader>Lrarr a$\Leftrightarrow$<ESC>

nnoremap <leader>bf a\textbf{}<ESC>i
nnoremap <leader>it a\textit{}<ESC>i
nnoremap <leader>ttt a\texttt{}<ESC>i
nnoremap <leader>ul a\underline{}<ESC>i
nnoremap <leader>quot a\enquote{}<ESC>i

nnoremap <leader>list i\begin{itemize}<ESC>o\item<ESC>o<BACKSPACE><BACKSPACE>\end{itemize}<ESC>
nnoremap <leader>enum i\begin{enumerate}<ESC>o\item<ESC>o<BACKSPACE><BACKSPACE>\end{enumerate}<ESC>

nnoremap <leader>fig i\begin{figure}[h]<ESC>o\centering<ESC>o\includegraphics[width=\textwidth]{}<ESC>o\caption{Figure}<ESC>o\label{fig:}<ESC>o<BACKSPACE>\end{figure}<ESC>
