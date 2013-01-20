""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set <leader> to comma
let mapleader = ","

" Remap "," because it's still useful
noremap \ ,

" switch to last-used file
nmap <leader><leader> <C-^>

" easily set filetype
nnoremap <leader>f :set filetype=

" Edit .vimrc easily
nmap <leader>ve :tabedit $MYVIMRC<CR>

" Source .vimrc easily
nmap <leader>vs :source $MYVIMRC<CR>

" Alphabetize stuff
nmap <leader>s vii:!sort<CR>
xmap <leader>s :!sort<CR>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" toggle search highlighting and report status with <F4>
noremap <F4> :set hlsearch! hlsearch?<CR>

" auto-indent pastes
nnoremap p p=`]

" Y acts like it should
nnoremap Y y$

" === Lists ===

" browse argument list easily
nnoremap ]a :next<CR>
nnoremap [a :prev<CR>
nnoremap ]A :last<CR>
nnoremap [A :first<CR>

" browse buffer list easily
nnoremap ]b :bnext<CR>
nnoremap [b :bprev<CR>
nnoremap ]B :blast<CR>
nnoremap [B :bfirst<CR>

" browse quickfix list easily
nnoremap ]c :cnext<CR>
nnoremap [c :cprev<CR>
nnoremap ]C :clast<CR>
nnoremap [C :cfirst<CR>

" browse location list easily
nnoremap ]l :lnext<CR>
nnoremap [l :lprev<CR>
nnoremap ]L :llast<CR>
nnoremap [L :lfirst<CR>

