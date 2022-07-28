#!/usr/bin/env bash

echo "This script is going to setup the following things:"
echo "    - dein neovim plugin manager"
echo "    - powerline fonts"

read -r -p "Setup neovim config [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    # Installing dein
    cd dein || exit 1
    curl --proto "https" --tlsv1.3 https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.config/nvim/dein
    rm installer.sh

    cd || exit
    # Installing powerline fonts
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts || exit 1
    ./install.sh
    cd ..
    rm -rf fonts
else
    echo "Quitting..."
fi
