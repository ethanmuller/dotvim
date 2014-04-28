" Initialize Vundle and load plugins.
" Yes, this file is loading all the plugins,
" so show it some respect
source ~/.vim/vundle.vim

" Automatically detect file types. (must turn on after Vundle)
filetype plugin indent on

" Load general configuration
source ~/.vim/general.vim

" Load handy-dandy general vim mappings
source ~/.vim/mappings.vim

" Any plugin-specific settings go right here
source ~/.vim/plugin_config.vim

" Any plugin-specific mappings go here
source ~/.vim/plugin_mappings.vim
