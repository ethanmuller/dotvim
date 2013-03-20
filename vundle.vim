""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'fugitive.vim'
Bundle 'miripiruni/CSScomb-for-Vim'
Bundle 'matchit.zip'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'ack.vim'
Bundle 'xolox/vim-session'
Bundle 'Valloric/MatchTagAlways'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'ethanmuller/scratch.vim'
Bundle 'Figlet.vim'
Bundle 'mhinz/vim-signify'

" syntax plugins
Bundle 'HTML5-Syntax-File'
Bundle 'Markdown'
Bundle 'vim-coffee-script'
