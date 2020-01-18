function! vim#mapper#mapShiftInInsertMode() abort "{{{
    inoremap <buffer> <silent> <leader><S-A> <S-A ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-B> <S-B ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-C> <S-C ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-D> <S-D ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-E> <S-E ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-F> <S-F ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-G> <S-G ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-H> <S-H ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-I> <S-I ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-J> <S-J ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-K> <S-K ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-L> <S-L ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-M> <S-M ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-N> <S-N ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-O> <S-O ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-P> <S-P ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-Q> <S-Q ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-R> <S-R ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-S> <S-S ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-T> <S-T ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-U> <S-U ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-V> <S-V ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-W> <S-W ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-X> <S-X ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-Y> <S-Y ><left><bs><right>
    inoremap <buffer> <silent> <leader><S-Z> <S-Z ><left><bs><right>
endfunction "}}}

function! vim#mapper#mapControlInInsertMode() abort "{{{
    inoremap <buffer> <silent> <leader><C-A> <C-A ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-B> <C-B ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-C> <C-C ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-D> <C-D ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-E> <C-E ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-F> <C-F ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-G> <C-G ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-H> <C-H ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-I> <C-I ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-J> <C-J ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-K> <C-K ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-L> <C-L ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-M> <C-M ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-N> <C-N ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-O> <C-O ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-P> <C-P ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-Q> <C-Q ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-R> <C-R ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-S> <C-S ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-T> <C-T ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-U> <C-U ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-V> <C-V ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-W> <C-W ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-X> <C-X ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-Y> <C-Y ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-Z> <C-Z ><left><bs><right>
endfunction "}}}

function! vim#mapper#mapArrow() abort "{{{
    inoremap <buffer> <silent> <leader>\| <Bar ><left><bs><right>
    inoremap <buffer> <silent> <leader>< <lt ><left><bs><right>

    inoremap <buffer> <silent> <leader><leader><up> <up ><left><bs><right>
    inoremap <buffer> <silent> <leader><leader><down> <down ><left><bs><right>
    inoremap <buffer> <silent> <leader><leader><left> <left ><left><bs><right>
    inoremap <buffer> <silent> <leader><leader><right> <right ><left><bs><right>

    inoremap <buffer> <silent> <leader><C-up> <C-up ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-down> <C-down ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-left> <C-left ><left><bs><right>
    inoremap <buffer> <silent> <leader><C-right> <C-right ><left><bs><right>

    inoremap <buffer> <silent> <leader><s-up> <s-up ><left><bs><right>
    inoremap <buffer> <silent> <leader><s-down> <s-down ><left><bs><right>
    inoremap <buffer> <silent> <leader><s-left> <s-left ><left><bs><right>
    inoremap <buffer> <silent> <leader><s-right> <s-right ><left><bs><right>
endfunction "}}}
