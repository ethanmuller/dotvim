" Load useful plugins
source ~/.vim/plugins.vim

" Load general configuration
source ~/.vim/essentials.vim
source ~/.vim/general.vim

" Load handy-dandy general vim mappings
source ~/.vim/mappings.vim

" Configure useful plugins
source ~/.vim/plugin_config.vim

" If we're in a gui
if has('gui_running')
  source ~/.vim/gui.vim
endif
