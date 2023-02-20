let mapleader=" "

" --- Normal Mode Mappings ---

" Move around splits with <c-hjkl>
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-h> <c-w>h
nmap <c-l> <c-w>l

nmap <leader>w :w<cr>

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

" Easily toggle folds
nmap <leader>z za

" Landmarks
nmap <leader>vr :e ~/.config/nvim/init.vim<CR>
nmap <leader>vm :e ~/.vim/mappings.vim<CR>
nmap <leader>vp :e ~/.vim/plugins.vim<CR>
nmap <leader>vs :source ~/.config/nvim/init.vim<CR>

" Edit zshrc
nmap <leader>ez :e ~/.zshrc<CR>

" Edit aliases
nmap <leader>ea :e ~/github/dotfiles/shell/generic/aliases.sh<CR>

" Quick redraw
nmap <leader>r :redraw!<CR>

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

iabbr <expr> dts strftime("%a %Y-%m-%d")
iabbr <expr> ts strftime("%H:%M")
iabbr <expr> dcts strftime("%H")

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
" nmap <leader>d :w<cr>:make<cr><cr>

" easily get filename
" ... without directories
nmap <leader>fn :let @+=expand('%:t')<cr>
" ... with directories
nmap <leader>fp :let @+=@%<cr>

" Find overused words
" nmap <leader>b :call search('\v(however|obviously|basically|simply|of course|clearly|just|everyone knows|<so>|easy)')<cr>

" Compile & run with F4
autocmd filetype c nnoremap <F4> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>

" If I'm deleting to the next unclosed }, I probably don't want to clobber
" indentation. For example, a nested closing CSS bracket would become the
" first character on its line. It's useful to auto-indent after deleting to
" the next unclosed }.
nmap d]} d]}==
