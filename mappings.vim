" MAPPINGS

" Set <leader> to comma
let mapleader = ","

" Switch to last-used file
nnoremap <leader><leader> <C-^>

" Easily toggle hlsearch
nmap <leader>/ :set hlsearch!<CR>
vmap <leader>/ :set hlsearch!<CR>

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

" Alternate escape
inoremap jk <Esc>

" And let's undo some habits
inoremap <Esc> <nop>
inoremap <c-[> <nop>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Easily set filetype
nmap <leader>ft :set filetype=

" Toggle visible characters
nmap <leader>l :set list!<CR>

" Edit vimrc
nmap <leader>ve :e ~/.vimrc<CR>

" Source vimrc
nmap <leader>vs :so ~/.vimrc<CR>

" Quick redraw
nmap <leader>r :redraw!<CR>

" Browse argument list easily
nmap ]a :next<CR>
nmap [a :prev<CR>
nmap ]A :last<CR>
nmap [A :first<CR>

" Browse buffer list easily
nmap ]b :bnext<CR>
nmap [b :bprev<CR>
nmap ]B :blast<CR>
nmap [B :bfirst<CR>

" Browse quickfix list easily
nmap ]c :cnext<CR>
nmap [c :cprev<CR>
nmap ]C :clast<CR>
nmap [C :cfirst<CR>

" Browse location list easily
nmap ]l :lnext<CR>
nmap [l :lprev<CR>
nmap ]L :llast<CR>
nmap [L :lfirst<CR>

" Alphabetize stuff
nmap <leader>s vii:!sort<CR>
xmap <leader>s :!sort<CR>
