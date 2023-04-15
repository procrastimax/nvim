#!/usr/bin/env bash

echo "This script is going to setup the following things:"
echo "    - dein neovim plugin manager"
echo "    - powerline fonts"

read -r -p "Setup neovim config [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

    # Installing powerline fonts
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts || exit 1
    ./install.sh
    cd ..
    rm -rf fonts

    pip install pynvim

else
    echo "Quitting..."
fi
