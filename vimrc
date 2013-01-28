set nocompatible

let $GIT_SSL_NO_VERIFY = 'true'

filetype on     
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" tricks: vundle managing vundle ;)
Bundle 'gmarik/vundle'

" my bundles -----
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'neocomplcache'
Bundle 'snipMate'
Bundle 'The-NERD-tree'
Bundle 'Markdown'
Bundle 'jQuery'
Bundle 'pyflakes.vim'
Bundle 'JavaScript-Indent'
Bundle 'coffee.vim'
Bundle 'vim-coffee-script'
Bundle 'The-NERD-Commenter'
Bundle 'Solarized'
" end of my bundles -----

set backspace=indent,eol,start
set ts=4
set sts=4
set sw=4
set ai  "autoindent
set cindent
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,white,do,for,switch,case
"set si "smartindent
set et
set ic  "ignorecase
set smartcase
set smarttab
set shiftround
set backspace=indent,eol,start
set hlsearch
"set sta
set nobackup
set incsearch
set nowrapscan
set nu
set backspace=eol,start,indent
set laststatus=2
set ruler
set showcmd
set foldenable
set foldmethod=marker
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

set splitbelow
set splitright

"disable all visualbell/beep
set vb t_vb=

"if has("autocmd")
"    filetype on
"    filetype plugin on
"    filetype plugin indent on
"endif

filetype plugin indent on

""""" Tab Sizes for Each Source Codes
"autocmd FileType javascript setlocal ts=2 sts=2 sw=2
"autocmd FileType html setlocal ts=2 sts=2 sw=2
"autocmd FileType js setlocal ts=2 sts=2 sw=2
"autocmd FileType python setlocal ts=4 sts=4 sw=4

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

""""" Settings for neocomplecache """""

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

""""" End of settings for neocomplecache """""

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
    let g:solarized_termcolors = 256
    let g:solarized_termtrans = 1
    set bg=dark
    colorscheme solarized
    "colorscheme Tomorrow-Night-Bright
    "colorscheme desert
    " settings for scrolling-performance
    "set ttyfast
    "set ttyscroll=3
    "set lazyredraw
endif

syntax on

" Toggle Paste <-> No Paste Mode
map <Leader>pp :set invpaste<CR>

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

" NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.o$']
map <Leader>nt <ESC>:NERDTree<CR>

map <Leader>oo <ESC>:call OpenUrl()<CR>

" Processors for File Saving "
autocmd BufWritePost,FileWritePost *.coffee silent !coffee -c <afile>

" Custom script - if you need to make private environment each machine...
if filereadable("~/.vim/vimrc-custom")
    source ~/.vim/vimrc-custom
endif

