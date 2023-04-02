" Use <C-l> for trigger snippet expand.
"imap <C-space> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-k> <Plug>(coc-snippets-select)
nnoremap <C-B> <Plug>(coc-range-select)
vnoremap <C-B> <Plug>(coc-range-select) 

let g:coc_snippet_next = '<tab>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<s-tab>'
 
" Use <C-j> for both expand and jump (make expand higher priority.)
"imap <C-j> <Plug>(coc-snippets-expand-jump)
command! SnippetEdit :CocCommand snippets.editSnippets
command! SnippetFile :CocCommand snippets.openSnippetFile


