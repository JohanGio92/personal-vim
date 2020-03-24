let g:matchPairs = ["''", "<>", "{}", '""', '[]', "()"]

function! s:CreateNormalEspaciadorMap() abort "{{{
    nnoremap <c-down> :<C-U>call map#normal#espaciador#espaciarAbajo()<cr>
    nnoremap <c-up> :<C-U>call map#normal#espaciador#espaciarArriba()<cr>
    nnoremap <c-right> :<C-U>call map#normal#espaciador#espaciarDerecha()<cr>
    nnoremap <c-left> :<C-U>call map#normal#espaciador#espaciarIzquierda()<cr>
    nnoremap <s-down> :<C-U>call map#normal#espaciador#removerEspaciadoDeAbajo()<cr> 
    nnoremap <s-up> :<C-U>call map#normal#espaciador#removerEspaciadoDeArriba()<cr> 
    nnoremap <s-right> @='lxh'<cr>
    nnoremap <s-left> @='hx'<cr>
    nnoremap <leader>al :<C-U>call map#normal#espaciador#agnadirNumeroDeLinea()<cr>
    nnoremap <leader>dl :<C-U>call map#normal#espaciador#removerNumeroDeLinea()<cr>
endfunction "}}}

function! s:CreateNormalLeaderMap() abort "{{{
    nnoremap <Leader>env :tabnew $VIMRC<CR>
    nnoremap <Leader>sv :source $VIMRC<CR>
    nnoremap <Leader>nh :noh<CR>
    nnoremap <Leader>sh :shell<CR>
    nnoremap <Leader>x :x<CR>
    nnoremap <Leader>qa :qall<CR>
    nnoremap <Leader>q :q<CR>
    nnoremap <Leader>c :close<CR>
    nnoremap <Leader>tn :tabnew<Space>
    nnoremap <Leader>cf :execute "tabnew " . expand("<cfile>")<CR>
    nnoremap <Leader>12 :%s/\([^,]*\), \(.*\)/\2 \1/<CR>
    nnoremap <Leader><Enter> :NERDTreeToggle<CR>
    nnoremap <Leader><Leader> :
    nnoremap <Leader>fd I"-----------[ NameFolding ]------------{{{<cr><cr>}}}<Esc><up>x
    nnoremap <Leader>bd :bd!<cr>
endfunction "}}}

function! s:CreateNormalF1ToF12Map() abort "{{{
    nnoremap <F1> :tab help<CR>
endfunction "}}}

function! s:CreateNormalFoldingMap() abort "{{{
    nnoremap z<Up> zk
    nnoremap z<Down> zj
endfunction "}}}

function! s:Tag(tag) abort
	execute v:count1 . a:tag 
endfunction

nmap <C-F> /
nnoremap <space>t :tags<cr>
nnoremap ]n :<C-U>call <SID>Tag("tag")<cr>
nnoremap [n :<C-U>call <SID>Tag("pop")<cr>
nnoremap bd :bwipeout<cr>
" nnoremap <Enter> a<Enter><Esc>k$

call <SID>CreateNormalEspaciadorMap()
call <SID>CreateNormalLeaderMap()
call <SID>CreateNormalF1ToF12Map()
call <SID>CreateNormalFoldingMap()

map <up> k
map <down> j
map <right> l
map <left> h

call map#normal#switcher#onMatchPairMapping('i')
call map#normal#switcher#onMatchPairMapping('c')
