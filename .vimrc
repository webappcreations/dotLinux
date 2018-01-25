" ________   _       _                                          __
" /_  __/ /  (_)__   (_)__   ___ __    _____ ___ ___  __ _  ___ / /
"  / / / _ \/ (_-<  / (_-<  / _ `/ |/|/ / -_|_-</ _ \/  ' \/ -_)_/ 
" /_/ /_//_/_/___/ /_/___/  \_,_/|__,__/\__/___/\___/_/_/_/\__(_)  
                                                                 
" Q = run line in bash!
" figlet -f smslant This is awesome!

set nocompatible

" Manage plugins using vim-plug
filetype off

set pastetoggle=<F3>
"set clipboard=unnamedplus

" save file as sudo user!
command! -nargs=0 Sw w !sudo tee % > /dev/null
"adding quit...
"command! -nargs=0 Swq wq !sudo tee % > /dev/null




"clever undo solution
imap uu <esc>ui

" adding vims capability to save with Ctrl-s 
let mapleader = ","
nnoremap <leader>, :w<CR>
imap ww <esc>:w<CR>i<right>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>i<right>
" this doesn't work:
" imap <C-S> <esc>:w<CR>

"visual linewrapping keeps indentation alive:
set breakindent
"alternative:
:set showbreak=.

syntax on
colorscheme hipster

set relativenumber
set number

imap jj <ESC>

nnoremap K <PageUp>
nnoremap J <PageDown>
nnoremap H <HOME>
nnoremap L <END>


set showcmd

"Use Tab and Shift Tab to rotate through buffers in normal mode:
map <Tab> :bn<CR>
map <S-Tab> :bp<CR>


set wildchar=<Tab> wildmenu wildmode=full

"in insert mode use Tab and Shift-Tab to indent or unindet with the cursor being anywhere
inoremap <Tab> <C-t>
inoremap <S-tab> <C-d>

" NOTES:
"------- 

" normal: o = add new line after
" normal: O = add new line before
" insert: C-o o = add new line after 
" insert: C-o O = add new line before


" reload ~/.vimrc inside of vim
" :so ~/.vimrc

"buffers: http://vim.wikia.com/wiki/Easier_buffer_switching




"BY OTHERS:
"-------------------------
" by spf13:
    set mouse=a                 " Automatically enable mouse usage
    set mousehide               " Hide the mouse cursor while typing
    scriptencoding utf-8

    if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
    endif




"--------------------------
" New testing stuff
     

" leader key
let mapleader=","


" Spacing
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start

" Switch next/previous buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>


map Q !!bash<cr>

" Disable arrow keys
" Dinoremap <Left>  <nop>
" Dinoremap <Right> <nop>
" Dinoremap <Up>    <nop>
" Dinoremap <Down>  <nop>
nnoremap <Left>  <nop>
nnoremap <Right> <nop>
nnoremap <Up>    <nop>
nnoremap <Down>  <nop>
" Cursor line
" set cursorline
" highlight CursorLine ctermbg=237 guibg=#2c588c
" autocmd InsertEnter * highlight CursorLine ctermbg=240 guibg=#4c4846
" autocmd InsertLeave * highlight CursorLine ctermbg=237 guibg=#3c3836

" Default Colors for CursorLine
" highlight  CursorLine ctermbg=Yellow ctermfg=None

" Change Color when entering Insert Mode
" autocmd InsertEnter * highlight  CursorLine ctermbg=Green ctermfg=Red

" Revert Color to default when leaving Insert Mode
" autocmd InsertLeave * highlight  CursorLine ctermbg=Yellow ctermfg=None




