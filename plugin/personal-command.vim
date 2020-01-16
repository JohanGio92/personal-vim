command! SwitchMatchPair :call SwitchMatchPairMapping()
command! SwitchKeyword :call SwitchKeyword()

"autocmd BufWrite * :echom "Foo"

"augroup testgroup
"    autocmd!
"    autocmd BufWrite * :echom "Foo"
"    autocmd BufWrite * :echom "Bar"
"augroup END
"
"augroup testgroup
"    autocmd!
"    autocmd BufWrite * :echom "Baz"
"augroup END

"augroup testgroup
"    autocmd!
"    autocmd BufWrite * :echom "Cats"
"augroup END
