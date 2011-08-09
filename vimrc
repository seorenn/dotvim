set nocompatible
set ts=2
set sts=2
set sw=2
set ai
"set ci
"set si
set et
set ic
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
set tags+=../../../../../tags
set tags+=../../../../../../tags
set tags+=../../../../../../../tags
set tags+=../../../../../../../../tags
"set tags+=~/Devel/vendor/three20/src/tags

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
"set list
"set listchars=extends:>,precedes:<,tab:�\ ,eol:�
set listchars=extends:>,precedes:<

"Vim 7.3 or higher version support OS X clipboard in console"
set clipboard=unnamed

" {{{ Autocompletion using the TAB key
" This function determines, wether we are on the start of the line text (then tab indents) or
" if we want to try autocompletion
"function! InsertTabWrapper()
"    let col = col('.') - 1
"    if !col || getline('.')[col - 1] !~ '\k'
"        return "\<TAB>"
"    else
"        if pumvisible()
"            return "\<C-N>"
"        else
"            return "\<C-N>\<C-P>"
"        end
"    endif
"endfunction
" Remap the tab key to select action with InsertTabWrapper
"inoremap <tab> <c-r>=InsertTabWrapper()<cr>
"inoremap <expr> <CR> pumvisible() ? "<C-Y><CR>" : "<CR>"

" }}} Autocompletion using the TAB key

if has("gui_running")
    " settings for GUI
    set bg=dark
    set guioptions=grLt
    winsize 120 40
    set noimd
    set imi=1
    set ims=-1
    "set novb
    "set bg=light
    set bg=light
    colorscheme solarized

    if has("win32")
        set viminfo="nc:/apps/Vim/_viminfo"
        set encoding=cp949
        set langmenu=cp949
        set guifont=MonacoKR:h9
    elseif has("mac")
        set guifont=Monaco:h12
    else
        set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
    endif
else
    " settings for Terminal
    set bg=dark
    " settings for scrolling-performance
    "set ttyfast
    "set ttyscroll=3
    "set lazyredraw
endif

syntax on

" configuration: FuzzyFinder
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp|class|pyc|orig)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'

map <Leader>ff <ESC>:FufFile **/<CR>
map <Leader>fb <ESC>:FufBuffer<CR>

" for python indentation
map <Leader>ts <ESC>:%s/\t/    /g<CR>

" open Dropbox notes
map <Leader>dn <ESC>:e ~/Dropbox/notes<CR>

" shortcuts for MRU
map <Leader>mr <ESC>:MRU<CR>

" shortcuts for NERDTree
"map <Leader>nt <ESC>:NERDTree<CR>

map <Leader>oo <ESC>:call OpenUrl()<CR>

" Custom script - if you need to make private environment each machine...
if filereadable("~/.vim/vimrc-custom")
    source ~/.vim/vimrc-custom
endif

