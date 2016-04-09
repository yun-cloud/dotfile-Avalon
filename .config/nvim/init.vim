call plug#begin()
    Plug 'shougo/unite.vim'
    Plug 'shougo/vimproc.vim'
    Plug 'shougo/vimfiler.vim'
    Plug 'shougo/vimshell.vim'
    Plug 'shougo/deoplete.nvim'
    Plug 'Shougo/neosnippet'
    Plug 'Shougo/neosnippet-snippets'
    Plug 'scrooloose/syntastic'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'justinmk/vim-syntax-extra'
    Plug 'chriskempson/base16-vim'
call plug#end()
" === Unite ===
" === VimFiler ===
let g:vimfiler_as_default_explorer=1
call vimfiler#custom#profile('default', 'context', {
        \ 'explorer' : 1,
        \ 'winwidth' : 30,
        \ 'winminwidth' : 30,
        \ 'auto_expand': 1,
        \ 'status' : 1,
        \ 'split' : 1,
        \ 'force_hide' : 1,
        \ })
" === deoplete ===
let g:deoplete#enable_at_startup=1
" === VimShell ===
let g:vimshell_user_prompt='fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt="$ "
" === NeoSnippet ===
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:NeoSnippet#snippets_directory = '~/.config/nvim/plugged/neosnippet-snippets/neosnippets'
" === Syntastic ===
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
" === base16-vim ===
let base16colorspace=256
" === vim-airline ===
let g:airline_theme = 'dark'
let g:airline_powerline_fonts=1
let g:airline#extension#syntastic#enabled = 1
" === vim-airline-theme ===
let g:airline_theme="dark"
" ===========================================

filetype on

set wrap
set number
set cursorline
set noshowmode
set showmatch
set showcmd
set smartcase
set ignorecase
set smartindent
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set mouse=a
set cmdheight=1
"set encoding=utf-8
set clipboard+=unnamedplus
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%% 

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set background=dark
colo base16-google

nnoremap <Space> <Nop>
let mapleader = "\<Space>"

nnoremap ; :
nnoremap <Leader>f :VimFilerExplorer<CR>
nnoremap <Leader>s :VimShell<CR>

" cancel arrow key
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>
inoremap <UP> <NOP>
inoremap <DOWN> <NOP>
inoremap <LEFT> <NOP>
inoremap <RIGHT> <NOP>

noremap <CR> :nohlsearch<CR>

function! ClipboardYank()
    call system('xsel -i -selection clipboard', @@)
endfunction
function! ClipboardPaste()
    let @@ = system('xsel -o -selection clipboard')
endfunctio

vnoremap <silent> y y:call ClipboardYank()<CR>
vnoremap <silent> d d:call ClipboardYank()<CR>
nnoremap <silent> p :call ClipboardPaste()<CR>p
