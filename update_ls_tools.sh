#!/usr/bin/sh

echo "Updating the following language servers with npm:"
echo "\t-pyright (Python)"
echo "\t-bash-language-server (Bash)"

read -p "Proceed [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    sudo npm i -g npm
    sudo npm i -g pyright
    sudo npm i -g bash-language-server
else
    echo "Quitting..."
fi

