set nocompatible
set encoding=utf8
set number
set numberwidth=2

syntax on
filetype plugin indent on

set omnifunc=syntaxcomplete#Complete
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set showtabline=1
set smartindent
set autoindent
set autoread
set showmatch
set cursorline
set ruler
set clipboard=unnamedplus
set splitright
set noswapfile
set nobackup
set nowb
set title
set showcmd
set mouse=a
set hidden
set nopaste
set noshowmode

" Install Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'   " See which files changed
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'ap/vim-buftabline'
Plug 'itchyny/lightline.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mkitt/tabline.vim'
Plug 'xolox/vim-misc' " Needed for vim-notes.
Plug 'xolox/vim-notes'

Plug 'joshdick/onedark.vim'
Plug 'albertorestifo/github.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'icymind/NeoSolarized'

" File/Dirs navigation/search
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

" Language support
Plug 'HerringtonDarkholme/yats.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sebdah/vim-delve'
Plug 'chemzqm/vim-jsx-improve'
Plug 'digitaltoad/vim-pug'
Plug 'hashivim/vim-terraform'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chr4/nginx.vim'
Plug 'w0rp/ale'
call plug#end()

source $HOME/.config/nvim/mappings.vim
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/ui.vim

if @% == ""
  bd
endif
