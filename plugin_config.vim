" ctrlP
let g:ctrlp_open_multiple_files = 'i'

function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction

" powerline
set laststatus=2
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode     " Don't show the mode since Powerline shows i
let g:Powerline_symbols = 'fancy'

" vim-session
let g:session_directory = '~/.vim/sessions'

" Gist.vim
if has('macunix') || has('mac')
  let g:gist_clip_command = 'pbcopy'
endif
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1

" signify
"let g:signify_color_guibg = "#ff0000"
"let g:signify_color_sign_ctermbg = 1

" solarized
hi SignColumn           guifg=#f6f3e8     guibg=black       gui=NONE    ctermfg=NONE        ctermbg=NONE        cterm=NONE
