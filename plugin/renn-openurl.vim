function! OpenURL()
    let s:uri = escape(matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*'), "#?&;|%")
    if s:uri != ""
        "let s:uriopen = "\"" . (expand("%:p")) . "\""
        echo s:uri
        if has("mac")
            exec ":silent !open \"".s:uri."\""
        endif
        " TODO: add code for opening browser from each OS
    else
        echo "Not found URL in this line..."
    endif
endfunction

map <Leader>oo :call OpenURL()<CR>
