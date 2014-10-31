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

let g:NERDCustomDelimiters = {
    \ 'handlebars': { 'left': '{{!--', 'right': '--}}' }
\ }

"--- NERDTREE ---
let NERDTreeShowLineNumbers=1

"--- GOYO ---
function! s:goyo_enter()
  set wrap
  set linebreak
  set relativenumber
  nmap j gj
  nmap k gk
  set scrolloff=999
endfunction

function! s:goyo_leave()
  set scrolloff=8
endfunction

autocmd! User GoyoEnter
autocmd! User GoyoLeave
autocmd  User GoyoEnter nested call <SID>goyo_enter()
autocmd  User GoyoLeave nested call <SID>goyo_leave()

nnoremap <leader>w :Goyo<CR>
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0

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
  \   ['white', 'gray', 'black'],
  \   ['sm', 'md', 'lg'],
  \   ['primary', 'secondary'],
  \   ['gap', 'old-navy', 'banana-republic', 'piperlime', 'athleta']
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

"--- EMMET ---
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"--- TEXTOBJ-USER ---
call textobj#user#plugin('datetime', {
\   'date': {
\     'pattern': '\<\d\d\d\d-\d\d-\d\d\>',
\     'select': ['ad', 'id'],
\   },
\   'time': {
\     'pattern': '\<\d\d:\d\d:\d\d\>',
\     'select': ['at', 'it'],
\   },
\ })
