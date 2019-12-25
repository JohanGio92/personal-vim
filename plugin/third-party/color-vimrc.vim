set termguicolors

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable
""colorscheme rigel
"let g:gruvbox_contrast_light="soft"
colorscheme bluewery

""""""""""""""""""""[vColor]""""""""""""""""""""{{{
inoremap <F2> <Esc>:VCoolor<CR>
nnoremap <F2> :VCoolor<CR>
"}}}
