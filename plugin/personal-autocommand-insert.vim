"if has('nvim')
"	let running = jobwait([&channel], 0)[0] == -1
"	augroup Terminal
"		autocmd!
"		autocmd TermOpen * set nonumber
"		autocmd TermEnter * :call <SID>EnterTerminal()
"		autocmd TermLeave * :call <SID>LeaveTerminal()
"		autocmd BufEnter *   execute "normal \<Esc>"
"	augroup END
"endif

"augroup OmniFunction 
"    autocmd!
"    autocmd VimEnter *.[ch] :set omnifunc=template#templator#complete
"augroup END

"augroup VimInit
"    autocmd!
"    autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif | set number
"    autocmd VimEnter /tmp/* :call <SID>Terminal()
"	autocmd VimEnter * :call <SID>OpenTerminal() | set nonumber 
"augroup END

"function! s:EnterTerminal() abort
"	hi TermCursorNC guifg=#00FFE6 guibg=#00FFE6 
"	hi TermCursor guifg=#4E5339 guibg=#4E5339
"	set guicursor=n-v-c:block-TermCursor,i-ci-ve:ver25-TermCursorNC,r-cr:hor20,o:hor50
"endfunction
"
"function! s:LeaveTerminal() abort
"	set guicursor&
"endfunction
"
"function! s:OpenTerminal() abort
"	if has('nvim')
"		terminal
"	endif
"endfunction

=======

"function! s:LeaveTerminal() abort
"	set guicursor&
"endfunction

"function! s:OpenTerminal() abort
"	if has('nvim')
"		terminal
"	endif
"endfunction

>>>>>>> origin/master
"function! s:Terminal() abort
"	set filetype=sh
"	startinsert
"	inoremap <silent> qa <Esc>:q<cr>
"endfunction

"hi Cursor guifg=green guibg=green
"hi Cursor2 guifg=#00FFE6 guibg=#00FFE6
"set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor50
