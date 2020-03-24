if exists("g:tex_insert_map")
    finish
endif

let g:tex_insert_map = 1

"-----------[ list ]------------{{{
inoremap <localleader>it \item<space>
"}}}

"-----------[ table ]------------{{{
inoremap =t table
inoremap =* \item 
inoremap =- \hline
"}}}

"-----------[ picture ]------------{{{
inoremap ==p picture
"}}}

"-----------[ reference ]------------{{{
inoremap =r reference
inoremap =h hyper
"}}}

"-----------[ glossary ]------------{{{
inoremap =g glossar
"}}}

"-----------[ acronym ]------------{{{
inoremap =a acronym
"}}}

"-----------[ index ]------------{{{
inoremap =i index
"}}}

"-----------[ color ]------------{{{
inoremap =c color
"}}}

"-----------[ include ]------------{{{
inoremap =# include
"}}}

"-----------[ code ]------------{{{
inoremap =/ code
"}}}

"-----------[ minted ]------------{{{
inoremap =m minted 
"}}}

"-----------[ header ]------------{{{
inoremap =^ header
"}}}

"-----------[ footer ]------------{{{
inoremap =_ footer
"}}}

"-----------[font]------------{{{
inoremap <localleader><left> \raggedleft
inoremap <localleader><right> \raggedright
inoremap <localleader><down> \centering
"}}}

"-----------[ acento ]------------{{{
inoremap 'a \'{a}
inoremap 'e \'{e}
inoremap 'i \'{i}
inoremap 'o \'{o}
inoremap 'u \'{u}
"}}}

inoremap <localleader>' `'<left>
inoremap <localleader>" ``''<left><left>
