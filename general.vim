" --- GENERAL CONFIG ---

" Make line numbers relative
set relativenumber

" Store lots of :cmdline history
set history=1000

" Show incomplete cmds down the bottom
set showcmd

" Include some nice characters in words
set iskeyword+=-,$

" Enable mouse
set mouse=a

" Nice colors
set term=xterm-256color
set t_Co=256
let base16colorspace=256        " Access colors present in 256 colorspace
set background=light
color base16-default

" slightly highlight current line
set cursorline

" Don't fold by default
set nofoldenable

" Automatically reload changed files
set autoread

" always show status bar
set laststatus=2

" Nice, simple status line
" [file path]               [current line] / [total lines]
set statusline=%h\        " [Help] flag
set statusline+=%f\       " Path to the file
set statusline+=%m        " Modified flag
set statusline+=%r        " Readonly flag
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=\ of\     " Separator
set statusline+=%L        " Total lines

" subtly highlight lines over 80 characters
highlight OverLength ctermbg=10 ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

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

" No automatic comments on new lines
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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
set foldmethod=indent

" Deepest fold is 10 levels
set foldnestmax=10

" Don't fold by default
set nofoldenable


" --- HACKY FIXES ---

" Remove delay while escaping
set ttimeoutlen=0

" Resize all windows when vim is resized
au VimResized * exe "normal! \<c-w>="
