" adding dein installation directory into runtimepath
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " --------------------
  " Add new plugins here
  " --------------------
  call dein#add('srcery-colors/srcery-vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
