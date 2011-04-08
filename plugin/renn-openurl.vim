function! OpenURL()
    let s:uri = escape(matchstr(getline("."), '[a-z]*:\/\/[^ >,;:]*'), "#?&;|%")
    echo s:uri
    if s:uri != ""
        exec ":silent !open \"".s:uri."\""
    else
        echo "Not found URL in this line..."
    endif
endfunction

map <Leader>o :call OpenURL()<CR>
