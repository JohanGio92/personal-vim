tnoremap <C-W><left> <C-\><C-N><C-w>h
tnoremap <C-W><down> <C-\><C-N><C-w>j
tnoremap <C-W><up> <C-\><C-N><C-w>k
tnoremap <C-W><right> <C-\><C-N><C-w>l
inoremap <C-W><left> <C-\><C-N><C-w>h
inoremap <C-W><down> <C-\><C-N><C-w>j
inoremap <C-W><up> <C-\><C-N><C-w>k
inoremap <C-W><right> <C-\><C-N><C-w>l
tnoremap <Esc> <C-\><C-n>
tnoremap <C-W>+ <C-\><C-N><C-w>+
tnoremap <C-W>- <C-\><C-N><C-w>-
tnoremap <C-W><bar> <C-\><C-N><C-w><bar>
tnoremap <C-W>_ <C-\><C-N><C-w>_
""nnoremap <A-h> <C-w>h
""nnoremap <A-j> <C-w>j
""nnoremap <A-k> <C-w>k
""nnoremap <A-l> <C-w>l
tnoremap ' ''<left>
tnoremap < <><left>
tnoremap [ []<left>
tnoremap { {}<left>
tnoremap ( ()<left>
tnoremap " ""<left>
tnoremap <expr> <C-R> '<C-\><C-N>"'. nr2char(getchar()). 'pi'

"clear page
tnoremap <C-L> <M-l><C-L>
""reverse search
tnoremap <C-R> <M-l><M-H><C-R>
tnoremap <C-K> <M-l><M-H><C-K>
tnoremap <nowait> <C-W> <M-d>W
tnoremap <nowait> <C-B> <M-d>B
tnoremap <C-right> <M-E>
tnoremap <C-left> <M-B>

