function! s:CreateVisualMatchPairMap() abort "{{{
    vnoremap <leader>[ :<C-U>call map#visual#matcherPair#putSquareBracket()<cr>
    vnoremap <leader>{ :<C-U>call map#visual#matcherPair#putCurlyBracket()<cr>
    vnoremap <leader>< :<C-U>call map#visual#matcherPair#putAngleBracket()<cr>
    vnoremap <leader>( :<C-U>call map#visual#matcherPair#putParenthesis()<cr>
    vnoremap <leader>' :<C-U>call map#visual#matcherPair#putSingleQuote()<cr>
    vnoremap <leader>" :<C-U>call map#visual#matcherPair#putDobleQuote()<cr>
    vnoremap <leader>` :<C-U>call map#visual#matcherPair#putBackStick()<cr>
    vnoremap <leader>* :<C-U>call map#visual#matcherPair#putStar()<cr>
    vnoremap <leader><bar> :<C-U>call map#visual#matcherPair#putBar()<cr>
endfunction "}}}

call <SID>CreateVisualMatchPairMap()
