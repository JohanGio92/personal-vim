""let s:matches=".fa-lg .fa-2x .fa-3x .fa-4x .fa-5x .fa-fw .fa-ul .fa-ul .fa-li .fa-li.fa-lg .fa-border .fa-pull-left .fa-pull-right .fa.fa-pull-left"
""
""function! CompleteFA(findstart, base)
""    if a:findstart
""        " locate the start of the word
""	echom "findstart: " . a:findstart
""        let line = getline('.')
""        let start = col('.') - 1
""        while start > 0 && (line[start - 1] =~ '\a' || line[start - 1] =~ '.' || line[start - 1] =~ '-')
""            let start -= 1
""        endwhile
""	echom "findstart: " . a:findstart
""        return start
""    else
""        " find classes matching "a:base"
""        let result = []
""	echom "base: " . a:base
""        for aMatch in split(s:matches)
""            if aMatch =~ '^' . a:base
""                call add(result, aMatch)
""            endif
""        endfor
""        return result
""    endif
""endfun

