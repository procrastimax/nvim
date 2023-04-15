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

    if command -v pyenv &> /dev/null; then
        echo "pyenv is installed proceeding with proper pynvim setup"
        # keep in mind to update this for newer python versions
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"

        pyenv install 3.11.1
        pyenv virtualenv 3.11.1 py3nvim
        pyenv shell py3nvim
        pyenv exec pip install wheel
        pyenv exec pip install pynvim
    fi


else
    echo "Quitting..."
fi
