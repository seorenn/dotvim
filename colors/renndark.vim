" Vim color file
" Maintainer: [Seorenn] <hirenn@gmail.com>
" Last Change: 2009.11.20 
" URL: http://seorenn.blogspot.com/

" Visual sample command:
"       :so $VIMRUNTIME/syntax/hitest.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

" your pick:
set background=light    " if your terminal color is darker, change it
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="renndark"

"hi Normal guifg=white guibg=black
hi Normal ctermfg=white

" A good way to see what your colorscheme does is to follow this procedure:
" :w 
" :so % 
"
" Then to see what the current setting is use the highlight command.  
" For example,
" 	:hi Cursor
" gives
"	Cursor         xxx guifg=bg guibg=fg 
 	

"hi Cursor guifg=white guibg=#9fb6cd ctermfg=darkgreen ctermbg=darkblue	
"hi CursorIM	
"hi Directory guifg=green ctermfg=green	
"hi DiffAdd		
"hi DiffChange	
"hi DiffDelete	
"hi DiffText	
"hi Error    ctermfg=red
"hi ErrorMsg guibg=#004a8a guifg=white ctermfg=white ctermbg=darkblue	
"hi ErrorMsg ctermfg=lightred
"hi VertSplit guibg=#04ae6c guifg=#0056a0	
"hi VertSplit guibg=white    guifg=#666666	
"hi Folded       guibg=#0a62c4 guifg=#60abff ctermfg=lightgrey ctermbg=blue		
"hi Folded       guibg=#dddddd   guifg=black ctermfg=lightgrey ctermbg=blue		
"hi FoldColumn   guibg=#0a62c4 guifg=#60abff ctermfg=lightgrey ctermbg=blue	
"hi FoldColumn   guibg=#dddddd   guifg=black ctermfg=lightgrey ctermbg=blue	
"hi IncSearch guifg=black    guibg=#ffdc34 ctermfg=white ctermbg=lightred gui=underline	
"hi LineNr guifg=#3669e8 ctermfg=lightblue ctermbg=white		
"hi ModeMsg guifg=orange guibg=white ctermfg=lightred ctermbg=white		
"hi MoreMsg guifg=orange guibg=white ctermfg=lightred ctermbg=white		
"hi NonText gui=bold		
"hi Question guifg=white guibg=orange ctermfg=white ctermbg=lightred	
"hi Search   gui=none    guifg=black guibg=#f0e68c   ctermfg=white ctermbg=lightred
"hi SpecialKey	

" Status line (bottom bar of each window)
" current window
"hi StatusLine   gui=bold    guifg=black     guibg=#888888   ctermfg=darkgreen ctermbg=white
" other window
"hi StatusLineNC gui=none    guifg=#444444   guibg=#888888   ctermfg=darkgreen ctermbg=white	
"hi Title guifg=#02233f gui=bold	
"hi Visual guifg=darkblue guibg=white ctermfg=darkblue ctermbg=white		
"hi Visual guifg=white   guibg=#637b8b  ctermfg=darkblue ctermbg=white		
"hi VisualNOS	
"hi WarningMsg guifg=white guibg=orange ctermfg=white ctermbg=lightblue	
"hi WildMenu guifg=#75dc34 guibg=white ctermfg=lightgreen ctermbg=white	
"hi Menu		
"hi Scrollbar	
"hi Tooltip		

" syntax highlighting groups
hi Comment  ctermfg=black
"hi Constant     gui=bold    guifg=#ffd398   ctermfg=grey ctermbg=white	
"hi String       gui=bold    guifg=#43cd80   ctermfg=grey ctermbg=white	
"hi Identifier   gui=bold    guifg=white ctermfg=white
"hi Statement    gui=bold    guifg=#cdb79e   ctermfg=lightgrey ctermbg=white	
"hi PreProc      gui=none    guifg=#ff4040 ctermfg=darkblue ctermbg=white

hi MatchParen  ctermfg=black ctermbg=blue
"hi Type         gui=bold    guifg=#98cd9b   ctermfg=darkgreen ctermbg=white		
"hi Underlined guifg=#00d0e8 ctermbg=blue	
"hi Ignore guifg=black ctermfg=black ctermbg=white		
"hi Todo guibg=lightblue guifg=white ctermbg=lightblue ctermfg=white		

"hi Special      gui=underline   guifg=#98fb98   ctermfg=white ctermbg=blue	

" MiniBufExplorer colors
"hi MBENormal            gui=none    guifg=black     
"hi MBEChanged           gui=none    guifg=#dbdb70
"hi MBEVisibleNormal     gui=bold    guifg=white
"hi MBEVisibleChanged    gui=bold    guifg=#dbdb70
