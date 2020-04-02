"{{{ Class VisualMode
let s:visualmode = 
			\ {
			\ "linea": 0,
			\ "columna": 0,
			\ "cursor": [],
			\ }

function! s:visualmode.initializeVisualMode(linea, columna) abort
	call self.setLinea(a:linea)
	call self.setColumna(a:columna)
	let self.cursor = getpos("'<")
	return self
endfunction

function! s:visualmode.setLinea(linea) dict
	let self.linea = a:linea
endfunction

function! s:visualmode.setColumna(columna) dict
	let self.columna = a:columna
endfunction

function! s:visualmode.getLinea() dict
	return self.linea
endfunction

function! s:visualmode.getColumna() dict
	return self.columna
endfunction

function! s:visualmode.nextLinea() abort
	call self.setLinea(self.getLinea() + 1)
endfunction

function! s:visualmode.previousLinea() abort
	call self.setLinea(self.getLinea() - 1)
endfunction

function! s:visualmode.nextColumna() abort
	call self.setColumna(self.getColumna() + 1)
endfunction

function! s:visualmode.previousColumna() abort
	call self.setColumna(self.getColumna() - 1)
endfunction

function! s:visualmode.moverCursor() abort
	call cursor(self.getLinea(), self.getColumna())
endfunction 

function! s:visualmode.restaurarPosicion() abort
	call setpos('.', self.cursor)
endfunction
"}}}

"{{{ Class Visual Block
let s:visualblock = 
			\ {
			\ "super" : v:null,
			\ "startleft" : v:null,
			\ "startright": v:null,
			\ "endleft": v:null,
			\ "endright" : v:null
			\ }

function! s:visualblock.initializeBlock() abort "{{{
	let self.startleft = copy(s:visualmode.initializeVisualMode(line("'<"), col("'<")))
	let self.startright = copy(s:visualmode.initializeVisualMode(line("'<"), col("'>")))
	let self.endleft = copy(s:visualmode.initializeVisualMode(line("'>"), col("'<")))
	let self.endright = copy(s:visualmode.initializeVisualMode(line("'>"), col("'>")))
	return self
endfunction "}}}

function! s:visualblock.putMatchPair(matchpair) abort "{{{
	for i in range(1, self.sizeVertical())
		call self.startleft.moverCursor()
		execute "normal v"
		call self.startright.moverCursor()
		execute "normal " . g:mapleader . a:matchpair
		call self.startleft.nextLinea()
		call self.startright.nextLinea()
	endfor
endfunction "}}}

function! s:visualblock.expandir() abort "{{{
	call self.escalar("kh", "jl")
endfunction "}}}

function! s:visualblock.reducir() abort "{{{
	call self.escalar("jl", "kh")
endfunction "}}}

function! s:visualblock.escalar(positionx, positiony) abort "{{{
	for i in range(1, v:count1)
		call self.startleft.moverCursor()
		execute "normal! " . a:positionx . "m<"
		call self.endright.moverCursor()
		execute "normal! " . a:positiony . "m>"
	endfor
	normal gv
endfunction "}}}

function! s:visualblock.sizeVertical() abort "{{{
	return line("'>") - line("'<") + 1
endfunction "}}}

function! s:visualblock.sizeHorizontal() abort "{{{
	return col("'>") - col("'<") + 1
endfunction "}}}

function! s:visualblock.seleccionar() abort "{{{
	call self.startleft.moverCursor()
	execute "normal! \<C-V>"
	call self.endright.moverCursor()
endfunction "}}}

function! s:visualblock.cortarDerecha() abort
	call self.startright.moverCursor()
	execute "normal! \<C-V>"
	call self.endright.moverCursor()
	execute "normal! d"
	call self.startleft.moverCursor()
	execute "normal! [p"
endfunction

function! s:visualblock.cortarIzquierda() abort
	call self.startleft.moverCursor()
	execute "normal! \<C-V>"
	call self.endleft.moverCursor()
	execute "normal! d"
	call self.startright.moverCursor()
	execute "normal! [p"
endfunction

function! s:visualblock.haciaLaIzquierda() abort
	call self.startleft.previousColumna()
	""echo "startright linea: "self.startright.getLinea()
	""echo "startright columna: "self.startright.getColumna()
	call self.endleft.previousColumna()
	""echo "endright linea: "self.endright.getLinea()
	""echo "endright columna: "self.endright.getColumna()
	call self.cortarIzquierda()
	call self.startright.previousColumna()
	call self.endright.previousColumna()
	call self.seleccionar()
