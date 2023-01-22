#!/usr/bin/env bash

echo "Updating the following language servers:"
echo "    -pyright (Python)"
echo "    -bash-language-server (Bash)"
echo "    -vscode-langservers-extracted (html, css, json, markdown)"

read -r -p "Proceed [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    # pyright
    echo "Installing pylsp"
    eval "$(pyenv init -)"
    pyenv shell py3nvim
    pip install --upgrade "python-lsp-server[all]"
    pyenv shell --unset

    # bashl
    echo "Installing bash-language-server"
    sudo npm install --location=global bash-language-server

    # json, html, css, markdown
    echo "Installing vscode-langservers-extracted"
    sudo npm install --location=global vscode-langservers-extracted

    echo "Updating rust-tools"
    rustup update

else
    echo "Quitting..."
fi

