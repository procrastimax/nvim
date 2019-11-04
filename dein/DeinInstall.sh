#!/bin/sh

echo "Create folder for programming c,go"
mkdir -p ~/code/go/src
mkdir ~/code/c

echo "Set GOPATH variable"
echo "DONT FORGET TO MAKE IT PERMANENT IN A BASH PROFILE!"
export GOPATH=~/code/go

curl -v https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

sh ./installer.sh ~/.config/nvim/dein
