#!/bin/sh
echo "Install vim configurations..."

mkdir -p ~/.vim
echo "cd to .vim directory"
cd ~/.vim

echo "backup origin vimrc..."
if [ -f "$HOME/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.`date +%Y%m%d`
fi


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/cationly/vim.git

echo "create new vimrc..."
ln -s ~/.vim/vimrc ~/.vimrc

#git submodule init
#git submodule update

vim +PluginInstall +qall
