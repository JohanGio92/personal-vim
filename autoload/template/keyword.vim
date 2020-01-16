function! template#keyword#function() abort
    call template#templator#construir("function", "something")
endfunction 

function! template#keyword#if() abort
    call template#templator#construir("if", "something")
endfunction 

function! template#keyword#else() abort
    call template#templator#construir("else", "something")
endfunction 

function! template#keyword#elseIf() abort
    call template#templator#construir("elseif", "something")
endfunction 

function! template#keyword#for() abort
    call template#templator#construir("for", "something")
endfunction 

function! template#keyword#while() abort
    call template#templator#construir("while", "something")
endfunction 

function! template#keyword#augroup() abort
    call template#templator#construir("augroup", '\%\(nameAugroup\|event\|pattern\|command\)')
endfunction
