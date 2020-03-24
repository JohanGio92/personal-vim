command! SwitchMatchPair :call SwitchMatchPairMapping()
command! SwitchKeyword :call SwitchKeyword()

command! -complete=customlist,<SID>SetDictionary -nargs=1 Dictionary :let &dictionary = "/usr/share/dict/" . <q-args>

function! s:SetDictionary(ArgLead, CmdLine, CursorPos) abort
	return ["american-english", "spanish"]
endfunction

function! MakeCommandCompletion(ArgLead, CmdLine, CursorPos) abort
    let l:words = split(a:CmdLine)
	echom a:CmdLine
    let l:words[0] = 'make'
    let l:command = join(l:words)
    return bash#complete(l:command)
endfunction

function! MakeCommandCompletion(ArgLead, CmdLine, CursorPos) abort
    let l:words = split(a:CmdLine)
	echom a:CmdLine
    let l:words[0] = 'ls'
    let l:command = join(l:words)
    return bash#complete(l:command)
endfunction

command -nargs=* -complete=customlist,MakeCommandCompletion Make make <args>
command -nargs=* -complete=customlist,MakeCommandCompletion Ls !ls <args>

command STerminal :8split term://bash
command VTerminal :vsplit term://bash
command TTerminal :split term://bash | execute "normal! \<C-W>T"
