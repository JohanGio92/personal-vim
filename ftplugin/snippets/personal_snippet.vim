setlocal softtabstop=4
setlocal nowrap

""nnoremap <localleader>1 i${1:}<left>
""nnoremap <localleader>2 i${2:}<left>
""nnoremap <localleader>3 i${3:}<left>
""nnoremap <localleader>4 i${4:}<left>
""nnoremap <localleader>5 i${5:}<left>
""nnoremap <localleader>6 i${6:}<left>
""nnoremap <localleader>7 i${7:}<left>
""nnoremap <localleader>8 i${8:}<left>
""nnoremap <localleader>9 i${9:}<left>
""
""inoremap <localleader>1 ${1:}<left>
""inoremap <localleader>2 ${2:}<left>
""inoremap <localleader>3 ${3:}<left>
""inoremap <localleader>4 ${4:}<left>
""inoremap <localleader>5 ${5:}<left>
""inoremap <localleader>6 ${6:}<left>
""inoremap <localleader>7 ${7:}<left>
""inoremap <localleader>8 ${8:}<left>
""inoremap <localleader>9 ${9:}<left>

function! PutNumber(numero) abort
	call map#visual#matcherPair#putCurlyBracket()
	execute ':normal i$' . "\<Esc>la" . a:numero
endfunction

function! RightMap(mode, number, key) abort "{{{
	return (a:mode ==# "v") ? ":\<C-U>call PutNumber('" . a:number . ":')\<cr>"
		    \ : a:key . "${" . a:number . ":}" . '<left>'
endfunction "}}}

function! SnippetMap(mode, key) abort "{{{
    for l:number in range(1, 9)
	let l:keymap = a:mode . "noremap " . "\<localleader>" . l:number . " "
	let l:mapAlgorithm =  RightMap(a:mode, l:number, a:key)
	execute l:keymap . l:mapAlgorithm
    endfor
endfunction "}}}

call SnippetMap("v", '')
call SnippetMap("i", '')
call SnippetMap("n", 'i')

""vnoremap <localleader>1 :<C-U>call PutNumber('1:')<cr>
""vnoremap <localleader>2 :<C-U>call PutNumber('2:')<cr>
""vnoremap <localleader>3 :<C-U>call PutNumber('3:')<cr>
""vnoremap <localleader>4 :<C-U>call PutNumber('4:')<cr>
""vnoremap <localleader>5 :<C-U>call PutNumber('5:')<cr>
""vnoremap <localleader>6 :<C-U>call PutNumber('6:')<cr>
""vnoremap <localleader>7 :<C-U>call PutNumber('7:')<cr>
""vnoremap <localleader>8 :<C-U>call PutNumber('8:')<cr>
""vnoremap <localleader>9 :<C-U>call PutNumber('9:')<cr>
