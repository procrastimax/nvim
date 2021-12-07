#!/usr/bin/sh

echo "This script is going to setup the following things:"
echo "\t- dein neovim plugin manager"
echo "\t- powerline fonts"

read -p "Setup neovim config [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    # Installing dein
    cd dein
    curl --proto "https" --tlsv1.3 https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
    sh ./installer.sh ~/.config/nvim/dein
    rm installer.sh

    cd
    # Installing powerline fonts
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    cd ..
    rm -rf fonts
else
    echo "Quitting..."
fi
