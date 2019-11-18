" adding dein installation directory into runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
    call dein#begin('~/.config/nvim/dein')

    call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

    " --------------------
    " Add new plugins here
    " --------------------
    " A colorscheme
    call dein#add('srcery-colors/srcery-vim')

    " Airline status bar
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')

    " completion framework
    call dein#add('Shougo/deoplete.nvim')

    " include completion framework for deoplete
    call dein#add('Shougo/neoinclude.vim')

    " c/c++ completion
    call dein#add('Shougo/deoplete-clangx')

    " python completion
    call dein#add('deoplete-plugins/deoplete-jedi')
    call dein#add('davidhalter/jedi')

    " go plugin
    call dein#add('fatih/vim-go')

    " vimtex for latex
    call dein#add('lervag/vimtex')

    call dein#end()
call dein#save_state()
endif

" Sking related:
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme = 'zenburn'
" Completion related:
    " enable deoplete at startup
    let g:deoplete#enable_at_startup = 1
    " change clang binary path
    call deoplete#custom#var('clangx', 'clang_binary', '/usr/lib/clang')
    let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'

" vim-go configuration
    let g:go_fmt_command = "goimports"
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'

" vimtex configuration
    let g:vimtex_compiler_enabled = 1
    let g:tex_flavor = 'latex'
    let g:tex_conceal = ''
    let g:vimtex_fold_manual = 1
    let g:vimtex_latexmk_continuous = 1
    let g:vimtex_compiler_progname = 'nvr'
