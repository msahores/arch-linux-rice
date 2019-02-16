"   /\/\   __ _ _ __  _   ___  __ /\   /(_)_ __ ___  _ __ ___ 
"  /    \ / _` | '_ \| | | \ \/ / \ \ / / | '_ ` _ \| '__/ __|
" / /\/\ \ (_| | | | | |_| |>  <   \ V /| | | | | | | | | (__ 
" \/    \/\__,_|_| |_|\__,_/_/\_\   \_/ |_|_| |_| |_|_|  \___|
                                                             
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

Plugin 'gorodinskiy/vim-coloresque'
Plugin 'ctrlp.vim'
Plugin 'prettier/vim-prettier'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'mattn/emmet-vim'
"Asynchronous Lint Engine:
Plugin 'w0rp/ale'

call vundle#end()            " required
filetype plugin indent on    " required

"Sceme template:
colorscheme gruvbox
set guifont=Monospace\ 16
syntax enable
set background=dark

set number
"for nerdCommenter plugin
filetype plugin on

"Mappings:

"Refresh vim with source
map <F5> :source ~/.vimrc<CR>
"Nav Tabs:
map <F7> :tabp <CR>
map <F8> :tabn <CR>

:let mapleader = ","
set timeout timeoutlen=1500

"Search Highlighting:
set hlsearch
"Redraws the screen and removes any search highliting
nnoremap <silent> <C-l> :nohl <CR>
map <C-t> :NERDTreeToggle<CR>

"Temporary configuration for tab key:
"autocmd Filetype js setlocal tabstop=4
"tabstop=4 ////creoo...

"For Emmet:
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}

"For Es Lint:
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file



