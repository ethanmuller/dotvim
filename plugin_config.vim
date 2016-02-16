"--- CTRLP ---
let g:ctrlp_open_multiple_files = 'i'
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_reuse_window  = 'startify\|netrw\|NERD_tree'
nmap <leader>m :CtrlPMRUFiles<CR>

"--- GIST.VIM ---
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1
let g:gist_clip_command = 'pbcopy'

"--- SYNTASTIC ---
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_scss_checkers = ["sass"]
let g:syntastic_scss_sass_exec = '~/.rvm/gems/ruby-2.0.0-p576/bin/sass'

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

nnoremap <leader>W :Goyo<CR>
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
  \   ['block', 'none'],
  \   ['disable', 'enable'],
  \   ['horizontal', 'vertical'],
  \   ['first', 'last'],
  \   ['margin', 'padding']
  \ ]
nnoremap <leader>t :Switch<CR>

"--- FUGITIVE ---
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gvdiff<CR>
nmap <leader>gl :Glog<cr>
nmap <leader>gL :Git log<cr>
nmap <leader>gb :Gblame<cr>

"--- EMMET ---
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"--- TEXTOBJ-USER ---
call textobj#user#plugin('php', {
\   'cssblock': {
\     'select-i-function': 'CssBlockI',
\     'select-i': 'ir',
\     'select-a-function': 'CssBlockA',
\     'select-a': 'ar',
\   },
\   'cssval': {
\     'select-i-function': 'CssVal',
\     'select-i': 'iv',
\     'select-a-function': 'CssVal',
\     'select-a': 'av',
\   },
\   'cssprop': {
\     'select-i-function': 'CssProp',
\     'select-i': 'iP',
\     'select-a-function': 'CssProp',
\     'select-a': 'aP',
\   },
\ })

function! CssVal()
  normal! ^
  normal! W
  let head_pos = getpos('.')
  normal! t;
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CssProp()
  normal! ^
  let head_pos = getpos('.')
  normal! t:
  let tail_pos = getpos('.')
  return ['v', head_pos, tail_pos]
endfunction

function! CssBlockI()
  normal! [{
  normal! ^
  let head_pos = getpos('.')
  normal! f{
  normal! %
  let tail_pos = getpos('.')
  return ['V', head_pos, tail_pos]
endfunction

function! CssBlockA()

  normal! ]}
  if IsLineBlank(line('.') + 1)
    let tail_line =  GetFollowingWhitespace(line('.') + 1)
    let space_after = 1
  else
    let tail_line =  line('.')
    let space_after = 0
  endif

  normal! [{
  if !space_after && IsLineBlank(line('.') - 1)
    let head_line =  GetPrecedingWhitespace(line('.') - 1)
  else
    let head_line =  line('.')
  endif

  " Ew, why do I have to do this?
  let head_pos = [0, head_line, 0, 0]
  let tail_pos = [0, tail_line, 0, 0]

  return ['V', head_pos, tail_pos]
endfunction

function! IsLineBlank(linenum)
  let line = getline(a:linenum)
  return line =~ '^s*$'
endfunction

function! GetFollowingWhitespace(line)
  " Given a line number,
  " return line number of last consecutive blank line
  let line = a:line

  if !IsLineBlank(line)
    return line
  endif

  while IsLineBlank(line + 1)
    let line += 1
  endwhile

  return line
endfunction

function! GetPrecedingWhitespace(line)
  " Given a line number,
  " return line number of first consecutive blank line
  let line = a:line

  if !IsLineBlank(line)
    return line
  endif

  while IsLineBlank(line - 1)
    let line -= 1
  endwhile

  return line
endfunction

"--- STARTIFY ---
let g:startify_list_order = []

let g:startify_custom_header =
  \ map(split(system('fortune fortunes | cowsay'), '\n'), '"   ". v:val') + ['','']

"--- VIM-PROCESSING ---
au BufNewFile,BufRead *.pde set filetype=processing

"--- BUFFERLINE ---
let g:bufferline_echo = 0

"--- fireplace ---
"nmap <return> vip:Eval<cr>
nmap \ vip:Eval<cr>
