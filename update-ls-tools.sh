#!/usr/bin/env bash

echo "Updating the following language servers:"
echo "    -pyright (Python)"
echo "    -bash-language-server (Bash)"

read -r -p "Proceed [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    # pyright
    echo "Installing pyright"
    sudo npm install --location=global pyright

    # bashl
    echo "Installing bash-language-server"
    sudo npm install --location=global bash-language-server

else
    echo "Quitting..."
fi

