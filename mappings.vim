""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set <leader> to comma
let mapleader = ","

" ===MISC===

" Make ' more useful
nnoremap ' `
vnoremap ' `

" Convenient $ and ^
nmap H ^
vmap H ^
nmap L $
vmap L $

" switch to last-used file
nnoremap <leader><leader> <C-^>

" Move around splits with <c-hjkl>
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" Y yanks from current cursor position to end of line
nmap Y y$

" Remap Q (annoying Ex mode) to last-used macro
nmap Q @@
vmap Q @@

" ===INTERACTIVE MODE===
" Alternate escape
inoremap jk <Esc>

" ===COMMAND MODE===
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" ===SHORCUTS===

" easily set filetype
nmap <leader>f :set filetype=

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

" ===OPERATOR PENDING===

" css rules
onoremap <silent> R :<C-U>normal! j[{V]}<CR>
vnoremap <silent> R :<C-U>normal! j[{V]}<CR>

" ===EDITING===
" Alphabetize stuff
nmap <leader>s vii:!sort<CR>
xmap <leader>s :!sort<CR>

" Markdown
" markdown italic
vmap <leader>mi S*
" markdown bold
vmap <leader>mb S*gvS*
