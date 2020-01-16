function! template#function#main() abort
    call template#templator#construir("main", "main")
endfunction

function! template#function#sumar() abort
    call template#templator#construir("sumar", "sumar")
endfunction

function! template#function#restar() abort
    call template#templator#construir("restar", "restar")
endfunction

function! template#function#multiplicar() abort
    call template#templator#construir("multiplicar", "multiplicar")
endfunction

function! template#function#dividir() abort
    call template#templator#construir("dividir", "dividir")
endfunction

function! template#function#estaVacio() abort
    call template#templator#construir("estaVacio", '\%\(\$1\|something\)') 
endfunction
