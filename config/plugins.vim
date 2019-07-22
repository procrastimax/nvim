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
    call deoplete#custom#var('clangx', 'clang_binary', '/usr/lib/llvm-8/bin/clang')
