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


Appendix
- To solve the conflict between UltiSnip and YouCompleteMe
http://guoqiao.me/post/2014/1030-vim-autocomplete-for-django

" if you use Vundle, load plugins:
Bundle 'ervandew/supertab'
Bundle 'Valloric/YouCompleteMe'
Bundle 'SirVer/ultisnips'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
