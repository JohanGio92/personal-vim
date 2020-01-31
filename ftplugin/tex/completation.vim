let s:matches = ["a4paper", "letterpaper", "twoside", "oneside" , "landscape"]

function! CompleteEvent() abort
    let l:linea = getline('.')
    let l:palabraImcompleta = col('.') - 1
    let l:comienzoDeLaPabra = ObtenerComienzoDeLaPalabra(copy(l:palabraImcompleta), l:linea)
    let l:base = linea[l:comienzoDeLaPabra:l:palabraImcompleta]
    let l:resultado = AddMatch(l:base)
    call complete(l:comienzoDeLaPabra + 1, l:resultado)
    return ""
endfunction

function! ObtenerComienzoDeLaPalabra(palabraImcompleta, linea) abort
    let l:palabraImcompleta = a:palabraImcompleta
    while ((l:palabraImcompleta > 0) && (a:linea[l:palabraImcompleta-1] =~? '\a'))
	let l:palabraImcompleta -= 1
    endwhile
    return l:palabraImcompleta
endfunction

function! AddMatch(base) abort
    let l:resultado = []
  
    for l:match in s:matches
	if(l:match =~? a:base)	
	    call add(l:resultado, {
			\ 'icase': 1,
			\ 'dup': 1,
			\ 'word': l:match,
			\ 'abbr': l:match,
			\ 'menu': 'event',
			\ })
	endif
    endfor

    return l:resultado
endfunction

inoremap <C-E> <C-R>=CompleteEvent()<cr>
