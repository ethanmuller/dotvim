" --- GENERAL CONFIG ---

" Make line numbers relative
set relativenumber

" Store lots of :cmdline history
set history=1000

" Show incomplete cmds down the bottom
set showcmd

" Reload files changed outside vim
set autoread

" Include some nice characters in words
set iskeyword+=-,$

" Enable mouse
set mouse=a

" Nice colors
set background=light
color seoul256-light

" Don't fold by default
set nofoldenable

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
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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

" --- Fixes ---

" Remove delay while escaping
set ttimeoutlen=0

" Resize all windows when vim is resized
au VimResized * exe "normal! \<c-w>="
