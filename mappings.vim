" MAPPINGS

" Set <leader> to comma
let mapleader = ","

" Switch to last-used file
nnoremap <leader><leader> <C-^>

" Easily toggle hlsearch
nmap <leader>/ :set hlsearch!<CR>

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

" Nice and shell-y command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Easily set filetype
nmap <leader>ft :set filetype=

" Toggle visible characters
nmap <leader>l :set list!<CR>

" Edit vimrc
nmap <leader>Ev :e ~/.vimrc<CR>
nmap <leader>Ez :e ~/.zshrc<CR>
nmap <leader>Ea :e ~/dotfiles/aliases.sh<CR>

" Source vimrc
nmap <leader>ve :e ~/.vimrc<CR>
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
" also with "e" as a mnemonic for error
nmap ]e :lnext<CR>
nmap [e :lprev<CR>
nmap ]E :llast<CR>
nmap [E :lfirst<CR>

" convenient toggling of spellchecker
nmap <leader>s :set spell!<CR>
"
" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" I do a lot of console.logs
iabbr cl console.log

" Expand for current directory
cabbr <expr> %% expand('%:p:h')

" Insert date
iabbr ddate <C-R>=strftime("%Y-%m-%d")<CR>

" Open current file in default app
map <leader>o !open %<CR>
