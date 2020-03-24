if exists("g:tex_normal_map")
    finish
endif

let g:tex_normal_map = 1

"-----------[ table ]------------{{{
nnoremap <localleader>tb itable
nnoremap <localleader>pt ipicture
"}}}

"-----------[ reference ]------------{{{
nnoremap <localleader>rf ireference
nnoremap <localleader>hp ihyper
"}}}

"-----------[ glossary ]------------{{{
nnoremap <localleader>gs iglossar
"}}}

"-----------[ acronym ]------------{{{
nnoremap <localleader>ac iacronym
"}}}

"-----------[ index ]------------{{{
nnoremap <localleader>id iindex
"}}}

"-----------[ color ]------------{{{
nnoremap <localleader>cl icolor
"}}}

"-----------[ include ]------------{{{
nnoremap <localleader>in iinclude
"}}}

"-----------[ code ]------------{{{
nnoremap <localleader>cd icode
"}}}

"-----------[ minted ]------------{{{
nnoremap <localleader>mt iminted
"}}}

"-----------[ header ]------------{{{
nnoremap <localleader>hd iheader
"}}}

"-----------[ footer ]------------{{{
nnoremap <localleader>ft ifooter
"}}}

nnoremap <localleader>= :VimtexDocPackage 
