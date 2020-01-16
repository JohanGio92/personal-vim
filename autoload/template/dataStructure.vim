function! template#dataStructure#forKey() abort
    call template#templator#construir("forKey", "myDict")
endfunction 

function! template#dataStructure#forItem() abort
    call template#templator#construir("forItem", '\%\(mydict\|key\|value\)')
endfunction 
