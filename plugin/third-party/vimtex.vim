"if empty(v:servername) && exists('*remote_startserver')
"    call remote_startserver('VIM')
"endif
"
"augroup vimtex
"    autocmd!
"    autocmd BufWritePost *.tex call vimtex#toc#refresh()
"augroup END
"
"let g:vimtex_complete_enabled = 1
"let g:vimtex_complete_close_braces = 1
let g:vimtex_view_general_viewer = 'evince'
"
"let g:vimtex_compiler_latexmk_engines = {
"\ '_'                : '-pdf',
"\ 'pdflatex'         : '-pdf -pdflatex="pdflatex --shell-escape %O %S"',
"\ 'dvipdfex'         : '-pdfdvi',
"\ 'lualatex'         : '-lualatex',
"\ 'xelatex'          : '-xelatex -pdflatex="pdflatex --shell-escape %O %S"',
"\ 'context (pdftex)' : '-pdf -pdflatex=texexec',
"\ 'context (luatex)' : '-pdf -pdflatex=context',
"\ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
"\}
