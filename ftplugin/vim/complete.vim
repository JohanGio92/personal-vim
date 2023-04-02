let s:matches = ["BufNewFile",
	    \ "BufAdd",
	    \ "BufCreate",
	    \ "BufDelete",
	    \ "BufEnter",
	    \ "BufFilePost",
	    \ "BufFilePre",
	    \ "BufHidden",
	    \ "BufLeave",
	    \ "BufNew",
	    \ "BufNewFile",
	    \ "BufRead",
	    \ "BufReadPost",
	    \ "BufReadCmd",
	    \ "BufReadPre",
	    \ "BufUnload",
	    \ "BufWinEnter",
	    \ "BufWinLeave",
	    \ "BufWipeout",
	    \ "BufWrite",
	    \ "BufWritePre",
	    \ "BufWriteCmd",
	    \ "BufWritePost"]

function! CompleteEvent() abort
    let l:linea = getline('.')
    let l:palabraImcompleta = col('.') - 1
	
	echomsg "linea size: " len(l:linea)
	echomsg "colum: " l:palabraImcompleta 

    let l:comienzoDeLaPabra = ObtenerComienzoDeLaPalabra(copy(l:palabraImcompleta), l:linea)
	
	if len(l:linea) == l:palabraImcompleta
		let l:base = linea[l:comienzoDeLaPabra:l:palabraImcompleta]
	else
		let l:base = linea[l:comienzoDeLaPabra:l:palabraImcompleta - 1]
	endif

	echomsg l:base
    let l:resultado = s:AddMatch(l:base)
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

function! s:AddMatch(base) abort
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
