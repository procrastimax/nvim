source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/keys.vim
source $HOME/.config/nvim/config/completion.vim

" Configure LSP
" https://github.com/neovim/nvim-lspconfig#rust_analyzer
lua <<EOF

-- nvim_lsp object
local nvim_lsp = require'lspconfig'

-- function to attach completion when setting up lsp
-- local on_attach = function(client)
--    require'completion'.on_attach(client)
-- end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Enable ccls
nvim_lsp.ccls.setup({capabilities = capabilities})

-- Enable gopls
nvim_lsp.gopls.setup({capabilities = capabilities})

-- Enable pyright
nvim_lsp.pyright.setup({capabilities = capabilities})

-- Enable bash LSP
nvim_lsp.bashls.setup({capabilities = capabilities})

-- Enable rust_analyzer
nvim_lsp.rust_analyzer.setup({
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importMergeBehavior = "last",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})

-- Enable latex language server (TexLab)
nvim_lsp.texlab.setup({capabilities = capabilities})

-- Enable tree sitter support
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true,              -- false will disable the whole extension
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  indentation = {
    enable = true, -- Indentation based on treesitter for the = operator. NOTE: This is an experimental feature.
  },
  folding = {
    enable = true,
  },
}

EOF

let g:completion_enable_auto_popup = 1

nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>

nnoremap <silent> ge    <cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>

" Goto previous/next diagnostic warning/error
nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap <Leader>F <cmd>lua vim.lsp.buf.formatting()<CR>

source $HOME/.config/nvim/config/last.vim
