let mapleader=','
set backspace=indent,eol,start  " Make backspace behave normally
imap <C-o> <esc>o
" Navigate between buffers
map <C-J> :bprev<CR>
map <C-K> :bnext<CR>
map <leader>w :bp<bar>sp<bar>bn<bar>bd<CR> " Moves to another buffer and deletes the one it moved from
nnoremap p p=`] " Respects indentation on paste.
vnoremap > >gv " Retains visiual selection after indentation
vnoremap < <gv
nnoremap <leader>c :noh<CR>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Vim merge conflict
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
