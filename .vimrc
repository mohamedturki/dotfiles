set nocompatible    " required
filetype off        " required

set encoding=utf8
filetype plugin indent on

"   Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"   Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all plugins here
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'jiangmiao/auto-pairs'

" Colorschemes
Plugin 'alessandroyorba/sierra'
Plugin 'lifepillar/vim-solarized8'
Plugin 'flazz/vim-colorschemes'
Plugin 'kristijanhusak/vim-hybrid-material'

" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'

" Add all plugins before this line
call vundle#end()   " required

syntax enable
set number
set expandtab
set softtabstop=4
set shiftwidth=4
set autoindent
set showmatch
set showcmd
set cursorline
set ts=4
set background=dark
set wildmenu
set clipboard=unnamed
set ttyfast
" Searching
set incsearch
set hlsearch

" Respect modeline in files
set modeline
set modelines=4
set ruler
set noswapfile

let mapleader = ','
set backspace=indent,eol,start

" Map autocomplete to TAB
imap <Tab> <C-N>

" Confirm selection and hide autocomplete menu
let g:ycm_key_list_stop_completion = ['<Enter>']

nnoremap <silent> j gj
nnoremap <silent> k gk

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

nmap <silent> <leader>k :NERDTreeToggle<cr>

set autoindent " automatically set indent of new line
set smartindent

set splitright
autocmd vimenter * NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$\']
let NERDTreeShowHidden=1

let g:user_emmet_leader_key='<c-y>'

let g:jsx_ext_required = 0

" Use the Solarized Dark theme
set background=dark
colorscheme hybrid_material
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set guifont=Hack:h12

let g:enable_bold_font = 1
" Powerline config
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" Powerline config for MacVim
if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Inconsolata\ for\ Powerline:h15
   endif
endif
