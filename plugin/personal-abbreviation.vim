if exists("g:personal_abbreviation")
	finish
endif

let g:personal_abbreviation = 1

abbrev poq, por otro lado
abbrev pow, por otro lado
abbrev poh, por otro lado
abbrev pol, por otro lado

function! SwapLine(sign) abort 
	for i in range(1, v:count1)
		let l:currentLine = getline(".")
		execute 'let l:lineNextNumber = line(".") ' . a:sign . ' 1'
		let nextLine = getline(l:lineNextNumber)

		call setline(".", nextLine)
		call setline(l:lineNextNumber, l:currentLine)

		let column = col('.')
		call cursor(l:lineNextNumber, column)
	endfor
endfunction

function! SwapLines(sign) abort 
	let l:count = v:count1
	call SwapVisualLines(a:sign)
endfunction

function! SwapVisualLines(sign) abort
	for i in range(1, v:count1)

		let column = col('.')
		let l:currentLine = getline("'<", "'>")
		let l:visualMark = (a:sign ==# '+') ? "'>" : "'<"
		execute "let l:lineNextNumber = line(\"" . l:visualMark . "\") " . a:sign . " 1"
		let nextLine = getline(l:lineNextNumber)

		let l:visualMark = (a:sign ==# '+') ? "'<" : "'>"
		call setline(l:visualMark, nextLine)
		execute "call setline(line(\"'<\") " . a:sign . " 1, l:currentLine)"
		execute "call cursor(line(\"'<\") " . a:sign . " 1, column)"

		if a:sign ==# '+'
			call MoveVisualMark("'>", a:sign)
			call MoveVisualMark("'<", a:sign)
		else
			call MoveVisualMark("'<", a:sign)
			call MoveVisualMark("'>", a:sign)
		endif

	endfor
	execute "normal! `<" . visualmode() . "`>0"
endfunction

function! MoveVisualMark(mark, sign) abort
	let l:save_a_mark = getpos(a:mark)
	execute "let l:save_a_mark[1] " . a:sign . "= 1"
	call setpos(a:mark, l:save_a_mark)
endfunction

nnoremap <A-up> :<C-U>call SwapLine('-')<cr>
nnoremap <A-down> :<C-U>call SwapLine('+')<cr>

vnoremap <A-down> :<C-U>call SwapLines('+')<cr>
vnoremap <A-up> :<C-U>call SwapLines('-')<cr>

vnoremap <leader><C-a> :<C-U>call Consecutivas()<cr>
vnoremap <leader><C-w> :<C-U>call Consecutiva()<cr>

function! Consecutivas() abort
	let l:rangoNumeral = line("'>") - line("'<")
	for i in range(1, l:rangoNumeral)
		call cursor(line("'<") + i, col("'<"))
		execute "normal!" . i . "\<C-A>"
	endfor
endfunction

function! Consecutiva() abort

	let l:rangoNumeral = line("'>") - line("'<") 
	let l:startVisualLine = line("'<")
	let l:startVisualColumn = col("'>")

	let @z = input("Pon Un Numero o Una Letra: ")
	call cursor(l:startVisualLine, l:startVisualColumn)
	let l:length = ((len(@z) - 1) ==# 0) ? '' : (len(@z) - 1) . 'h'
	execute "normal! " . '"zpv' . l:length . '"zy'

	let l:length = ''

	for l:start in range(1, l:rangoNumeral)
		call cursor(l:startVisualLine + l:start, l:startVisualColumn)
		let l:length = ((len(@z + 1) - 1) ==# 0) ? '' : (len(@z + 1) - 1) . 'h'
		execute "normal! " . '"zp' . "\<C-A>" . "v" . l:length . '"zy'
		if @z == 'z'
			let @z = 'a'
		endif
	endfor

endfunction

