function! map#normal#espaciador#espaciarArriba()
    for i in range(0, v:count)
	let l:posicionGuardada = getpos(".")
	execute "normal! " . "O" . "\<Esc>"
	let l:posicionGuardada[1] += 1
	call setpos('.', l:posicionGuardada)
    endfor
endfunction

function! map#normal#espaciador#espaciarAbajo()
    for i in range(0, v:count)
	let l:posicionGuardada = getpos(".")
	execute "normal! " . "o" . "\<Esc>"
	call setpos('.', l:posicionGuardada)
    endfor
endfunction

function! map#normal#espaciador#espaciarDerecha()
    for i in range(0, v:count)
	execute "normal! a\<space>\<Esc>h"
    endfor
endfunction

function! map#normal#espaciador#espaciarIzquierda()
    for i in range(0, v:count)
	execute "normal! i\<space>\<Esc>l"
    endfor
endfunction

function! map#normal#espaciador#removerEspaciadoDeArriba() 
    for i in range(0, v:count)
	let l:posicionGuardada = getpos(".")
	execute "normal! " . "kdd" . "\<Esc>"
	let l:posicionGuardada[1] -= 1
	call setpos('.', l:posicionGuardada)
    endfor
	let l:posicionGuardada[2] -= 1
	call setpos('.', l:posicionGuardada)
endfunction

function! map#normal#espaciador#removerEspaciadoDeAbajo()
    for i in range(0, v:count)
	let l:posicionGuardada = getpos(".")
	execute 'normal! ' . 'jdd' . "\<Esc>"
	call setpos('.', l:posicionGuardada)
    endfor
	let l:posicionGuardada[2] -= 1
	call setpos('.', l:posicionGuardada)
endfunction

function! map#normal#espaciador#agnadirNumeroDeLinea()
    let l:count = v:count
    let l:posicionGuardada = getpos(".")
    execute "normal! " . l:count . "ggo" . "\<Esc>"
    if l:count  < l:posicionGuardada[1]
	let l:posicionGuardada[1] += 1
    endif	
    call setpos('.', l:posicionGuardada)
endfunction

function! map#normal#espaciador#removerNumeroDeLinea()
    let l:count = v:count
    let l:posicionGuardada = getpos(".")
    execute "normal! " . l:count . "ggdd" . "\<Esc>"
    if l:count < l:posicionGuardada[1]
        let l:posicionGuardada[1] -= 1
    endif	
    call setpos('.', l:posicionGuardada)
endfunction
