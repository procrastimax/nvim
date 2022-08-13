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

    if command -v pyenv &> /dev/null; then
        echo "pyenv is installed proceeding with proper pynvim setup"
        # keep in mind to update this for newer python versions
        eval "$(pyenv init -)"
        eval "$(pyenv virtualenv-init -)"

        pyenv install 3.10.6
        pyenv virtualenv 3.10.6 py3nvim
        pyenv shell py3nvim
        pyenv exec pip install pynvim
    fi
else
    echo "Quitting..."
fi
