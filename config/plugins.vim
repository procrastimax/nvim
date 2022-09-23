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
    call dein#add('arcticicestudio/nord-vim')

    " Airline status bar
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')

    " lsp stuff
    call dein#add('neovim/nvim-lspconfig')
    call dein#add('nvim-lua/lsp_extensions.nvim')

    " better code completion
    call dein#add('hrsh7th/nvim-compe')
    call dein#add('hrsh7th/vim-vsnip')

    " tree sitter stuff
    call dein#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'})
    call dein#add('nvim-treesitter/playground')

    " latex
    call dein#add('lervag/vimtex')


    " telescope (fzf alternative)
    " deps
    call dein#add('nvim-lua/popup.nvim')
    call dein#add('nvim-lua/plenary.nvim')
    " telescope
    call dein#add('nvim-telescope/telescope.nvim')


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

let g:tex_flavor = "latex"
let g:vimtex_view_general_viewer = "evince"

let g:python3_host_prog = '$HOME/.pyenv/versions/py3nvim/bin/python'
