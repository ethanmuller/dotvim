" General config
set number                      " Line numbers are good
set history=1000                " Store lots of :cmdline history
set showcmd                     " Show incomplete cmds down the bottom
set showmode                    " Show current mode down the bottom
set autoread                    " Reload files changed outside vim
set iskeyword+=-,$              " Include some nice characters in words
set hidden                      " Buffers can exist in the background without being in a window.
syntax on                       " Activate syntax highlighting
set background=dark             " Dark-colored background
color solarized                 " Sexy, sexy colors
set listchars=tab:▸\ ,eol:¬
set mouse=a                     " Because I'm not a snob
set ttimeoutlen=0             " Remove delay while escaping
set hlsearch
set gdefault                    " Search globally by default

" Search settings 
set incsearch              " Find the next match as we type the search
set ignorecase smartcase   " Ignore case, unless capitals are used
set viminfo='100,f1        " Save up to 100 marks, enable capital marks

" Directories
set backupdir=~/.vim/backups//,.  " for backups

set undofile
set undodir=~/.vim/undos//,.      " for undos

set directory=~/.vim/swaps//,.    " for swaps

" Formatting
set smartindent
set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
set nowrap       " Don't wrap lines
set linebreak    " Wrap lines at convenient points
set formatoptions-=cro

" Folds
set nofoldenable        "dont fold by default

" Completion
set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~,*.psd,*.jpg,*.png,*.ai "stuff to ignore when tab completing
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

" Scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
nnoremap <C-e> 3<C-e> 
vnoremap <C-e> 3<C-e> 
nnoremap <C-y> 3<C-y>
vnoremap <C-y> 3<C-y>

" Auto commands
au VimResized * exe "normal! \<c-w>="
