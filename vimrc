set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'taglist.vim'
Plugin 'ctrlp.vim'                 
Plugin 'AutoClose'                
Plugin 'honza/vim-snippets'     
Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/a.vim'
Plugin 'SirVer/ultisnips'


"Plugin 'The-NERD-tree'                 
"Plugin 'The-NERD-Commenter'         

" Color schemes"
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'  
call vundle#end()

"===============================================================================
let mapleader=','
let g:mapleader=","
map <silent> <leader>s :source ~/.vimrc<cr>
map <silent> <leader>e :e ~/.vimrc<cr>
"autocmd! bufwritepost .vimrc !source ~/.vimrc
"
filetype plugin indent on 
syntax enable
syntax on

" Color Fonts Encoding"
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
colorscheme molokai
"set guifont=YaHei\ Consolas\ Hybrid\ 14 
set ambiwidth=double
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set cul
set nowrap
set guioptions+=b

" Cursor, Line number
set cursorcolumn
set cursorline
set laststatus=2 
set number
set noshowmode
" backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l"

set tabstop=4
set shiftwidth=4
set softtabstop=4

set expandtab
set smarttab
set autochdir
set autoindent
set smartindent
set ruler
set ignorecase
set hls
set foldmethod=indent
set showcmd

" backup
set nobackup
set nowb
set noswapfile
"
" " search
set hlsearch
set incsearch

" Split window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
	  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set sessionoptions="blank,buffers,globals,localoptions,tabpages,sesdir,folds,help,options,resize,winpos,winsize"
"set undodir=~/.undo_history/
"set undofile
map <leader>ss :mksession! my.vim<cr> :wviminfo! my.viminfo<cr>
map <leader>rs :source my.vim<cr> :rviminfo my.viminfo<cr>

" Ultisnips"
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"-------------------------
" Clang Completion
" Complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" Enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"  
inoremap <expr> <Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" :"\<PageDown>"
inoremap <expr> <PageUp> pumvisible() ? "\<PageUp>\<C-p>\<C-n>" :"\<PageUp>"

" SuperTab option for context aware completion
let g:SuperTabDefaultCompletionType = "context"
" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1

   
"===============================================================================
" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1 

"nerdtree"
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinPos='left'      "File explorer position"
let NERDTreeWinSize=32          "Width of window"
let NERDTreeShowHidden=1        "Show hidden files"
let NERDTreeMinimalUI=1         "remove redundent info"
let NERDTreeAutoDeleteBuffer=1  "remove buffer"

" minibufexpl
map <F3> :MBEToggle<CR>
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0
map <F11> :MBEbp<CR>
map <F12> :MBEbn<CR>

" tagbar
map <F4> :TagbarToggle<CR>
nmap <Leader>tb :TagbarToggle<CR>      "
let g:tagbar_ctags_bin='ctags'          "ctags
let g:tagbar_width=30                   "
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  "

"Indent Guide
nmap <Leader>ig :IndentGuidesToggle<CR>
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors=1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=red ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
"===============================================================================

func PYTHON()
    exec "!clear && python %"
endfunc
func CPP()
    exec "!clear && make "
endfunc 

" For C
autocmd FileType c setlocal et sta sw=4 sts=4
autocmd FileType c setlocal foldmethod=syntax

" For C++
autocmd FileType cpp setlocal et sta sw=4 sts=4
autocmd FileType cpp setlocal foldmethod=syntax
autocmd FileType cpp map <F7> : call CPP() <CR>
nmap <Leader>m :wa<CR>:make<CR><CR>:cw<CR>


" For CUDA
au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.cuh set filetype=cuda
autocmd FileType cuda setlocal et sta sw=4 sts=4
autocmd FileType cuda setlocal foldmethod=syntax

" For Python
"autocmd BufNewFile,BufRead *.py setlocal
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
"autocmd FileType python noremap <F7> :! chmod 700 % && ./% <cr>
autocmd FileType python map <F7> : call PYTHON() <CR>
autocmd FileType python set foldlevel=0
autocmd FileType python set ruler
autocmd FileType python set showcmd

"pydiction 1.2 python auto complete
let g:pydiction_location = '/home/liyan/.vim/bundle/pydiction/complete-dict' 
let g:pydiction_menu_height = 10 

"
"
" For Fortran
"
" For HTML
autocmd FileType html setlocal et sta sw=4 sts=4
autocmd FileType html setlocal foldmethod=indent



" => Python section
"-------------------------------------------------------------------------------
""let python_highlight_all = 1
""au FileType python syn keyword pythonDecorator True None False self
""au BufNewFile,BufRead *.jinja set syntax=htmljinja
""au BufNewFile,BufRead *.mako set ft=mako
""au FileType python map <buffer> F :set foldmethod=indent<cr>
""au FileType python inoremap <buffer> $r return 
""au FileType python inoremap <buffer> $i import 
""au FileType python inoremap <buffer> $p print 
""au FileType python inoremap <buffer> $f # --- <esc>a
""au FileType python map <buffer> <leader>1 /class 
""au FileType python map <buffer> <leader>2 /def 
""au FileType python map <buffer> <leader>C ?class 
""au FileType python map <buffer> <leader>D ?def 
""au FileType python set cindent
""au FileType python set cinkeys-=0#
""au FileType python set indentkeys-=0#
"
