# NeoVim Configuration
This is my simple neovim nightly config setup with support for the following native LSP:
- Go (gopls) - can be installed with the 'vim-go' plugin with `:GoInstallBinaries`
- Python ([pyright](https://github.com/Microsoft/pyright))
- Rust ([rust-analyzer](https://rust-analyzer.github.io/manual.html#installation)).
- Bash ([bash-language-server](https://github.com/bash-lsp/bash-language-server)).
- Latex ([texlab](https://github.com/latex-lsp/texlab)).

For some file formats there exists some small specific configurations in the ftplugin folder.

## Installation
Clone this repository into **$HOME/.config**.
The setup consists of a main *init.vim* which has only one purpose - load other vim config files.
Language specific configs are loaded from the ftplugin folder with the structure: *language*.vim.

To setup the plugin manager `dein` and other things, please execute the `install.sh` script.
After this, open neovim an type: `:call dein#install()` in nvim to download all plugins.

## Needed Programs
- [NeoVim](https://github.com/neovim/neovim) (nightly build min. **v0.5**)
- Python3
