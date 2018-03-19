" ________   _       _                                          __
" /_  __/ /  (_)__   (_)__   ___ __    _____ ___ ___  __ _  ___ / /
"  / / / _ \/ (_-<  / (_-<  / _ `/ |/|/ / -_|_-</ _ \/  ' \/ -_)_/ 
" /_/ /_//_/_/___/ /_/___/  \_,_/|__,__/\__/___/\___/_/_/_/\__(_)  
                                                                 
" Q = run line in bash!
" figlet -f smslant This is awesome!

set nocompatible

" Manage plugins using vim-plug

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" nice vim statusbar - there is another plugin for themes available
Plugin 'vim-airline/vim-airline'

"https://github.com/jparise/vim-graphql
Plugin 'jparise/vim-graphql'


"
Plugin 'leafgarland/typescript-vim'
Plugin 'flazz/vim-colorschemes'


"Plugin 'vim-scripts/Emmet.vim'
"Plugin 'vim-scripts/WebAPI.vim'
"let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/dotLinux/vim/snippets.json')), "\n"))



"ultisnips
" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" React code snippets
Plugin 'epilande/vim-react-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"




"import a plugin from wikia (http://vim.wikia.com/wiki/Switch_color_schemes)
"to preview the colorschemes:
source ~/dotLinux/vim/plugins/setcolors.vim



"Web Development:
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'




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




"START VIM AT SAME CURSORPOS:
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END




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
" colorscheme hipster "doesnt work yet


"Because of: Plugin 'flazz/vim-colorschemes':
"colorscheme 0x7A69_dark "great dark theme... nice bright comments
"colorscheme molokai "pretty and dark. The comments are a little dark grey 
"colorscheme vimbrant
colorscheme Tomorrow-Night-Eighties "nice medium orange light dark grey background


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
inoremap <Tab> <C-t>:
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



"GENERAL NICE COMMANDS TO REMEMBER:
"-------------------------
" c2w = change two words ;-)
" in visual mode: U = uppercase & u = lowercase
" 


"Browse Files:
"-------------------------
" netrw is included into vim and a file browser like NERDTree. 
 

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20


"AUTOSTART NETRW:
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

"netrw_browse_split - options: 
"1 - open files in a new horizontal split
"2 - open files in a new vertical split
"3 - open files in a new tab
"4 - open in previous window



" Toggle Vexplore with Ctrl-E
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-E> :call ToggleVExplorer()<CR>








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




