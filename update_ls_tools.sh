#!/usr/bin/sh

echo "Updating the following language servers with npm:"
echo "\t-pyright (Python)"
echo "\t-bash-language-server (Bash)"
echo "\t-rust-analyzer (Rust)"

read -p "Proceed [y/n]? " ANSWER

if [ "$ANSWER" = "y" ] || [ "$ANSWER" = "Y" ]; then
    sudo npm install -g pyright
    sudo npm install -g bash-language-server
    mkdir -p ~/.local/bin
    curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    chmod +x ~/.local/bin/rust-analyzer
else
    echo "Quitting..."
fi

