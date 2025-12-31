set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'dracula/vim', { 'name': 'dracula' }
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
colorscheme dracula
highlight LineNr ctermfg=gray

" exclude clipboard access to prevent X11 usage
set clipboard=exclude:.*

set mouse=""
set nowrap
set autoindent smartindent

set ruler number
set incsearch hlsearch

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set fileencodings=utf8,big5,gbk,latin1

map <F2> :w<CR>:!clear ; echo "\033[0;31m[Compiling]\033[0m" ; clang++ % --pedantic -Wall -O2 -std=c++14 -o %:r && echo "\033[0;31m[Compiled]\n[Running]\033[0m" && ./%:r && echo "\033[0;31m[Terminated]\033[0m"<CR>
map <F4> :w<CR>:!clear ; ./%<CR>
