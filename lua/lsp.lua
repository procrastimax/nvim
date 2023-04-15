---
-- Global Config
---

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "gopls", "texlab", "ltex", "pylsp", "bashls",
        "html", "jsonls", "cssls" }
}

local lsp_defaults = {
    flags = {
        debounce_text_changes = 150,
    },
    capabilities = require('cmp_nvim_lsp').default_capabilities(
        vim.lsp.protocol.make_client_capabilities()
    ),
    on_attach = function(client, bufnr)
        vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })
    end
}

local lspconfig = require('lspconfig')

lspconfig.util.default_config = vim.tbl_deep_extend(
    'force',
    lspconfig.util.default_config,
    lsp_defaults
)

---
-- LSP Feature Keybindings
---

vim.api.nvim_create_autocmd('User', {
    pattern = 'LspAttached',
    desc = 'LSP actions',
    callback = function()
        local bufmap = function(mode, lhs, rhs)
            local opts = { buffer = true, noremap = true, silent = true }
            vim.keymap.set(mode, lhs, rhs, opts)
        end

        -- Jump to the definition
        bufmap('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

        -- Jump to declaration
        bufmap('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

        -- Displays hover information about the symbol under the cursor
        bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')

        -- Lists all the implementations for the symbol under the cursor
        bufmap('n', '<leader>lI', '<cmd>lua vim.lsp.buf.implementation()<cr>')

        -- Displays a function's signature information
        bufmap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')

        -- Jumps to the definition of the type symbol
        bufmap('n', '<leader>lo', '<cmd>lua vim.lsp.buf.type_definition()<cr>')

        -- Lists all the references
        bufmap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<cr>')

        -- Renames all references to the symbol under the cursor
        bufmap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')

        -- Selects a code action available at the current cursor position
        bufmap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
        bufmap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

        -- Show diagnostics in a floating window
        bufmap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')

        -- Move to the previous diagnostic
        bufmap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')

        -- Move to the next diagnostic
        bufmap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')

        -- format
        bufmap('n', '<space>F', '<cmd>lua vim.lsp.buf.format { async = true }<cr>')

        -- symbols
        bufmap('n', '<leader>ls', '<cmd>SymbolsOutline<CR>')

        -- workspace folder handling
        bufmap('n', '<leader>lwa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>')
        bufmap('n', '<leader>lwr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>')
        bufmap('n', '<leader>lwl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
    end
})


vim.opt.completeopt = { 'menuone', 'noselect', 'noinsert' }
--vim.opt.shortmess = vim.opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 300)

---
-- LSP Servers
---

lspconfig.lua_ls.setup({})
lspconfig.rust_analyzer.setup({
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = true
            },
        }
    }
})

lspconfig.gopls.setup({})
-- lspconfig.pyright.setup({})
lspconfig.bashls.setup({})
lspconfig.texlab.setup({
    settings = {
        ["texlab"] = {
            build = {
                onSave = true,
                forwardSearchAfter = true,
            },
            forwardSearch = {
                executable = "okular",
                args = { "--noraise", "--unique", "file:%p#src:%l%f" },
            }
        },
    }
})
lspconfig.cssls.setup({})
lspconfig.jsonls.setup({})
lspconfig.html.setup({})

lspconfig.pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    maxLineLength = 100
                },
                pydocstyle = {
                    enabled = true,
                    ignore = { "D103", "D100", "D101", "D102", "D213", "D203" },
                },
            }
        }
    }
})

-- Enable tree sitter support
require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "rust", "python", "go", "bash", "html", "css", "markdown", "latex", "c", "make", "java", "lua",
        "json", "vim", "bibtex", "yaml", "javascript", "kotlin", "dockerfile", "toml", "ruby", "comment" },
    sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
    highlight = {
        enable = true, -- false will disable the whole extension
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true, -- Indentation based on treesitter for the = operator. NOTE: This is an experimental feature.
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },
}

lspconfig.ltex.setup {
    filetypes = { "latex", "tex", "bib", "markdown", "gitcommit", "text" },
    settings = {
        ltex = {
            enabled = { "latex", "tex", "bib", "markdown", },
            language = "en",
            diagnosticSeverity = "information",
            sentenceCacheSize = 2000,
            additionalRules = {
                enablePickyRules = true,
                motherTongue = "en",
            },
            disabledRules = {
            },
        },
    },
}


vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
