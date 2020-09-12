set nocompatible
filetype plugin indent on
syntax enable

augroup my_filetypes
    autocmd!
    autocmd FileType markdown setlocal textwidth=80 formatoptions+=a spell 
augroup END

autocmd FileType gitcommit setlocal spell

set shortmess+=I
set mouse=a
set clipboard=unnamedplus
inoremap jk <Esc>
nnoremap <C-L> :nohl<CR><C-L>
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
set nowrap
set whichwrap=b,s,<,>,h,l,[,]
set number
set ignorecase
set clipboard=unnamed
set nojoinspaces
set confirm
set linebreak
set hidden
set dictionary+=/usr/share/dict/words

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

nnoremap <CR> o<Esc>
nnoremap <BS> ddk

call plug#begin("$XDG_DATA_HOME/nvim/plugged")
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'
Plug 'scrooloose/nerdtree'
Plug 'ap/vim-buftabline'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/limelight.vim'
Plug 'dense-analysis/ale'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'mboughaba/i3config.vim'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'wakatime/vim-wakatime'
call plug#end()

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

map <Leader> <Plug>(easymotion-prefix)

let NERDTreeShowHidden=1
let NERDTreeMouseMode=2
let NERDTreeMinimalUI=1

let g:bufExplorerDefaultHelp=0

let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 20000
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'wra'

let g:ale_fixers = { 'sh': ['shfmt'] }

colorscheme seoul256
