function! Hola() abort
    call Templates("hola-mundo", "hola-mundo") 
endfunction

iabbrev <silent> <buffer> function <Esc>:call template#keyword#function<C-V>()<cr>
iabbrev <silent> <buffer> while  <Esc>:call template#keyword#while<C-V>()<cr>
iabbrev <silent> <buffer> hola  <Esc>:call Hola<C-V>()<cr>
iabbrev <silent> <buffer> sumar  <Esc>:call template#function#sumar<C-V>()<cr>
iabbrev <silent> <buffer> restar  <Esc>:call template#function#restar<C-V>()<cr>
iabbrev <silent> <buffer> multiplicar  <Esc>:call template#function#multiplicar<C-V>()<cr>
iabbrev <silent> <buffer> dividir  <Esc>:call template#function#dividir<C-V>()<cr>
iabbrev <silent> <buffer> estaVacio  <Esc>:call template#function#estaVacio<C-V>()<cr>
