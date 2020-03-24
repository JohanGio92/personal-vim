""let g:template_path = "~/.vim/bundle/personal-vim/template/"
""
""function! Templates(fileName, pattern) "{{{
""    let l:extension = expand("%:e") . '/'
""    let l:complete_path = g:template_path . l:extension .a:fileName
""    echo l:complete_path
""    let l:previous = ".-1"
""
""    silent execute l:previous . ":read " . l:complete_path 
""    execute ":normal! zR"
""    execute ":normal! " . '/' . a:pattern . "\<cr>"
""    "normal viw
""endfunction "}}}
""
""function! CompleteFyleType(findstart, base) abort "{{{
""    let $fileSystem = $TEMPLATE . "/" . expand('%:e') . "/"
""    if a:findstart
""	let line = getline('.')
""	let start = col('.') - 1
""	while start > 0 && line[start - 1] =~ '\k'
""	    let start -= 1
""	endwhile
""	return start
""    else
""	let resutlMatch = []
""	for aMatch in split(system("ls $fileSystem"), '\n')
""	    if aMatch =~ a:base
""		call add(resutlMatch, aMatch)
""	    endif
""	endfor
""	return resutlMatch
""    endif
""endfunction "}}}

set omnifunc=template#templator#complete

let g:especialcharacter = {'\i': "identifier character (see 'isident' option)",
	    \ '\I': 'like "\i", but excluding digits',
	    \ '\k': "keyword character (see 'iskeyword' option)",
	    \ '\K': 'like "\k", but excluding digits',
	    \ '\f': "file name character (see 'isfname' option)",
	    \ '\F': 'like "\f", but excluding digits',
	    \ '\p': "printable character (see 'isprint' option)",
	    \ '\P': 'like "\p", but excluding digits',
	    \ '\s': "whitespace character: <Space> and <Tab>",
	    \ '\S': "non-whitespace character; opposite of \\s",
	    \ '\d': "digit:				[0-9]",
	    \ '\D': "non-digit:			[^0-9]",
	    \ '\x': "hex digit:			[0-9A-Fa-f]",
	    \ '\X': "non-hex digit:			[^0-9A-Fa-f]",
	    \ '\o': "octal digit:			[0-7]",
	    \ '\O': "non-octal digit:		[^0-7]",
	    \ '\w': "word character:			[0-9A-Za-z_]",
	    \ '\W': "non-word character:		[^0-9A-Za-z_]",
	    \ '\h': "head of word character:		[A-Za-z_]",
	    \ '\H': "non-head of word character:	[^A-Za-z_]",
	    \ '\a': "alphabetic character:		[A-Za-z]",
	    \ '\A': "non-alphabetic character:	[^A-Za-z]",
	    \ '\l': "lowercase character:		[a-z]",
	    \ '\L': "non-lowercase character:	[^a-z]",
	    \ '\u': "uppercase character:		[A-Z]",
	    \ '\U': "non-uppercase character		[^A-Z]",
	    \ '\_': "where x is any of the characters above: character class with end-of-line included",
	    \ '\e': "<Esc>",
	    \ '\t': "<Tab>",
	    \ '\r': "<CR>",
	    \ '\b': "<BS>",
	    \ '\n': "end-of-line",
	    \ '~': "last given substitute string",
	    \ '\1': 'same string as matched by first \(\) {not in Vi}',
	    \ '\9': 'Like "\1", but uses ninth \(\)',
	    \ '\z1': "only for syntax highlighting, see |:syn-ext-match|",
	    \ '\z9': "only for syntax highlighting, see |:syn-ext-match|",
		\ '\_[]': "a sequence atoms with end-of-line",
	    \ '\%[]': "a sequence of optionally matched atoms",
	    \ '\c': "ignore case, do not use the 'ignorecase' option",
	    \ '\C': "match case, do not use the 'ignorecase' option",
	    \ '\Z': "ignore differences in Unicode 'combining characters'. Useful when searching voweled Hebrew or Arabic text.",
	    \ '\m': "'magic' on for the following chars in the pattern",
	    \ '\M': "'magic' off for the following chars in the pattern",
	    \ '\v': "the following chars in the pattern are 'very magic'",
	    \ '\V': "the following chars in the pattern are 'very nomagic'",
	    \ '\%#=': "select regexp engine |/zero-width|                 =",
	    \ '\%d': "match specified decimal character (eg \%d123)",
	    \ '\%x': "match specified hex character (eg \%x2a)",
	    \ '\%o': "match specified octal character (eg \%o040)",
	    \ '\%u': "match specified multibyte character (eg \%u20ac)",
	    \ '\%U': "match specified large multibyte character (eg \%U12345678)",
	    \ '\%C': "match any composing characters" }

