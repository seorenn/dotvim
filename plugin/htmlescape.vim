function HtmlEscape()
    silent s/&/\&amp;/eg
    silent s/</\&lt;/eg
    silent s/>/\&gt;/eg
endfunction

"function HtmlUnEscape()
"    silent s/&lt;/</eg
"    silent s/&gt;/>/eg
"    silent s/&amp;/\&/eg
"endfunction

"map <silent> <m-h> :call HtmlEscape()<CR>
"map <silent> <m-u> :call HtmlUnEscape()<CR>
map <Leader>he <ESC>:call HtmlEscape()<CR>
