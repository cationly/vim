-1. Install powerline font
1.1 Download font
  git clone https://github.com/powerline/fonts.git --depth=1
1.2 cd fonts; ./install.sh

2. make term to be colorful, add this lines into .bashrc

if [ -e /usr/share/terminfo/x/xterm-256color ]; then 
    export TERM='xterm-256color'
else
    export TERM='xterm-color'
fi


-2. clone my setting of vimrc
  git clone https://github.com/cationly/vim.git

-3. download vundle
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
