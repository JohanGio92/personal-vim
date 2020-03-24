function! PackageTex() abort "{{{
    tabnew package.tex
    execute ":normal! ggdG"
    call template#templator#construir("package",'overleaf\|guides-and-tutorials\|page-\\thepage\|english')
endfunction "}}}

function! GlossaryTex() abort "{{{
    tabnew glossary.tex
    execute ":normal! ggdG"
    call template#templator#construir("glossary",'comment')
endfunction "}}}

function! PrinterTex() abort "{{{
    tabnew printer.tex
    execute ":normal! ggdG"
    call template#templator#construir("printer",'=')
endfunction "}}}

function! ReferenceTex() abort "{{{
    tabnew reference.tex
    execute ":normal! ggdG"
    call template#templator#construir("reference",'=')
endfunction "}}}

function! Book() abort "{{{
    tabnew book.tex
    execute ":normal! ggdG"
    call template#templator#construir("book",'\')
endfunction "}}}

function! Main() abort "{{{
    call template#templator#construir("main",'begin')
endfunction "}}}


command! Package :call PackageTex()
command! GLossary :call GlossaryTex()
command! Printer :call PrinterTex()
command! Reference :call ReferenceTex()
command! Book :call Book()
command! Main :call Main()
