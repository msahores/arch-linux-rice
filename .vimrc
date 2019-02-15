"  /\/\   __ _ _ __  _   ___  __ /\   /(_)_ __ ___  _ __ ___ 
" /    \ / _` | '_ \| | | \ \/ / \ \ / / | '_ ` _ \| '__/ __|
"/ /\/\ \ (_| | | | | |_| |>  <   \ V /| | | | | | | | | (__ 
"\/    \/\__,_|_| |_|\__,_/_/\_\   \_/ |_|_| |_| |_|_|  \___|
                                                             

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins Manager"
Plugin 'VundleVim/Vundle.vim'

"Color Scheme Template"
Plugin 'morhetz/gruvbox'

Plugin 'scrooloose/nerdtree'

"Snippets 
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Optional:
Plugin 'honza/vim-snippets'

call vundle#end()            " required
filetype plugin indent on    " required

"Sceme template:
colorscheme gruvbox
set guifont=Monospace\ 16
syntax enable
set background=dark

set number

"Mappings:

"Refresh vim with source
map <F5> :source ~/.vimrc<CR>

"Search Highlighting:
set hlsearch
"Redraws the screen and removes any search highliting
nnoremap <silent> <C-l> :nohl <CR>

map <C-t> :NERDTreeToggle<CR>
