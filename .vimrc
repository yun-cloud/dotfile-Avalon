syntax on

set nocompatible
set nowrap
set number
"set cursorline
set showmode
set showmatch
set smartcase
set ignorecase
set smartindent
set smarttab
set expandtab
set softtabstop=4
set shiftwidth=4
set incsearch
set hlsearch
"set textwidth=80
set mouse=a
set history=1000
set cmdheight=1
set t_Co=256
set backspace=indent,eol,start
set laststatus=2
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%% 
set background=dark

map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

noremap <CR> :nohlsearch<CR>
