set nocompatible
set ts=4
set sts=4
set sw=4
set ai
"set ci
"set si
set et
set noic
set ruler
set shiftround
set backspace=indent,eol,start
set hlsearch
"set sta
set nu

"disable all visualbell/beep
set vb t_vb=

filetype plugin on
filetype plugin indent on

"Ctags tag file paths
set tags=./tags,tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags

"Auto Completion Option - open popup
set completeopt=menuone,menu,longest,preview
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"Move window use C-j/k/lh/l
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

"Buffer switch use C-TAB
noremap <C-TAB>     <ESC>:bn<CR>
noremap <C-S-TAB>   <ESC>:bp<CR>

nnoremap <F2> :vimgrep <C-R><C-W> **/*.c **/*.h **/*.cpp <Bar> cw <CR><C-W><C-J>
nnoremap <F3> :vimgrep /<C-R><C-W>/ **/*.c **/*.h **/*.cpp <Bar> cw <CR><C-W><C-J>

" Copy Function Declaration from a header file into the implementation file.
" Usage> Press F5 on header file. then Press F6 on source(impl) file.
" Referenced from http://vim.wikia.com/
nmap <F5> "lYml[[kw"cye'l
nmap <F6> ma:let @n=@/<CR>"lp==:s/\<virtual\>/\/\*&\*\//e<CR>:s/\<static\>/\/\*&\*\//e<CR>:s/\s*=\s*0\s*//e<CR>:s/(.\{-}\zs=\s*[^,)]\{-1,}\>\ze\(\*\/\)\@!.*)/\/\*&\*\//e<CR>:s/(.\{-}\zs=\s*[^,)]\{-1,}\>\ze\(\*\/\)\@!.*)/\/\*&\*\//e<CR>:s/(.\{-}\zs=\s*[^,)]\{-1,}\>\ze\(\*\/\)\@!.*)/\/\*&\*\//e<CR>:let @/=@n<CR>'ajf(b"cPa::<Esc>f;s<CR>{<CR>}<CR><Esc>kk

" folding...
map <F7> [{v]}zf
map <F8> zo

nnoremap <F10> :sts <C-R><C-W><CR>
nnoremap <F11> <C-]>
nnoremap <F12> <C-t>

"noremap <C-[> <C-t>

set fenc=utf-8
set fencs=ucs-bom,utf-8,euc-kr,cp949
set encoding=utf-8
set listchars=extends:>,precedes:<

if has("gui_running") && has("win32")
    "gVim for Windows
    set encoding=cp949
    set langmenu=cp949
    set viminfo="nc:/apps/Vim/_viminfo"
    colorscheme desert
    set bg=dark
    set clipboard=unnamed
    set guifont=MonacoKR:h9
    set guioptions=grLt
    winsize 120 40
elseif has("win32unix")
    "vim on CYGWIN
    set encoding=cp949
    set langmenu=cp949
    set viminfo="~/.viminfo"
    set bg=dark
elseif has("gui_running") && has("mac")
    "Macvim
    set bg=light
    set guioptions=grLt
    set guifont=Monaco:h11
    set clipboard=unnamed
    "colorscheme rennlight
    set bg=light
    winsize 120 40
else
    "Terminal/Console
    set bg=dark
endif

syntax on

" configuration: FuzzyFinder
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp|class|pyc|orig)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

map <Leader>ff <ESC>:FufFile **/<CR>
map <Leader>fb <ESC>:FufBuffer<CR>

" for python indentation
map <Leader>ts <ESC>:%s/\t/    /g<CR>

" Custom script - if you need to make private environment each machine...
if filereadable("~/.vim/vimrc-custom")
    source ~/.vim/vimrc-custom
endif

