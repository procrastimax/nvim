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

    " go plugin
    call dein#add('fatih/vim-go')

    " toml files
    call dein#add('cespare/vim-toml')

    " lsp stuff
    call dein#add('neovim/nvim-lspconfig')
    call dein#add('nvim-lua/lsp_extensions.nvim')
    call dein#add('nvim-lua/completion-nvim')

    call dein#end()
call dein#save_state()
endif

" Sking related:
    " enable list of buffers
    let g:airline#extensions#tabline#enabled = 1
    " only show filename of buffers
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline_powerline_fonts = 1
    let g:airline_theme = 'zenburn'

" vim-go configuration
    let g:go_fmt_command = "goimports"
    let g:go_def_mode='gopls'
    let g:go_info_mode='gopls'
