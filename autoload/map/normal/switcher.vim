function! map#normal#switcher#onMatchPairMapping(mode) abort "{{{
	for l:pairs in g:matchPairs
		let l:pair = strpart(l:pairs, 0, 1)
		execute a:mode . "noremap " . l:pair . " " . l:pairs . "<Left>"
	endfor
endfunction "}}}
