set rtp+=~/.vim/bundle/vundle/ 
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'taglist.vim'
Bundle 'The-NERD-tree'                 
Bundle 'The-NERD-Commenter'         
Bundle 'ctrlp.vim'                 
Bundle 'AutoClose'                
Bundle 'Valloric/YouCompleteMe'  
Bundle 'honza/vim-snippets'     
Bundle 'Lokaltog/vim-easymotion'

" For airline"
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='simple'
let g:airline_powerline_fonts = 1 

Bundle 'fholgado/minibufexpl.vim'
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0

map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>

Bundle 'majutsushi/tagbar'
"nmap <Leader>tb :TagbarToggle<CR>      "
let g:tagbar_ctags_bin='ctags'          "ctags
let g:tagbar_width=30                   "
map <F3> :Tagbar<CR>
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "

Bundle 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

