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

function! SfdxDeploy() abort
	call SfdxDeployWrapper('')
endfunction

function! SfdxDeployCheck() abort
	call SfdxDeployWrapper(' -c')
endfunction

function SfdxDeployWrapper(flag) abort
	let l:currentWorkingDirectory = getcwd() 
	execute '!sfdx force source deploy -p' .. l:currentWorkingDirectory .. a:flag
endfunction

function SfdxRetrieve() abort
	let l:currentWorkingDirectory = getcwd() 
	execute '!sfdx force source retrieve -p' .. l:currentWorkingDirectory
endfunction

function SfdxLightningCreate(filename) abort
	let l:path = matchstr(getcwd(), '^/.\+/force-app/main/default/lwc')

	if l:path == ''
		let l:path = 'force-app/main/default/lwc/'
	endif

	execute '!sfdx lightning generate component -d ' .. l:path .. ' -n ' .. a:filename .. ' --type=lwc'
endfunction

function SfdxAuthorize() abort
	
	let l:usernames = ["--setdefaultusername", "--setdefaultdevhubusername"]
	let l:alias = input('alias: ')
	echo "\n"
	let l:user = inputlist(['username:', '1. defaultusername', '2. defaultdevhubusername'])

	execute '!sfdx auth web login ' .. '-a ' .. l:alias .. ' ' .. l:usernames[l:user - 1]
endfunction

function! SfdxApex(filename) abort

	let l:path = matchstr(getcwd(), '^/.\+/force-app/main/default/classes')
	let l:directory = matchstr(a:filename, '.\+\/')
	let l:file = matchstr(getcwd() .. '/' .. a:filename, '.\+\/\zs.\+')

	if l:path == ''
		let l:path = 'force-app/main/default/classes/' .. l:directory
	else
		let l:path = l:path .. '/' .. l:directory
	endif

	execute '!sfdx apex generate class -d ' .. l:path .. ' -n ' .. l:file
endfunction

command! BufferClean :%bd|e#|bd#

command! SfdxDeploy :call SfdxDeploy()
command! SfdxRetrieve :call SfdxRetrieve()
command! SfdxDeployCheck :call SfdxDeployCheck()
command! -nargs=1 SfdxLightningCreate :call SfdxLightningCreate(<f-args>)
command! -nargs=1 SfdxApex :call SfdxApex(<f-args>)
command! SfdxAuthorize :call SfdxAuthorize()
