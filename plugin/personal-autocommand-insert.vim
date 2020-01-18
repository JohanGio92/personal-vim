"augroup Insert
    "autocmd!
    "autocmd InsertLeave * :call OnMatchPairInsertMapping()
    "autocmd InsertEnter * :call OffMatchPairComandUnMapping("iun")
"augroup END

"augroup Command
"    autocmd!
"    autocmd CmdLineEnter *.[^t][^x][^t] :set iskeyword=33-255
"    autocmd CmdLineLeave *.[^t][^x][^t] :set iskeyword&
"augroup END

augroup OmniFunction 
    autocmd!
    autocmd VimEnter *.[ch] :set omnifunc=template#templator#complete
augroup END