let g:pattern = {'*': "0 or more as many as possible",
	    \ '\+': "1 or more as many as possible (*)",
	    \ '\=': "0 or 1	as many as possible (*)",
	    \ '\?': "0 or 1	as many as possible (*)",
	    \ '\{n,m}': "n to m as many as possible (*)",
	    \ '\{n}':	"n exactly (*)",
	    \ '\{n,}': "at least n as many as possible (*)",
	    \ '\{,m}': "0 to m as many as possible (*)",
	    \ '\{}': "0 or more as many as possible (same as *) (*)",
	    \ '\{-n,m}': "n to m as few as possible (*)",
	    \ '\{-n}': "n exactly (*)",
	    \ '\{-n,}': "at least n	as few as possible (*)",
	    \ '\{-,m}': "0 to m as few as possible (*)",
	    \ '\{-}': "0 or more as few as possible (*)",
	    \ '\@>': "1, like matching a whole pattern (*)",
	    \ '\@=': "nothing, requires a match |/zero-width| (*)",
	    \ '\@!': "nothing, requires NO match |/zero-width| (*)",
	    \ '\@<=' : "nothing, requires a match behind |/zero-width| (*)",
	    \ '\@<!': "nothing, requires NO match behind |/zero-width| (*)",
	    \ '^': "start-of-line (at start of pattern) |/zero-width|",
	    \ '\^': "literal '^'",
	    \ '\_^': "start-of-line (used anywhere) |/zero-width|",
	    \ '$': "end-of-line (at end of pattern) |/zero-width|",
	    \ '\$': "literal '$'",
	    \ '\_$': "end-of-line (used anywhere) |/zero-width|",
	    \ '\.': "any single character (not an end-of-line)",
	    \ '\_.': "any single character or end-of-line",
	    \ '\<': "beginning of a word |/zero-width|",
	    \ '\>': "end of a word |/zero-width|",
	    \ '\zs': "anything, sets start of match",
	    \ '\ze': "anything, sets end of match",
	    \ '\%^': "beginning of file |/zero-width|	*E71*",
	    \ '\%$': "end of file |/zero-width|",
	    \ '\%V': "inside Visual area |/zero-width|",
	    \ '\%#': "cursor position |/zero-width|",
	    \ "\%'m": "mark m position |/zero-width|",
	    \ '\%23l': "in line 23 |/zero-width|",
	    \ '\%23c': "in column 23 |/zero-width|",
	    \ '\%23v': "in virtual column 23 |/zero-width|",
		\ '\_[]': "a sequence atoms with end-of-line",
		\ '\%[]': "a sequence of optionally matched atoms"}

inoremap <C-E> <C-R>=CompleteEvent(g:especialcharacter)<cr>
inoremap <C-W> <C-R>=CompleteEvent(g:pattern)<cr>

function! CompleteEvent(palabraCompleta) abort
    let l:linea = getline('.')
    let l:palabraImcompleta = col('.') - 1
    let l:comienzoDeLaPabra = ObtenerComienzoDeLaPalabra(copy(l:palabraImcompleta), l:linea)
    let l:base = linea[l:comienzoDeLaPabra:l:palabraImcompleta]
    let l:base = '\' . l:base
    let l:resultado = AddMatch(l:base, a:palabraCompleta)
    call complete(l:comienzoDeLaPabra + 1, l:resultado)
    return ""
endfunction

function! ObtenerComienzoDeLaPalabra(palabraImcompleta, linea) abort
    let l:palabraImcompleta = a:palabraImcompleta
    while ((l:palabraImcompleta > 0) && (a:linea[l:palabraImcompleta-1] =~? '\S'))
	let l:palabraImcompleta -= 1
    endwhile
    return l:palabraImcompleta
endfunction

function! AddMatch(base, palabraCompleta) abort
	let l:resultado = []

	for [l:match, l:information] in items(a:palabraCompleta)
		if(l:match =~? a:base)	
			call add(l:resultado, {
						\ 'icase': 1,
						\ 'dup': 1,
						\ 'word': l:match,
						\ 'abbr': l:match,
						\ 'menu': l:information,
						\ })
		endif

	endfor
	return l:resultado
endfunction

