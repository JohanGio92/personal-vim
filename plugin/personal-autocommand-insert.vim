augroup OmniFunction 
    autocmd!
    autocmd VimEnter *.[ch] :set omnifunc=template#templator#complete
augroup END

augroup VimInit
    autocmd!
    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    autocmd VimEnter /tmp/* :call <SID>Terminal()
augroup END

function! s:Terminal() abort
	set filetype=sh
	startinsert
	inoremap <silent> qa <Esc>:q<cr>
endfunction

augroup Terminal
	""autocmd!
	autocmd TermOpen * set nonumber
	""autocmd TermLeave * set modifiable | set virtualedit+=all
	""autocmd TermClose * set virtualedit-=all
augroup END
