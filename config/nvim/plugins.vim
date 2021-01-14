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

" ==== vim-notes ====
let g:notes_directories = ['~/Documents/Notes']
let g:notes_title_sync = 'no'
" === Editor config ===
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" === vim-go ====
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"


" ===== vim-jsdoc ====
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description = 1
let g:jsdoc_additional_descriptions = 1

" ===== lightline =====
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }

" ===== Terraform ===
let g:terraform_fmt_on_save=1
