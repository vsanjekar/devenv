set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Status bar
Plugin 'bling/vim-airline'

" Color scheme
Plugin 'altercation/vim-colors-solarized'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
" Plugin 'airblade/vim-gitgutter'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

set ruler
"set number
set hlsearch
set ai
set expandtab
set shiftwidth=2
syntax enable
set background=dark
" colorscheme solarized

"map <C-[> :tabp <CR>
"map <C-]> :tabn <CR>
"tab mappings
" shorten :tabnew to :tn, :tabp to :th, :tabn to :tl
"ca tn tabnew
" ca tp tabp
" ca tn tabn
" CTRL-Tab is next tab
" map <C-Tab> <Esc>:tabnext<CR>
"noremap <C-Tab> :<C-U>tabnext<CR>
"inoremap <C-Tab> <C-\><C-N>:tabnext<CR>
"cnoremap <C-Tab> <C-C>:tabnext<CR>
" CTRL-SHIFT-Tab is previous tab
"noremap <C-S-Tab> :<C-U>tabprevious<CR>
"inoremap <C-S-Tab> <C-\><C-N>:tabprevious<CR>
" cnoremap <C-S-Tab> <C-C>:tabprevious<CR>

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
" call pathogen#helptags()
" call pathogen#runtime_append_all_bundles()
" execute pathogen#infect()
