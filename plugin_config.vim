" CtrlP
let g:ctrlp_open_multiple_files = 'i'

" Gist.vim
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1
