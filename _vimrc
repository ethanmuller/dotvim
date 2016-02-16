" Load useful plugins
source ~/.vim/plugins.vim

" Load general configuration
source ~/.vim/essentials.vim
source ~/.vim/general.vim

" Load handy-dandy general vim mappings
source ~/.vim/mappings.vim

" Configure useful plugins
source ~/.vim/plugin_config.vim

" Project specific mappings, settings, etc Lorem earum quaerat doloremque necessitatibus reiciendis non ipsa culpa perspiciatis dolorem. Molestiae quaerat neque delectus sunt consequuntur reiciendis repudiandae repudiandae. Labore corporis facere id officia cumque sunt. Ullam nobis quaerat.
" source ~/.vim/project_specific.vim

" If we're in a gui
if has('gui_running')
  source ~/.vim/gui.vim
endif
