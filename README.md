# NeoVim Configuration
This is my simple neovim nightly config setup with support for the following native LSP:
- Go (gopls) - can be installed with the 'vim-go' plugin with `:GoInstallBinaries`
- Python ([pyright](https://github.com/Microsoft/pyright))
- Rust ([rust-analyzer](https://rust-analyzer.github.io/manual.html#installation)).

For some file formats there exists some small specific configurations in the ftplugin folder.

## Installation
Clone this repository into **$HOME/.config**.
The setup consists of a main *init.vim* which has only one purpose - load other vim config files.
Language specific configs are loaded from the ftplugin folder with the structure: *language*.vim.

Read the **AdditionalSetup.md**. Because for some plugins some pre-setup has to be done. For example python3 neovim client installation.

After this, call the *dein_install.sh* script in the *dein* folder, this is going to download and install the dein plugin manager.
Then exectute `:call dein#install()` in nvim to download all plugins.

## Needed Programs
- [NeoVim](https://github.com/neovim/neovim) (nightly build min. v0.5)
- Python3
