""let g:visualblock = 
""			\ {
""			\ "super" : v:null,
""			\ "startleft" : v:null,
""			\ "startright": v:null,
""			\ "endleft": v:null,
""			\ "endright" : v:null
""			\ }
""
""function! g:visualblock.initializeBlock() abort
""	let self.startleft = copy(g:visual.initializeVisual(line("'<"), col("'<")))
""	let self.startright = copy(g:visual.initializeVisual(line("'<"), col("'>")))
""	let self.endleft = copy(g:visual.initializeVisual(line("'>"), col("'<")))
""	let self.endright = copy(g:visual.initializeVisual(line("'>"), col("'>")))
""	return self
""endfunction
""
""function! g:visualblock.putMatchPair(matchpair) abort
""	for i in range(1, self.sizeVertical())
""		call self.startleft.moverCursor()
""		execute "normal v"
""		call self.startright.moverCursor()
""		execute "normal " . g:mapleader . a:matchpair
""		call self.startleft.nextLinea()
""		call self.startright.nextLinea()
""	endfor
""endfunction
""
""function! g:visualblock.expandir() abort
""	for i in range(1, len(self.corners))
""	endfor
""endfunction
""
""function! g:visualblock.sizeVertical() abort
""	return line("'>") - line("'<") + 1
""endfunction
""
""function! g:visualblock.sizeHorizontal() abort
""	return col("'>") - col("'<") + 1
""endfunction
""
""let s:visualblock = copy(g:visualblock.initializeBlock())
""
""vnoremap <localleader><localleader>' :<C-U>call <SID>visualblock.putMatchPair("'")<cr>
""vnoremap <localleader><localleader>" :<C-U>call <SID>visualblock.putMatchPair('"')<cr>
""vnoremap <localleader><localleader>[ :<C-U>call <SID>visualblock.putMatchPair('[')<cr>
""vnoremap <localleader><localleader>{ :<C-U>call <SID>visualblock.putMatchPair('{')<cr>
""vnoremap <localleader><localleader>< :<C-U>call <SID>visualblock.putMatchPair('<')<cr>
