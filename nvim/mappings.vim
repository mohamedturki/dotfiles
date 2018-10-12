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
