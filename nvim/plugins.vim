" ======= NERDTree config =======
let NERDTreeShowHidden=1
nmap <leader>s :NERDTreeFind<CR>  " Reveal current file
nmap <leader>t :NERDTreeToggle<CR> " Toggles dir tree
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$','\.pyc$', '\.swp', 'node_modules']
let NERDTreeSHowHidden=1

" ==== FZF ====
nnoremap <C-P> :FZF<CR> 
let $FZF_DEFAULT_COMMAND = 'ag -g ""' " Uses silversearcher/ag in order to respect .gitignore

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit' }

" ==== Ack ====
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" fzf adds a command :Ag which searches for files
" interactively. But because we tell ack to use ag instead,
" running :Ack is actually running :Ag but without the interactive
" search. Confusing? yes.
nnoremap \ :Ack!<SPACE>

" === Ale ====
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_linters = {
			\   'javascript': ['eslint'],
			\}
let g:ale_fixers = {'javascript': ['eslint', 'prettier']}
autocmd BufWritePost *.js,*.jsx,*.json,*.md,*.py ALEFix

" == NCM2 ===
autocmd BufEnter  *  call ncm2#enable_for_buffer()
au User Ncm2PopupOpen set completeopt=noinsert,menu,noselect
au User Ncm2PopupClose set completeopt=menu

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
  \ 'typescript': ['/usr/local/bin/javascript-typescript-stdio'],
	\ 'python': ['/usr/local/bin/pyls'],
  \ }

nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient#textDocument_rename()<CR>

" ==== vim-notes ====
let g:notes_directories = ['~/Documents/Notes', '~/dev/journal']

" === Editor config ===
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

