#!/usr/bin/sh

echo "Updating the following language servers with npm:"
echo "\t-pyright (Python)"
echo "\t-bash-language-server (Bash)"

read -p "Proceed [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    sudo npm install -g pyright
    sudo npm install -g bash-language-server
else
    echo "Quitting..."
fi

