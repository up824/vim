set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'morganp/vim-SystemVerilog'
Plugin 'majutsushi/tagbar'
Plugin 'raimondi/delimitmate'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ervandew/supertab'
"Plugin 'AutoComplPop' 
"Plugin 'godlygeek/tabular'
"Plugin 'kien/rainbow_parentheses.vim'
"Plugin 'kien/ctrlp.vim'
"Plugin 'lokaltog/vim-powerline'
"Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'valloric/youcompleteme'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""" syntax 
"syntax on
"syntax enable

""" Font 
"set guifont=Menlo\ for\ Powerline\ Regular\ 14
set guifont=Menlo\ 14

""" Text
set encoding=utf-8
set ignorecase      

""" Color Scheme 
colorscheme molokai

""" UI Config 
set number	" show line number 
set cursorline  " highlight current line
set showmatch   " highlight matching [{()}]
set wildmenu	" visual autocomplete for command menu

""" Space & Tab 
set tabstop=4		    " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set expandtab		    " tabs are spaces
set backspace=eol,start,indent
set smarttab

""" Searching 
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space>:nohlsearch<CR>     " turn off serch highlight

""" Folding  
set foldenable              " enable folding
set foldlevelstart=10       " open most folds by default
set foldnestmax=10          " 10 nested fold max
nnoremap <space> za         " space open/closes folds
set foldmethod=indent       " fold based on indent levl

""" GUI
if has("gui_running")       " if GUI 
        set guioptions-=m       " remove menu bar 
        set guioptions-=T       " remove toolbar
        set guioptions-=L       " remove left-hand scroll bar
        set guioptions-=r       " remove right-hand scroll bar
        set guioptions-=b       " remove right-hand scroll bar
endif
""" Plugin Options 
"let g:NERDTreeDirArrows=0  " NERDtree Arrow off
let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:indent_guides_enable_on_vim_startup=1
" close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
nmap <F9> : TagbarToggle<CR>        " F9 to toggle Tagbar
nmap <F8> : NERDTreeToggle<CR>      " F8 to toggle NERDTree
nmap <F7> : RainbowParenthesesToggle<CR>      " F8 to toggle NERDTree
" rainbow_parenthesis.vim
"let g:rbpt_colorpairs = [
"    \ ['brown',       'RoyalBlue3'],
"    \ ['Darkblue',    'SeaGreen3'],
"    \ ['darkgray',    'DarkOrchid3'],
"    \ ['darkgreen',   'firebrick3'],
"    \ ['darkcyan',    'RoyalBlue3'],
"    \ ['darkred',     'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['brown',       'firebrick3'],
"    \ ['gray',        'RoyalBlue3'],
"    \ ['black',       'SeaGreen3'],
"    \ ['darkmagenta', 'DarkOrchid3'],
"    \ ['Darkblue',    'firebrick3'],
"    \ ['darkgreen',   'RoyalBlue3'],
"    \ ['darkcyan',    'SeaGreen3'],
"    \ ['darkred',     'DarkOrchid3'],
"    \ ['red',         'firebrick3'],
"    \ ]
"let g:rbpt_max = 16
"let g:rbpt_loadcmd_toggle = 0
"nmap <leader>bb : Tab /=<CR>
set laststatus=2    " always show statusline
let g:airline_powerline_fonts=1
set t_Co=256
let g:airline_theme='badwolf'
"""show matching bracrts
set showmatch
"set completeopt=menuone,preview

