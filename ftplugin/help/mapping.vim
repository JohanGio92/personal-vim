function! s:Help(type) abort
    execute "normal! i" . a:type . "something" . a:type
    execute "normal! /something" . "\<cr>"
    execute "normal! viw"
endfunction

function! Tag() abort
    call <SID>Help("*")
endfunction

function! Link() abort
    call <SID>Help("|")
endfunction

nnoremap <buffer> <leader>tg :call Tag<C-V>()<cr> 
nnoremap <buffer> <leader>ln :call Link<C-V>()<cr> 
