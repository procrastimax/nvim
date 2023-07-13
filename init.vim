source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/keys.vim


lua require('plugins')
lua require('lsp')
lua require('cmp-setup')
lua require('snippets-setup')
lua require('lualine-setup')
lua require('signature-help')
lua require('outline')
lua require('tabindent')
