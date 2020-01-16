let g:switchmapped = 1
let g:keywordSwitched = 1

function! map#normal#switcher#switchKeyword() abort "{{{
    if g:keywordSwitched
	set iskeyword=33-255
	let g:keywordSwitched = 0
	echom "Keyword Off"
    else
	set iskeyword&
	let g:keywordSwitched = 1
	echom "Keyword On"
    endif
endfunction "}}}

function! map#normal#switcher#switchMatchPairMapping() abort "{{{
    if g:switchmapped 
	call map#normal#switcher#offMatchPairComandUnMapping("iun")
	call map#normal#switcher#offMatchPairComandUnMapping("cun")
	let g:switchmapped = 0
	echom "Match Pair Off"
    else
	call map#normal#switcher#onMatchPairInsertMapping()
	call map#normal#switcher#onMatchPairComandMapping()
	let g:switchmapped = 1
	echom "Match Pair On"
    endif
endfunction "}}}

function! map#normal#switcher#offMatchPairComandUnMapping(mode) abort "{{{
    execute a:mode . "map ("
    execute a:mode . "map ["
    execute a:mode . "map {"
    execute a:mode . "map <"
    execute a:mode . 'map "'
    execute a:mode . "map '"
endfunction "}}}

function! map#normal#switcher#onMatchPairInsertMapping() abort "{{{
    inoremap ( ()<Left>
    inoremap [ []<Left>
    inoremap { {}<Left>
    inoremap < <><Left>
    inoremap " ""<Left>
    inoremap ' ''<Left>
endfunction "}}}

function! map#normal#switcher#onMatchPairComandMapping() abort "{{{
    cnoremap ( ()<Left>
    cnoremap [ []<Left>
    cnoremap { {}<Left>
    cnoremap < <><Left>
    cnoremap " ""<Left>
    cnoremap ' ''<Left>
endfunction "}}}

call OnMatchPairInsertMapping()
call OnMatchPairComandMapping()
