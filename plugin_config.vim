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

" textobj-user
call textobj#user#plugin('css', {
\  'rule': {
\    'select-a-function': 'CurrentRuleWhitespace',
\    'select-a': 'aR',
\    'select-i-function': 'CurrentRule',
\    'select-i': 'iR',
\  },
\})

function! CurrentRule()
  normal! [{
  let head_pos = getpos('.')
  normal! %
  let tail_pos = getpos('.')
  return ['V', head_pos, tail_pos]
endfunction
