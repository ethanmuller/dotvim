" CSScomb
nmap <leader>C :CSScomb
vmap <leader>C :CSScomb

" Fugitive
nmap <Leader>gc :Gcommit -v<CR>
nmap <Leader>gw :Gwrite<CR>
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gp :Git push<CR>
 " Mnemonic, gu = Git Update
nmap <Leader>gu :Git pull<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<cr>
" Exit a diff by closing the diff window
nmap <Leader>gx :wincmd h<CR>:q<CR>

" vim-session
nmap <leader>ss :SaveSession<Space>
nmap <leader>so :OpenSession<Space>

" Scratch
nmap <Leader>SS :Sscratch<CR>
nmap <Leader>SV :Vscratch<CR>

" CtrlP
nmap <Leader>t :CtrlP<CR>
" mneumonic: open MRU
nmap <Leader>om :CtrlPMRUFiles<CR>

" figlet
nmap g@@ g@_
