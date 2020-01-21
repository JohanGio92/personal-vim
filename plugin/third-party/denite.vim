" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
    imap <silent><buffer> <C-c> <Plug>(denite_filter_quit)
endfunction

nnoremap <space>rv :Denite file/rec -split=vertical -winwidth=25<cr> 
nnoremap <space>rh :Denite file/rec -split=horizontal -winheight=10<cr>¬
nnoremap <space>fv :Denite file/rec -split=vertical<cr> <Bar> 25<C-W>< 
nnoremap <space>fh :Denite file -split=horizontal -winheight=10<cr>
nnoremap <space>ft :Denite file -split=tab -winheight=10<cr>
"nnoremap <space>m :Denite file_mru -winheight=10 -vertical-preview -auto-preview <cr>¬
nnoremap <space>l :Denite line -auto-resume -winheight=10<cr>¬
nnoremap <space>b :Denite buffer -winheight=10<cr>
nnoremap <space>cs :Denite colorscheme -split=vertical -winwidth=15<cr>
