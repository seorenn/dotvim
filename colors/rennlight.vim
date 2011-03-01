" Vim color file
" Maintainer: [Seorenn] <hirenn@gmail.com>
" Last Change: 2009.11.20 
" URL: http://renn.blogspot.com/

" Visual sample command:
"       :so $VIMRUNTIME/syntax/hitest.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="rennlight"

hi Normal guifg=black guibg=white

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	

hi Cursor guifg=white guibg=black
"hi CursorIM	
hi Directory guifg=blue
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
hi ErrorMsg guibg=#004a8a guifg=white ctermfg=white ctermbg=darkblue	
"hi VertSplit guibg=#04ae6c guifg=#0056a0	
hi VertSplit guibg=white    guifg=#666666	
"hi Folded       guibg=#0a62c4 guifg=#60abff ctermfg=lightgrey ctermbg=blue		
hi Folded       guibg=#dddddd   guifg=black ctermfg=lightgrey ctermbg=blue		
"hi FoldColumn   guibg=#0a62c4 guifg=#60abff ctermfg=lightgrey ctermbg=blue	
hi FoldColumn   guibg=#dddddd   guifg=black ctermfg=lightgrey ctermbg=blue	
hi IncSearch guifg=black    guibg=#ffdc34 ctermfg=white ctermbg=lightred gui=underline	
hi LineNr guifg=#3669e8 ctermfg=lightblue ctermbg=white		
hi ModeMsg guifg=orange guibg=white ctermfg=lightred ctermbg=white		
hi MoreMsg guifg=orange guibg=white ctermfg=lightred ctermbg=white		
hi NonText gui=none
hi Question guifg=white guibg=orange ctermfg=white ctermbg=lightred	
hi Search   gui=none    guifg=black guibg=#f0e68c   ctermfg=white ctermbg=lightred
"hi SpecialKey	

" Status line (bottom bar of each window)
" current window
hi StatusLine   guifg=black     guibg=#888888   ctermfg=darkgreen ctermbg=white
" other window
hi StatusLineNC gui=none    guifg=#444444   guibg=#888888   ctermfg=darkgreen ctermbg=white	
hi Title guifg=#02233f
"hi Visual guifg=darkblue guibg=white ctermfg=darkblue ctermbg=white		
hi Visual guifg=white   guibg=#637b8b  ctermfg=darkblue ctermbg=white		
"hi VisualNOS	
hi WarningMsg guifg=white guibg=orange ctermfg=white ctermbg=lightblue	
hi WildMenu guifg=#75dc34 guibg=white ctermfg=lightgreen ctermbg=white	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment      guifg=#787878
hi Constant     guifg=#8b4513
hi String       guifg=#008080
hi Identifier   guifg=#b9062f
hi Statement    gui=none guifg=#d8631f
hi PreProc      guifg=#ff4040 ctermfg=darkblue ctermbg=white

hi MatchParen   gui=bold guifg=red guibg=#ffdcdc
hi Type         gui=none guifg=#006400
hi Underlined guifg=#00d0e8 ctermbg=blue	
hi Ignore guifg=black ctermfg=black ctermbg=white		
hi Todo guibg=lightblue guifg=white ctermbg=lightblue ctermfg=white		

hi Special      gui=none guifg=#9400d3

" MiniBufExplorer colors
hi MBENormal            guifg=black     
hi MBEChanged           guifg=#dbdb70
hi MBEVisibleNormal     guifg=white
hi MBEVisibleChanged    guifg=#dbdb70
