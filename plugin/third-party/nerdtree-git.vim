""let g:NERDTreeGitStatusIndicatorMapCustom = {
""              \ 'Modified'  :'✹',
""              \ 'Staged'    :'✚',
""              \ 'Untracked' :'✭',
""              \ 'Renamed'   :'➜',
""              \ 'Unmerged'  :'═',
""              \ 'Deleted'   :'✖',
""              \ 'Dirty'     :'✗',
""              \ 'Ignored'   :'☒',
""              \ 'Clean'     :'✔︎',
""              \ 'Unknown'   :'?',
""              \ }
""
""let g:NERDTreeGitStatusUseNerdFonts = 1 
""let g:NERDTreeGitStatusShowIgnored = 1

let NERDTreeIgnore=['\.git']
let NERDTreeShowHidden=1

augroup NerdTreePlugin
	autocmd!
	" Start NERDTree and leave the cursor in it.
	autocmd VimEnter *.java,*.vim,*.html,*.json,*.xml,*.css,*.js NERDTree
	" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
	autocmd BufEnter *.java,*.vim,*.html,*.json,*.xml,*.css,*.js if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
	""			\ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
	" Open the existing NERDTree on each new tab.
	autocmd BufWinEnter *.java,*.vim,*.html,*.json,*.xml,*.css,*.js if getcmdwintype() == '' | silent! NERDTreeMirror |  endif
augroup END

