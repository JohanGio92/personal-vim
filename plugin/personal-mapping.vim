let mapleader = ","
let maplocalleader = ";"

"-----------[ insert mapping ]------------{{{
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap kj <Esc>
inoremap <Up><Down> <Esc>
inoremap <C-k> <C-x><C-k>
inoremap <C-l> <C-x><C-l>
"}}}

"-----------[ normal map ]------------{{{
nnoremap <F1> :tab help<CR>
nnoremap <Enter> o<Esc>k
nnoremap z<Up> zk
nnoremap z<Down> zj
nmap <space> /
"}}}

"-----------[ normal leader map  ]------------{{{
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
"}}}

"-----------[ commmand map ]------------{{{
cnoremap aso source %
"}}}

