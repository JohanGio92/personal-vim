"let g:ycm_use_clangd = 0
let g:ycm_clangd_uses_ycmd_caching = 0
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_clangd_args = ['-log=verbose', '-pretty']
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_max_num_candidates = 50
"let g:ycm_auto_trigger = 1
"let g:ycm_error_symbol = '>>'
"let g:ycm_warning_symbol = 'W'
"let g:ycm_enable_diagnostic_highlighting = 1
"let g:ycm_complete_in_strings = 1
"let g:ycm_collect_identifiers_from_tags_files = 1  " be carefull may be your program too slow
"let g:ycm_key_invoke_completion = '<C-Space>'
"let g:ycm_seed_identifiers_with_syntax = 1
"
"let g:ycm_python_interpreter_path = ''
"let g:ycm_python_sys_path = []
"let g:ycm_extra_conf_vim_data = [
"	    \  'g:ycm_python_interpreter_path',
"	    \  'g:ycm_python_sys_path'
"	    \]
"let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'
