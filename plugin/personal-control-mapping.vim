let g:alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m"
			\ ,"n","o","p","q","r","s","t","u","v","w","x","y","z"]

let g:arrows = ["up", "down", "left", "right"]

function! s:CommanMapKeys(Functional, arrows) abort
	for l:arrow in a:arrows
		call a:Functional(l:arrow)
	endfor
endfunction

function! s:CommandMapKey(leader, combination, key) abort
	let l:shortcut = a:combination . a:key
	execute "cnoremap " . a:leader . "<leader><". l:shortcut . "> " . " <lt>" . l:shortcut . ">"
endfunction

call s:CommanMapKeys(function("<SID>CommandMapKey", ["<leader>", ""]), g:arrows)
call s:CommanMapKeys(function("<SID>CommandMapKey", ["", "C-"]), g:alphabet)
call s:CommanMapKeys(function("<SID>CommandMapKey", ["", "S-"]), g:alphabet)

cnoremap <leader>\| <Bar ><left><bs><right>
cnoremap <leader>< <lt ><left><bs><right>
