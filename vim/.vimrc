set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Required bundle
Bundle 'gmarik/vundle'

" Custom bundles
Bundle 'tpope/vim-sensible'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-surround'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/matchit.zip'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-endwise'
syntax on
let mapleader=','
set number
map <silent> <C-n> :NERDTreeFocus<CR>

set hlsearch
set incsearch

set t_Co=256
set background=dark
set encoding=utf8
set guifont=Terminal\ 8
set ffs=unix,dos,mac

nmap <leader>l :set list!<CR>
set listchars=tab:⇥\ ,eol:↵
set ts=2 sts=2 sw=2 expandtab

filetype plugin indent on
colorscheme molokai

