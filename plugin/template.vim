let g:template_path = "~/.vim/bundle/personal-vim/template/"

function! Templates(fileName, pattern) "{{{
    let l:extension = expand("%:e") . '/'
    let l:complete_path = g:template_path . l:extension .a:fileName
    echo l:complete_path
    let l:previous = ".-1"

    silent execute l:previous . ":read " . l:complete_path 
    execute ":normal! zR"
    execute ":normal! " . '/' . a:pattern . "\<cr>"
    "normal viw
endfunction "}}}

function! CompleteFyleType(findstart, base) abort "{{{
    let $fileSystem = $TEMPLATE . "/" . expand('%:e') . "/"
    if a:findstart
	let line = getline('.')
	let start = col('.') - 1
	while start > 0 && line[start - 1] =~ '\k'
	    let start -= 1
	endwhile
	return start
    else
	let resutlMatch = []
	for aMatch in split(system("ls $fileSystem"), '\n')
	    if aMatch =~ a:base
		call add(resutlMatch, aMatch)
	    endif
	endfor
	return resutlMatch
    endif
endfunction "}}}

set omnifunc=template#templator#construir
