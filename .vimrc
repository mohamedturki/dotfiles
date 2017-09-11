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
set noswapfile
set nobackup
set nowb
set title       " Show filename in the tab title
set showcmd
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
Plugin 'editorconfig/editorconfig-vim'

" Colorschemes
Plugin 'tyrannicaltoucan/vim-quantum'

" Languages support
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'elzr/vim-json'
Plugin 'mattn/emmet-vim'
Plugin 'groenewege/vim-less'

" Snippets
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'SirVer/ultisnips'
call vundle#end()

" ===== Mapping ========
let mapleader=','
set backspace=indent,eol,start  " Make backspace behave normally

" ======= Search ========
set hlsearch  " Highlights found words in search
set wildignore+=*.log,*.sql,*.cache
set wildignore+=*/tmp/*                                     " ctrlp - ignore files in tmp directories
set wildignore+=*/target/*                                  " ctrlp - ignore files in target directories
set wildignore+=*/build/*                                   " ctrlp - ignore gradle build directories
set wildignore+=*.so                                        " ctrlp - ignore .so files
set wildignore+=*.o                                         " ctrlp - ignore .o files
set wildignore+=*.class                                     " ctrlp - ignore .class files
set wildignore+=*.swp                                       " ctrlp - ignore .swp files
set wildignore+=*.zip                                       " ctrlp - ignore .zip files
set wildignore+=*.pdf                                       " ctrlp - ignore .pdf files
set wildignore+=*/node_modules/*                            " ctrlp - ignore node modules
set wildignore+=*/bower_components/*                        " ctrlp - ignore bower components
set wildignore+=*/dist/*                                    " ctrlp - ignore grunt build directory



" ======= Visual ========
set guifont=Monaco:h12
colorscheme quantum
set background=dark
set termguicolors
autocmd! GUIEnter * set vb t_vb=    " Removes bell in MacVim
set guioptions=     " Removes scrollbars in MacVim
autocmd VimResized * wincmd =

" Treat .json files as JS
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

" Treat .vue files as JS
autocmd BufNewFile,BufRead *.vue setfiletype javascript syntax=javascript

" Treat .md files as Markdown
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

" ======= NERDTree config =======
let NERDTreeShowHidden=1
nmap <leader>s :NERDTreeFind<CR>  " Reveal current file
nmap <leader>b :NERDTreeToggle<CR> " Toggles dir tree
autocmd VimEnter * NERDTree         " dir tree always open but not focused
autocmd VimEnter * wincmd p
let NERDTreeIgnore=['\.DS_Store', '\~$','\.pyc$', '\.swp', 'node_modules', '\.git']
let NERDTreeSHowHidden=1

" ====== Plugins config ========
let g:jsx_ext_required=0
let g:vim_jsx_pretty_colorful_config = 1
let g:user_emmet_leader_key='<c-y>'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" ===== ctrlp config =========
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_by_filename = 0

" ===== UltiSnips config =======
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" ctrp + ag (the_silver_searcher)
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


