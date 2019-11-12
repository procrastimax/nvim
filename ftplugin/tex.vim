" use deoplete for vimtex
call deoplete#custom#var('omni', 'input_patterns', { 'tex': g:vimtex#re#deoplete})

" ---------------
" AUTO CLOSE BRACKETS
" ---------------
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

nnoremap <F9> :w <bar> :VimtexCompile <bar> :VimtexView<CR>

" function to save, compile and view current tex file

function! SaveCompileView()
    :w
    :VimtexCompile
    :VimtexView
endfunction

" execute this function when saving with 'W'
command! W :call SaveCompileView()

function! GetUserInput()
    let curline = getline('.')
    call inputsave()
    let userInput = input('Enter name: ')
    call inputrestore()
    call setline('.', curline . ' ' . userInput)
endfunction

function! FillEnd()
    let lineNumber = line('.')
    let fullLine = matchstr(getline(lineNumber) , '\\\w\+{\w\+}')
    if fullLine == ''
        echo "doesnt match"
        return
    endif
    let bracketName = split(fullLine, '{')[1]
    call setline(lineNumber + 1, '\end{' . bracketName[0:strlen(bracketName)-2] . '}')
endfunction

" when leaving a line with \...{} then create a end for it
inoremap }<CR> }<ESC>:call FillEnd()<CR>

" ---------------
" Latex Snippets
" ---------------
" Some code snippet utilitie -> move between <++> tags and replace them, tag before
nnoremap tb ?<++><CR>d%i
inoremap \begin \begin{<++>}<CR><CR>\end{}
