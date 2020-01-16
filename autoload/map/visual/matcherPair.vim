function! map#visual#matcherPair#putCharacterBetween(left, right)
    execute ":normal! `>a" . a:right . "\<Esc>"
    execute ":normal! `<i" . a:left . "\<Esc>"
endfunction

function! map#visual#matcherPair#putSquareBracket()
    call map#visual#matcherPair#putCharacterBetween("[", "]")
endfunction

function! map#visual#matcherPair#putCurlyBracket()
    call map#visual#matcherPair#putCharacterBetween("{", "}")
endfunction

function! map#visual#matcherPair#putAngleBracket()
    call map#visual#matcherPair#putCharacterBetween("<", ">")
endfunction

function! map#visual#matcherPair#putParenthesis()
    call map#visual#matcherPair#putCharacterBetween("(", ")")
endfunction

function! map#visual#matcherPair#putDobleQuote()
    call map#visual#matcherPair#putCharacterBetween('"', '"')
endfunction

function! map#visual#matcherPair#putSingleQuote()
    call map#visual#matcherPair#putCharacterBetween("'", "'")
endfunction

function! map#visual#matcherPair#putBackStick()
    call map#visual#matcherPair#putCharacterBetween("`", "`")
endfunction

function! map#visual#matcherPair#putStar()
    call map#visual#matcherPair#putCharacterBetween("*", "*")
endfunction

function! map#visual#matcherPair#putBar()
    call map#visual#matcherPair#putCharacterBetween("|", "|")
endfunction
