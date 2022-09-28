source $HOME/.config/nvim/config/general.vim
source $HOME/.config/nvim/config/keys.vim

lua require('plugins')
lua require('cmp-setup')
lua require('lsp')
lua require('snippets-setup')
lua require('lualine-setup')