endfunction

function! s:visualblock.haciaLaDerecha() abort
	call self.startright.nextColumna()
	""echo "startright linea: "self.startright.getLinea()
	""echo "startright columna: "self.startright.getColumna()
	call self.endright.nextColumna()
	""echo "endright linea: "self.endright.getLinea()
	""echo "endright columna: "self.endright.getColumna()
	call self.cortarDerecha()
	call self.startleft.nextColumna()
	call self.endleft.nextColumna()
	call self.seleccionar()
endfunction

"}}}

function! s:VisualPut(matchpair) abort "{{{

	let l:startVisual = copy(s:visualmode.initializeVisualMode(line("'<"), col("'<")))
	let l:endVisual = copy(s:visualmode.initializeVisualMode(line("'>"), col("'>")))

	for i in range(1, v:count1)
		call l:startVisual.moverCursor()
		execute "normal v"
		call l:endVisual.moverCursor()
		execute "normal " . g:mapleader . a:matchpair
		call l:startVisual.nextLinea()
		call l:endVisual.nextLinea()
	endfor

	call l:startVisual.restaurarPosicion()
endfunction

function! s:VisualBlockPut(matchpair) abort 
	let l:visualblock = copy(s:visualblock.initializeBlock())
	call l:visualblock.putMatchPair(a:matchpair)
endfunction

function! s:VisualBlockExpandir() abort
	let l:visualblock = copy(s:visualblock.initializeBlock())
	call l:visualblock.expandir()
endfunction

function! s:VisualBlockReducir() abort
	let l:visualblock = copy(s:visualblock.initializeBlock())
	call l:visualblock.reducir()
endfunction

function! s:TransponerHaciaLaDerecha() abort
	let l:visualblock = copy(s:visualblock.initializeBlock())
	call l:visualblock.haciaLaDerecha()
endfunction

function! s:TransponerHaciaLaIzquierda() abort
	let l:visualblock = copy(s:visualblock.initializeBlock())
	call l:visualblock.haciaLaIzquierda()
endfunction

function! s:VisualRegex() abort
	let l:startVisual = copy(s:visualmode.initializeVisualMode(line("'<"), col("'<")))
	let l:endVisual = copy(s:visualmode.initializeVisualMode(line("'>"), col("'>")))
	call l:startVisual.moverCursor()
	execute "normal " . visualmode() 
	call l:endVisual.moverCursor()
	execute 'normal "zy/' 
	call histadd("/", '\C' . @z)
	execute "normal /\<up>" 
endfunction
"}}}

vnoremap <leader><leader>' :<C-U>call <SID>VisualPut("'")<cr>
vnoremap <leader><leader>" :<C-U>call <SID>VisualPut('"')<cr>
vnoremap <leader><leader>[ :<C-U>call <SID>VisualPut("[")<cr>
vnoremap <leader><leader>{ :<C-U>call <SID>VisualPut("{")<cr>
vnoremap <leader><leader>< :<C-U>call <SID>VisualPut("<")<cr>
vnoremap <leader><leader>( :<C-U>call <SID>VisualPut("(")<cr>

vnoremap ++ :<C-U>call <SID>VisualBlockExpandir()<cr>
vnoremap -- :<C-U>call <SID>VisualBlockReducir()<cr>

vnoremap <localleader><localleader>' :<C-U>call <SID>VisualBlockPut("'")<cr>
vnoremap <localleader><localleader>" :<C-U>call <SID>VisualBlockPut('"')<cr>
vnoremap <localleader><localleader>[ :<C-U>call <SID>VisualBlockPut('[')<cr>
vnoremap <localleader><localleader>{ :<C-U>call <SID>VisualBlockPut('{')<cr>
vnoremap <localleader><localleader>< :<C-U>call <SID>VisualBlockPut('<')<cr>
vnoremap <localleader><localleader>( :<C-U>call <SID>VisualBlockPut("(")<cr>

vnoremap <leader><enter> :<C-U>call <SID>VisualRegex()<cr>
vnoremap <A-right> :<C-U>call <SID>TransponerHaciaLaDerecha()<cr>
vnoremap <A-left> :<C-U>call <SID>TransponerHaciaLaIzquierda()<cr>
vnoremap <space>m /<up><cr>N
vnoremap <space>M ?<up><cr>n
