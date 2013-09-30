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
