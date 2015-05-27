let mapleader=" "

" --- Normal Mode Mappings ---

" Move around splits with <c-hjkl>
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

" Switch to last-used file
nnoremap <leader><leader> <C-^>

" Y yanks from current cursor position to end of line
nmap Y y$

" Remap Q (annoying Ex mode) to last-used macro
nmap Q @@

" Easily set filetype
nmap <leader>ft :set filetype=

" Toggle visible characters
nmap <leader>l :set list!<CR>

" Edit vimrc
nmap <leader>ev :e ~/.vimrc<CR>
nmap <leader>em :e ~/.vim/mappings.vim<CR>
nmap <leader>ep :e ~/.vim/plugins.vim<CR>

" Edit zshrc
nmap <leader>ez :e ~/.zshrc<CR>

" Edit aliases
nmap <leader>ea :e ~/github/dotfiles/shell/generic/aliases.sh<CR>

nmap <leader>v :source ~/.vimrc<CR>

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

" Create newlines without entering insert mode
nnoremap go o<Esc>k
nnoremap gO O<Esc>j

" Open current file in default app
nmap <leader>o :!open "%"<CR>

" Toggle relative numbering
nmap <leader>n :set relativenumber!<CR>

" Toggle hlsearch
nmap <leader>/ :set hlsearch!<CR>

" Toggle spell check
nmap <leader>s :set spell!<CR>

" --- Insert Mode Mappings ---

" Alternate escape
inoremap jk <Esc>
inoremap kj <Esc>

" I do a lot of console.logs
iabbr cl console.log
iabbr iunno ¯\_(ツ)_/¯

" Filename to pasteboard
inoremap @fn <c-r>=expand("%:t")<cr>

" Filepath to pasteboard
inoremap @fp <c-r>=expand("%:p")<cr>

" Insert date
iabbr ddate <C-R>=strftime("%Y-%m-%d")<CR>

" --- Command Mode Mappings ---

" Expand for current directory
cabbr <expr> %% expand('%:p:h')

" Nice and shell-y command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" When working with processing...
nmap <leader>d :w<cr>:make<cr><cr>
