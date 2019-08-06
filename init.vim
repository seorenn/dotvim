set nocompatible

filetype on

set fenc=utf-8
set fencs=ucs-bom,utf-8,euc-kr,cp949
set encoding=utf-8
set backspace=indent,eol,start
set ts=4
set sts=4
set sw=4
set ai
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do,for,switch,case
set et
set ic
set smartcase
set smarttab
set shiftround
set backspace=indent,eol,start
set hlsearch
set nobackup
set incsearch
set nowrapscan
set nu
set laststatus=2
set ruler
set showcmd
set foldenable
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag
set splitbelow
set splitright
set vb t_vb=
set listchars=extends:>,precedes:<
set clipboard=unnamed

set bg=dark
syntax on

autocmd FileType c,cpp, python setlocal sw=4 ts=4 sts=4
autocmd FileType javascript,html,css,vue setlocal sw=2 ts=2 sts=2
autocmd BufNewFile,BufRead *.vue,*.ts,*.tsx: set filetype=html
