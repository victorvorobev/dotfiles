" global preferences "
set nocompatible
set nu
set t_Co=256
set mouse=a 
set termencoding=utf-8 
set clipboard=unnamedplus
set clipboard=unnamed
set undofile      

"indention
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"highlighting
syntax on
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set relativenumber
set hlsearch

filetype off
filetype plugin on
filetype plugin indent on

colorscheme torte

" vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

"ctags/cscope
source ~/.vim/cscope_maps.vim
set tags=./tags;../tags;/
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

"vim-airline

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" This allows buffers to be hidden if you've modified a buffer.
set hidden

" To open a new empty buffer
" This replaces :tabnew 
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>bl :ls<CR>