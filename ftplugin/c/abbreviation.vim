function! C_extension()
    execute "normal! i#include <stdio.h>"
    execute "normal! o#include <stdlib.h>"
    execute "normal \<C-down>\<C-down>jj"
    call Main()
endfunction

iabbrev <buffer> io #include <C-V><stdio.h><esc>0
iabbrev <buffer> #i #include
iabbrev <buffer> #d #define
iabbre <silent> <buffer> main <Esc>:call template#function#main<C-V>()<cr> 
iabbrev <silent> <buffer> sumar <Esc>:call template#function#sumar<C-V>()<cr> 
iabbrev <silent> <buffer> restar <Esc>:call template#function#restar<C-V>()<cr> 
iabbrev <silent> <buffer> multiplicar <Esc>:call template#function#multiplicar<C-V>()<cr> 
iabbrev <silent> <buffer> dividir <Esc>:call template#function#dividir<C-V>()<cr> 
iabbrev <silent> <buffer> while  <Esc>:call template#keyword#While<C-V>()<cr>
iabbrev <silent> <buffer> for  <Esc>:call template#keyword#For<C-V>()<cr>
