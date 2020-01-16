let g:template_path = "~/.vim/bundle/personal-vim/template/"

function! Templates(fileName, pattern)
    let l:extension = expand("%:e") . '/'
    let l:complete_path = g:template_path . l:extension .a:fileName
    echo l:complete_path
    let l:previous = ".-1"

    silent execute l:previous . ":read " . l:complete_path 
    echom "Autocomplete Successfull"
    execute ":normal! zR"
    execute ":normal! " . '/' . a:pattern . "\<cr>"
    normal viw
endfunction 
