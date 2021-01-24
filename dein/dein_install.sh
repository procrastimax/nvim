#!/bin/sh

echo "Downloading Dein installer script..."
curl -v https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

sh ./installer.sh ~/.config/nvim/dein

#echo "Installing latexmk..."
#mkdir ~/programs
#wget mirrors.ctan.org/support/latexmk.zip
#mv latexmk.zip ~/programs
#cd ~/programs
#unzip latexmk.zip
#cd latexmk
#chmod +x latexmk.pl
#mv latexmk.pl latexmk
#rm latexmk.zip
#cd ..
#echo 'PATH=$PATH:~/programs/latexmk' >> ~/.bash_profile
