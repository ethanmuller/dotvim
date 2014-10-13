"--- CTRLP ---
let g:ctrlp_open_multiple_files = 'i'
nmap <leader>m :CtrlPMRUFiles<CR>

"--- GIST.VIM ---
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1
let g:gist_clip_command = 'pbcopy'

"--- SYNTASTIC ---
let g:syntastic_always_populate_loc_list=1

"--- THE SILVER SEARCHER ---
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif
" set up Ag command for ag search
"command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

"--- NERDCOMMENTER ---
let NERDSpaceDelims = 1

"--- NERDTREE ---
let NERDTreeShowLineNumbers=1

"--- GOYO ---
function! g:Goyo_enter()
  set wrap
  set linebreak
  nmap j gj
  nmap k gk
endfunction

function! g:Goyo_exit()
endfunction

let g:goyo_callbacks = [function('g:Goyo_enter'), function('g:Goyo_exit')]

nnoremap <leader>w :Goyo<CR>

"--- SWITCH.VIM ---
let g:switch_custom_definitions =
  \ [
  \   ['foo', 'bar', 'baz'],
  \   ['light', 'dark'],
  \   ['bottom', 'top'],
  \   ['left', 'right'],
  \   ['one', 'two', 'three'],
  \   ['red', 'green'],
  \   ['width', 'height'],
  \   ['red', 'green', 'blue'],
  \   ['white', 'gray', 'black']
  \ ]
nnoremap <leader>t :Switch<CR>

"--- FUGITIVE ---
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<cr>
nmap <leader>gL :Git log<cr>
nmap <leader>gb :Gblame<cr>
