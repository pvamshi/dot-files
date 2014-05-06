set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

Plugin 'kien/ctrlp.vim'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Plugin 'vim-scripts/mayansmoke'
Plugin 'luochen1990/rainbow'
Plugin 'Lokaltog/vim-powerline'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
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




"#########################################################################
"                       MY CONFIGURATION
"#########################################################################
"Clear search
set encoding=utf-8
highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred
highlight ExtraWhitespace  guibg=red ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace / \+$/
match ExtraWhitespace /\s\+$/

autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=darkred
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=darkred
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
"au InsertLeave *

set t_Co=256
set background=dark
colorscheme gruvbox

set hlsearch
set incsearch
set ignorecase
set smartcase
noremap <silent> <C-l> :nohl<CR><C-l>
vnoremap <silent> <C-l> :nohl<CR><C-l>
inoremap <silent> <C-l> :nohl<CR><C-l>

set number
syntax on
autocmd! bufwritepost .vimrc source %
"Automatic reloading of vimrc
"augroup AutoReloadVimRC
"	au!
	" automatically reload vimrc when it's saved
"	au BufWritePost $MYVIMRC so $MYVIMRC
"augroup END

"set clipboard=unnamed
set bs=2
set mouse=a
set pastetoggle=<F2>

let mapleader=";"

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set nobackup
set nowritebackup
set noswapfile

set laststatus=2

set wildignore+=*.pyc
