" --- GENERAL CONFIG ---

" Make line numbers relative
set relativenumber

" Store lots of :cmdline history
set history=1000

" Show incomplete cmds down the bottom
set showcmd

" Allow deleting after entering insert mode
set backspace=indent,eol,start

" Include some nice characters in words
set iskeyword+=-,$

" Enable mouse
set mouse=a

" Show trailing whitespace 
set list listchars=tab:\ \ ,trail:·

" slightly highlight current line
set cursorline

" always show status bar
set laststatus=2

" Nice, simple status line
" [file path]               [current line] / [total lines]
set statusline=%h\        " [Help] flag
set statusline+=%f\       " Path to the file
set statusline+=%m        " Modified flag
set statusline+=%r        " Readonly flag
set statusline+=%=        " Switch to the right side
set statusline+=%v        " Virtual column number
set statusline+=\ \|\     " Separator
set statusline+=%l        " Current line
set statusline+=\ \/\     " Separator
set statusline+=%L        " Total lines

" --- COLORS ---

" Nice colors
let base16colorspace=256        " Access colors present in 256 colorspace
set background=dark
color base16-ocean

" Subtly highlight lines over 80 characters
highlight OverLength ctermbg=07
match OverLength /\%81v.\+/

" Highlight butts
highlight Butts ctermbg=09 ctermfg=07
match Butts /[Bb]utts/

" Highlight git markers
" highlight GitDiffStart ctermbg=09 ctermfg=07
" match GitDiffStart /<<<<<<</

" highlight GitDiffEnd ctermbg=09 ctermfg=07
" match GitDiffEnd   />>>>>>>/




" Italic comments
" https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/
highlight Comment cterm=italic

" --- SEARCH SETTINGS ---

" Find the next match as we type the search
set incsearch

" Ignore case, unless capitals are used
set ignorecase smartcase

" Save up to 100 marks, enable capital marks
set viminfo='100,f1

" Highlight search terms
set hlsearch

" --- DIRECTORIES ---

" for backups
set backup
set backupdir=~/.vim/backups/,/tmp
set undofile

" for undos
set undodir=~/.vim/undos/,/tmp

" for swaps
set directory=~/.vim/swaps/,/tmp

" --- FORMATTING ---

" Match previous line's indentation
set autoindent

" Insert indentation according to shiftwidth
set smarttab

" insert spaces instead of tabs
set expandtab

" Tab widths
set shiftwidth=2
set softtabstop=2

" Don't wrap lines
set nowrap

" Prevent extra spaces from appearing after punctuation when joining lines
set nojoinspaces

" No automatic comments on new lines
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" in makefiles, don't expand tabs to spaces, since actual tab characters are
" needed, and have indentation at 8 chars to be sure that all indents are tabs
" (despite the mappings later):
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0

" --- COMPLETION ---

" ctrl-n and ctrl-p scroll thru matches on command line
set wildmenu

set wildmode=list:longest

" Stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~,*.psd,*.jpg,*.png,*.ai
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif
set wildignore+=*node_modules/**

" --- SCROLLING ---

" Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
nnoremap <C-e> 3<C-e> 
vnoremap <C-e> 3<C-e> 
nnoremap <C-y> 3<C-y>
vnoremap <C-y> 3<C-y>

" --- FOLDING ---

" Fold based on indent
" set foldmethod=indent

" Deepest fold is 10 levels
" set foldnestmax=10

" Don't fold by default
" set nofoldenable

" pico8 folding


" --- HACKY FIXES ---

" Remove delay while escaping
set ttimeoutlen=0

" Resize all windows when vim is resized
au VimResized * exe "normal! \<c-w>="
