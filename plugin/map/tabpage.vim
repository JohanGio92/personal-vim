let g:tabpager = 
			\ {
			\ "pestagna": v:null
			\ }

function! g:tabpager.primerPestagna() abort
	tabrewind
endfunction

function! g:tabpager.ultimaPestagna() abort
	tablast
endfunction

function! g:tabpager.moverPestgna(signo, count) abort
	execute "tabmove " . a:signo . a:count
endfunction

function! g:tabpager.irPestagna(count) abort
	tablast
	for i in range(1, a:count)
		tabnext
	endfor
endfunction

function s:IrPestagna() abort
	call g:tabpager.irPestagna(v:count1)
endfunction

function! s:MoverPestagna(signo) abort
    call g:tabpager.moverPestgna(a:signo, v:count1)
endfunction

nnoremap q :<C-U>call <SID>IrPestagna()<cr><Esc>
nnoremap Q q
nnoremap + :<C-U>call <SID>MoverPestagna('+')<cr><ESC>
nnoremap - :<C-U>call <SID>MoverPestagna('-')<cr><ESC>
