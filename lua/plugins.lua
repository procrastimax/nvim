vim.g["airline#extensions#tabline#enabled"] = 1
vim.g["airline#extensions#tabline#fnamemod"] = ':t'
vim.g["airline_powerline_fonts"] = 1
vim.g["airline_theme"] = 'nord'

vim.g["python3_host_prog"] = "/home/max/.pyenv/versions/py3nvim/bin/python"

-- recognize tex files more easily
vim.g["tex_flavor"] = "latex"

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

    use 'hrsh7th/nvim-cmp'

    use 'hrsh7th/cmp-nvim-lsp'

    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp-document-symbol'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    -- fancy signature help
    use 'ray-x/lsp_signature.nvim'

    -- symbols outline
    use 'simrat39/symbols-outline.nvim'

    -- extra completion sources
    use 'hrsh7th/cmp-omni'

    -- lua snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'rafamadriz/friendly-snippets'

    -- colorscheme
    use 'shaunsingh/nord.nvim'

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- treesitter
    use 'nvim-treesitter/nvim-treesitter'

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }

    -- for more feature comfort when using tex-ls
    use { 'vigoux/ltex-ls.nvim', requires = 'neovim/nvim-lspconfig' }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' }
    }
    use "lukas-reineke/indent-blankline.nvim"

    -- null-ls to hook formatters into lsp
    use { "jose-elias-alvarez/null-ls.nvim" }
    use { "jay-babu/mason-null-ls.nvim" }
end)
