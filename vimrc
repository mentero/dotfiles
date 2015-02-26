set nocompatible
filetype off

set t_Co=256
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required bundle
Plugin 'gmarik/vundle'

" Custom bundles
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-vividchalk'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vim-scripts/matchit.zip'
Plugin 'tomtom/tcomment_vim'
Plugin 'rking/ag.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'majutsushi/tagbar'
Plugin 'elixir-lang/vim-elixir'
Plugin 'rizzatti/dash.vim'
" Colorschemes
Plugin 'morhetz/gruvbox'
Plugin 'tomasr/molokai'
Plugin 'jpo/vim-railscasts-theme'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'mikewest/vimroom'
call vundle#end()

" Fix for italics
if !has("gui_running")
   let g:gruvbox_italic=0
endif

syntax on
set mouse=a

set background=dark
set bg=dark
set encoding=utf8
set guifont=Terminess\ Powerline\ 8
set ffs=unix,dos,mac
colorscheme gruvbox

let mapleader=','
set number
set colorcolumn=80
set hlsearch
set incsearch

" Start NERDTree
map <silent> <C-n> :NERDTreeTabsToggle<CR>
" Enter vimroom
nnoremap <silent> <leader>mz <Plug>VimroomToggle

set foldmethod=syntax
set foldlevelstart=10

set winheight=30
set winwidth=80

nmap <leader>l :set list!<CR>
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader>D <Plug>DashGlobalSearch

" Jump between buffers
map <silent> <C-H> <C-W>h
map <silent> <C-J> <C-W>j
map <silent> <C-K> <C-W>k
map <silent> <C-L> <C-W>l

" resize current buffer by +/- 5
nnoremap <silent> <S-H> :vertical resize -5<cr>
nnoremap <silent> <S-J> :resize +5<cr>
nnoremap <silent> <S-K> :resize -5<cr>
nnoremap <silent> <S-L> :vertical resize +5<cr>

" Open CtrlP in buffer mode
map <C-b> :CtrlPBuffer<CR>

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" Some tab shit
map <silent> <F3> :tabprevious<CR>
map <silent> <F4> :tabnext<CR>
map <silent> <F5> :tabnew<CR>
map <silent> <S-F5> :tabclose<CR>
nmap <F7> :TagbarToggle<CR>

" nnoremap <C-S-o> :CtrlPTag<CR>
nnoremap <C-o> :TagbarToggle<CR>

" Shortcut to editing this file
map <silent> <S-F12> :e ~/.vimrc<CR>

set pastetoggle=<F8>

filetype plugin indent on
set listchars=tab:⇥\ ,eol:↵
set ts=2 sts=2 sw=2 expandtab

if has("autocmd")
  filetype on
  autocmd FileType ruby   setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType scss setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType coffee setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
endif

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let g:airline_theme = 'powerlineish'
let g:airline_powerline_fonts = 1

" Fix for alt-key in terminals
let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50
