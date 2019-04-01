set background=light
colorscheme NeoSolarized
set lazyredraw
set termguicolors

autocmd! GUIEnter * set vb t_vb=    " Removes bell in MacVim
set guioptions=     " Removes scrollbars in MacVim
autocmd VimResized * wincmd =
set guicursor=n-v-c-sm-i:block,ci-ve:ver25,r-cr-o:hor20

" Treat .json files as JS
autocmd BufNewFile,BufRead *.js setfiletype json syntax=javascript
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

let g:tablineclosebutton=1
