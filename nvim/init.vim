set nocompatible
filetype plugin indent on
syntax enable

let mapleader = " "

set autoread
autocmd FocusGained,BufEnter * checktime

autocmd BufRead */i3/config setfiletype i3config
autocmd BufRead */polybar/config setfiletype dosini

set noswapfile
set expandtab
set noshowmode

set shortmess+=I
set mouse=a
set clipboard=unnamedplus
set whichwrap=b,s,<,>,h,l,[,]
set breakindent
set showbreak=↪\ 
set number
set ignorecase
set nojoinspaces
set confirm
set linebreak
" Default for nvim 0.6+
" set hidden
set dictionary+=/usr/share/dict/words
set shiftwidth=4
set tabstop=4
set lazyredraw

inoremap jk <Esc>
" Default for nvim 0.6+
" nnoremap <silent><C-L> :nohl<CR><C-L>
nnoremap j gj
nnoremap k gk

nnoremap <down> gj
nnoremap <up> gk
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <Leader>o o<Esc>k
nnoremap <Leader>O O<Esc>j
nnoremap <BS> ddk

nnoremap <c-w> :bw<cr>

let g:plug_window = 'enew'

call plug#begin("$XDG_DATA_HOME/nvim/plugged")
Plug 'junegunn/seoul256.vim'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
Plug 'ap/vim-buftabline'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'wakatime/vim-wakatime'
Plug 'kamykn/spelunker.vim'
Plug 'kamykn/popup-menu.nvim'
Plug 'itchyny/lightline.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
call plug#end()

map <Leader> <Plug>(easymotion-prefix)
map <Leader>f <Plug>(easymotion-s2)
let g:EasyMotion_smartcase = 1

let g:bufExplorerDefaultHelp = 0

colorscheme seoul256

" Fix indentation when using bracketed paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

let g:ctrlp_extensions = get(g:, 'ctrlp_extensions', []) + ['spelunker']

let g:lightline = {
\ 'colorscheme': 'seoul256',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'readonly', 'filename', 'modified' ] ]
\ }
\ }

nmap <c-p> :Files<cr>
nmap <c-k>m :Filetypes<cr>

autocmd! BufWinEnter * if &l:buftype ==# 'help' | wincmd T | endif
