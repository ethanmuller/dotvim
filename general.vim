" --- General config ---

" Turn on line  numbers
set number

" Buffers can exist in the background without being in a window.
set hidden

" Store lots of :cmdline history
set history=1000

" Show incomplete cmds down the bottom
set showcmd

" Reload files changed outside vim
set autoread

" Include some nice characters in words
set iskeyword+=-,$

" Activate syntax highlighting
syntax on

" Enable mouse
set mouse=a

" Remove delay while escaping
set ttimeoutlen=0

" Enable spellchecker
set spell

" Nice colors
set background=light
color seoul256-light

" --- Search settings ---

" Find the next match as we type the search
set incsearch

" Ignore case, unless capitals are used
set ignorecase smartcase

" Save up to 100 marks, enable capital marks
set viminfo='100,f1

" Highlight search terms
set hlsearch

" --- Directories ---

" for backups
set backupdir=~/.vim/backups//,.
set undofile

" for undos
set undodir=~/.vim/undos//,.

" for swaps
set directory=~/.vim/swaps//,.

" --- Formatting ---
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2

" Don't wrap lines
set nowrap

" Wrap lines at convenient points
set linebreak

" No automatic comments on new lines
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" --- Folds ---

" Don't fold by default
set nofoldenable

" --- Completion ---
set wildmode=list:longest

" Enable ctrl-n and ctrl-p to scroll thru matches
set wildmenu

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

" --- Scrolling ---

" Start scrolling when we're 8 lines away from margins
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
nnoremap <C-e> 3<C-e> 
vnoremap <C-e> 3<C-e> 
nnoremap <C-y> 3<C-y>
vnoremap <C-y> 3<C-y>

" --- Auto commands ---

" Resize all windows when vim is resized
au VimResized * exe "normal! \<c-w>="
