set t_Co=256
syntax enable
colorscheme elflord
highlight LineNr ctermfg=gray

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
