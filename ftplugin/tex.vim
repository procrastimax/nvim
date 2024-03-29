" LATEX ftplugin

" keep signcolumn open
set signcolumn=yes

" folding with treesitter
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" dont fold files on opening
set nofoldenable

" dont set window title for latex files, since compilin them somehow messes with the titlt update -> gets updated multiple times per second
set notitle

nnoremap W :w<CR>:TexlabBuild<CR>

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

nnoremap <leader>ac a\ac{}<ESC>i

nnoremap <leader>list i\begin{itemize}<ESC>o\item<ESC>o<BACKSPACE><BACKSPACE>\end{itemize}<ESC>
nnoremap <leader>enum i\begin{enumerate}<ESC>o\item<ESC>o<BACKSPACE><BACKSPACE>\end{enumerate}<ESC>

nnoremap <leader>fig i\begin{figure}[h]<ESC>o\centering<ESC>o\includegraphics[width=\textwidth]{}<ESC>o\caption{Figure}<ESC>o\label{fig:}<ESC>o<BACKSPACE>\end{figure}<ESC>
nnoremap <leader>tab i\begin{table}[h]<ESC>o\centering<ESC>o\begin{tabular}{}<ESC>o\end{tabular}<ESC>o\caption{Figure}<ESC>o\label{tab:}<ESC>o<BACKSPACE>\end{table}<ESC>
