if exists("g:tex_visual_map")
    finish
endif

let g:tex_visual_map = 1

function! Italic() abort
	call map#visual#matcherPair#putCurlyBracket()
	execute ':normal i\textit' 
endfunction

function! Glossary() abort "{{{
	call map#visual#matcherPair#putCurlyBracket()
	execute ':normal i\gls' 
endfunction "}}}

function! TexCommand(command) abort "{{{
	call map#visual#matcherPair#putCurlyBracket()
	silent execute ':silent normal i'  . a:command
endfunction "}}}


vnoremap <localleader>bf :<C-U>call TexCommand('\textbf')<cr>
vnoremap <localleader>if :<C-U>call TexCommand('\textit')<cr>
vnoremap <localleader>gl :<C-U>call TexCommand('\gls')<cr>
vnoremap <localleader>Gl :<C-U>call TexCommand('\Gls')<cr>
vnoremap <localleader>as :<C-U>call TexCommand('\acrshort')<cr>
vnoremap <localleader>al :<C-U>call TexCommand('\acrlong')<cr>
vnoremap <localleader>af :<C-U>call TexCommand('\acrfull')<cr>
vnoremap <localleader>id :<C-U>call TexCommand('\index')<cr>
