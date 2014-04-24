" Fugitive
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<cr>
nmap <leader>gL :Git log<cr>
nmap <leader>gb :Gblame<cr>

" CtrlP
" mneumonic: open MRU
nmap <Leader>m :CtrlPMRUFiles<CR>

" figlet
nmap g@@ g@_

" Gist
let g:gist_clip_command = 'pbcopy'

" open current file in Marked
nmap <Leader>M :!mark "%"<CR>

" set up Ag command for ag search
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" set up shortcut for :Ag command
nnoremap \ :Ag<SPACE>
" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" Ember.vim
nnoremap <leader>ec :Econtroller<space>
nnoremap <leader>ea :Easset<space>
nnoremap <leader>ert :Eroute<space>
nnoremap <leader>err :Econfig router<CR>
nnoremap <leader>et :Etemplate<space>
nnoremap <leader>em :Emodel<space>
