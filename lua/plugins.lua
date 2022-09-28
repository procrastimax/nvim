vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#fnamemod"] = ':t'
vim.g["airline_powerline_fonts"] = 1
vim.g["airline_theme"] = 'nord'

vim.g["tex_flavor"] = "latex"
vim.g["vimtex_view_general_viewer"] = "evince"
vim.g["python3_host_prog"] = '$HOME/.pyenv/versions/py3nvim/bin/python'

vim.wo["foldmethod"] = "expr"
vim.wo["foldexpr"] = "nvim_treesitter#foldexpr()"

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- lua snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -- colorscheme
    use 'arcticicestudio/nord-vim'

    -- airline status bar
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- vimtex
    use 'lervag/vimtex'

    -- treesitter
    use 'nvim-treesitter/nvim-treesitter'
end)