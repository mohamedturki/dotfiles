set nocompatible
set encoding=utf8
set number " Turns on line numbering
set numberwidth=2 " Sets the line numbers to 2 spaces

" ======= File =========
syntax on
filetype plugin indent on

set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoread
set autoindent
set showmatch " Matches parenthesis
set cursorline
set ruler
set clipboard=unnamed
autocmd BufWritePre * :%s/\s\+$//e " Removes whitespaces on save
set splitright  " Defaults splitting to right side


" ======= Plugins ========
" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" General
Plugin 'kien/ctrlp.vim'  " Fuzzy search
Plugin 'scrooloose/nerdtree'  " Sidebar for dir tree
Plugin 'scrooloose/nerdcommenter'  " Comment/uncomment large code
Plugin 'tpope/vim-surround'       " No, not for surround system.
Plugin 'tpope/vim-fugitive'       " Git
Plugin 'airblade/vim-gitgutter'   " See which files changed
Plugin 'itchyny/lightline.vim'    " Status line
Plugin 'jiangmiao/auto-pairs'     " Inserts or deletes [], () or quotes
Plugin 'Yggdroot/indentLine'      " Show indentation
Plugin 'editorconfig/editorconfig-vim'

" Colorschemes
Plugin 'tyrannicaltoucan/vim-quantum'

" Languages support
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'mattn/emmet-vim'
Plugin 'groenewege/vim-less'

call vundle#end()

" ===== Mapping ========
let mapleader=','
set backspace=indent,eol,start  " Make backspace behave normally

" ======= Search ========
set hlsearch  " Highlights found words in search
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>  " Cancels search with <ESC>
set wildignore+=*.log,*.sql,*.cache



" ======= Visual ========
set guifont=Hack:h12
colorscheme quantum
set background=dark
set termguicolors


" ======= NERDTree config =======
let NERDTreeShowHidden=1
nmap <leader>s :NERDTreeFind<CR>  " Reveal current file
nmap <leader>b :NERDTreeToggle<CR> " Toggles dir tree
autocmd VimEnter * NERDTree         " dir tree always open but not focused
let NERDTreeIgnore=['\.DS_Store', '\~$','\.pyc$', '\.swp']
let NERDTreeSHowHidden=1

" ====== Plugins config ========
let g:jsx_ext_required=0
let g:user_emmet_leader_key='<c-y>'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']


" ctrp + ag (the_silver_searcher)
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


