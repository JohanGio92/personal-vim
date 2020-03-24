""let g:visualmode = 
""			\ {
""			\ "linea": 0,
""			\ "columna": 0,
""			\ "cursor": [],
""			\ }
""
""function! g:visualmode.initializeVisualMode(linea, columna) abort
""	call self.setLinea(a:linea)
""	call self.setColumna(a:columna)
""	let self.cursor = getpos("'<")
""	return self
""endfunction
""
""function! g:visualmode.setLinea(linea) dict
""	let self.linea = a:linea
""endfunction
""
""function! g:visualmode.setColumna(columna) dict
""	let self.columna = a:columna
""endfunction
""
""function! g:visualmode.getLinea() dict
""	return self.linea
""endfunction
""
""function! g:visualmode.getColumna() dict
""	return self.columna
""endfunction
""
""function! g:visualmode.nextLinea() abort
""	call self.setLinea(self.getLinea() + 1)
""endfunction
""
""function! g:visualmode.nextColumna() abort
""	call self.setColumna(self.getColumna() + 1)
""endfunction
""
""function! g:visualmode.moverCursor() abort
""	call cursor(self.getLinea(), self.getColumna())
""endfunction 
""
""function! g:visualmode.restaurarPosicion() abort
""	call setpos('.', self.cursor)
""endfunction
""
