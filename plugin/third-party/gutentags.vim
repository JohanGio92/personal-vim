""let g:gutentags_exclude_project_root = ['usr/local', '~/.vim/',
""			\ '~/Documents/Lenguajes/vim/plugin/.vim1', '~/Documents/Lenguajes/vim/plugin/.vim2']
""
""let g:gutentags_project_root = ['.git', '.hg', '.svn', '.bzr', '_darcs', '_darcs', '_FOSSIL_', '.fslckout', 'make', 'Make'. 'Makefile']
""
""let g:gutentags_ctags_exclude = ['*.exe', '*.o', '*.obj', '.*.swp', '.*.swo', '.ccls-cache', '*.md']
""
""set statusline+=%{gutentags#statusline()}
""
""augroup MyGutentagsStatusLineRefresher
""            autocmd!
""            autocmd User GutentagsUpdating call lightline#update()
""            autocmd User GutentagsUpdated call lightline#update()
""augroup END
""
""function! s:get_gutentags_status(mods) abort
""	let l:msg = ''
""	if index(a:mods, 'ctags') >= 0
""		let l:msg .= '♨'
""	endif
""	if index(a:mods, 'cscope') >= 0
""		let l:msg .= '♺'
""	endif
""	return l:msg
""endfunction
""
""set statusline+=%{gutentags#statusline_cb(
""			\function('<SID>get_gutentags_status'))}
