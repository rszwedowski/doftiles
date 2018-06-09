" searching 
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers

" tabs settings
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

" editor 
set showmatch " matching braces
set number relativenumber
" switch syntax highlighting on
syntax on

set encoding=utf8

set number

set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the satus line all the time


""" plugins
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive' "git plugin
Plug 'scrooloose/nerdtree' "fancy file explorer
Plug 'kien/ctrlp.vim' " fuzzy find files
Plug 'sirver/ultisnips' "snippets for Python
Plug 'vim-scripts/taglist.vim'
Plug 'tpope/vim-surround' "ultimate plugin for surroundings

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
autocmd vimenter * NERDTree
