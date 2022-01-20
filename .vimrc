let $PYTHONPATH='/usr/lib/python3.8/site-packages'
set rtp+=/home/gordi/.local/lib/python3.8/site-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=2
set noshowmode
set t_Co=256
colo elflord
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set foldcolumn=2
syntax on
set noerrorbells
set novisualbell
set mouse=a
set ignorecase
set smartcase
set hlsearch
set incsearch
set encoding=utf8
set ffs=unix,dos,mac
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tomasr/molokai'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'frazrepo/vim-rainbow'
Plug 'altercation/vim-colors-solarized'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'myusuf3/numbers.vim'
Plug 'junegunn/vim-emoji'
Plug 'terryma/vim-smooth-scroll'
Plug 'https://github.com/ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'jupyter-vim/jupyter-vim'
call plug#end()
nmap <F6> :NERDTreeToggle<CR>

let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
