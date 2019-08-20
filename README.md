# NeoVim Configuration
This is my current neovim setup. Because the idea of creating a central (neo)vim setup for all my machines, is a very recent one, many things are missing and this thing is going to be expanded once in a while.
My intention is to use as little as possible addons and other bloat.
I'm going to use this text editor mainly for writing on "little" code projects in C, C++, Python, Bash and also for writing latex and markdown documents. So the whole setup is going to be wrapped around these tasks.

Feel free to inform me about nice enhancements or things which are not handled so nice right now ;)

## Current Setup
Clone this repository into **$HOME/.config**.
The setup consists of a main *init.vim* which has only one purpose - load other vim config files.
Language specific configs are loaded from the ftplugin folder with the structure: *language*.vim.

Read the **AdditionalSetup.md**. Because for some plugins some pre-setup has to be done. For example python3 neovim client installation.

After this, call the *DeinInstall.sh* script in the *dein* folder, this is going to download and install the dein plugin manager.
Then exectute `:call dein#install()` in nvim to download all plugins.

## Current Addons
- Airline - a powerline status bar
- deoplete - code completion framework
- deoplete-clang - c/c++ completion
- deoplete/jedi - python completion

## Necessary Programs
- [NeoVim](https://github.com/neovim/neovim)

## TODOS
- add plugins for usability
- missing code completion for: 
  - java
  - js
  - go
- add more c, c++, python, latex, markdown specifications
- improve overall setup


