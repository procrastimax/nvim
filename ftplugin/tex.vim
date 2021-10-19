" LATEX ftplugin
" NOTE: currently no latex plugin is used

" ---------------
" AUTO CLOSE BRACKETS
" ---------------
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>

nnoremap <F9> :w<CR>:call SaveCompileView()<CR>

function! SaveCompileView()
    :w
    :VimtexCompile
    :VimtexView
endfunction

"" execute this function when saving with 'W'
command! W :call SaveCompileView()

"function! FillEnd()
"    let lineNumber = line('.')
"    let fullLine = matchstr(getline(lineNumber) , '\\\w\+{\w\+}')
"    if fullLine == ''
"        echo \"doesnt match\"
"        return
"    endif
"    let bracketName = split(fullLine, '{')[1]
"    call setline(lineNumber + 1, '\end{' . bracketName[0:strlen(bracketName)-2] . '}')
"endfunction

" when leaving a line with \...{} then create a end for it
"inoremap }<CR> }<ESC>:call FillEnd()<CR>

" ---------------
" Latex Snippets
" ---------------
" Some code snippet utility -> move between <++> tags and replace them, tag before
"nnoremap tb ?<++><CR>d%i
"inoremap \begin \begin{<++>}<CR><CR>\end{}
