""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ===MISC===

" Set <leader> to comma
let mapleader = ","

" ; does :
nnoremap ; :
vnoremap ; :

" switch to last-used file
nnoremap <leader><leader> <C-^>

" easily set filetype
nmap <leader>f :set filetype=

" Move around splits with <c-hjkl>
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" Convenient $ and ^
nmap <c-h> ^
vmap <c-h> ^
nmap <c-l> $
vmap <c-l> $

" Y yanks from current cursor position to end of line
nmap Y y$

" Alphabetize stuff
nmap <leader>s vii:!sort<CR>
xmap <leader>s :!sort<CR>

" ===LISTS===

" browse argument list easily
nmap ]a :next<CR>
nmap [a :prev<CR>
nmap ]A :last<CR>
nmap [A :first<CR>

" browse buffer list easily
nmap ]b :bnext<CR>
nmap [b :bprev<CR>
nmap ]B :blast<CR>
nmap [B :bfirst<CR>

" browse quickfix list easily
nmap ]c :cnext<CR>
nmap [c :cprev<CR>
nmap ]C :clast<CR>
nmap [C :cfirst<CR>

" browse location list easily
nmap ]l :lnext<CR>
nmap [l :lprev<CR>
nmap ]L :llast<CR>
nmap [L :lfirst<CR>
