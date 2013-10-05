" CtrlP
let g:ctrlp_open_multiple_files = 'i'

" Gist.vim
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1

" airline
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_enable_branch=1
let g:airline_branch_empty_message=''
let g:airline_theme='solarized'
set laststatus=2
