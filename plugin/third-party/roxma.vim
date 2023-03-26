" Create a python3 process running the hello module. The process is lazy load.
"let s:hello = yarp#py3('hello')

" com HelloSync call s:hello.request('greet')
" com HelloAsync call s:hello.notify('greet')

" You could type :Hello greet
" com -nargs=1 Hello call s:hello.request(<f-args>)
