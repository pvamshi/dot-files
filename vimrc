

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
"Plugin 'Lokaltog/vim-powerline'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'

Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'rking/ag.vim'
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

"suppress warnings for changed buffers
set hidden

" let g:airline#extensions#tabline#enabled = 1 " buffer status in the top


nnoremap <LEFT> :bp<CR>
nnoremap <RIGHT> :bn<CR>
"set autochdir "Change the directory to current file automatically

"" Status line
""set statusline=   " clear the statusline for when vimrc is reloaded
"set statusline+=%-3.3n\                      " buffer number
"set statusline+=%{fugitive#statusline()}     " Git status
"set statusline+=%f\                          " file name
"set statusline+=%h%m%r%w                     " flags
"set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
"set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
"set statusline+=%{&fileformat}]              " file format
"set statusline+=%=                           " right align
"set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
"set statusline+=%b,0x%-8B\                   " current char
"set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P
"set statusline=
"set statusline+=%<\                       " cut at start
"set statusline+=%2*[%n%H%M%R%W]%*\        " flags and buf no
"set statusline+=%-40f\                    " path
"set statusline+=%=%1*%y%*%*\              " file type
"set statusline+=%10((%l,%c)%)\            " line and column
"set statusline+=%P                        " percentage of file

nnoremap <leader>1 :buff 1<CR>
nnoremap <leader>2 :buff 2<CR>
nnoremap <leader>3 :buff 3<CR>
nnoremap <leader>4 :buff 4<CR>
nnoremap <leader>5 :buff 5<CR>
nnoremap <leader>6 :buff 6<CR>
nnoremap <leader>7 :buff 7<CR>
nnoremap <leader>8 :buff 8<CR>
nnoremap <leader>9 :buff 9<CR>
nnoremap <leader>; :ls <CR>
nnoremap <leader>q :bd<CR>

match Error /\s\+$/
inoremap <leader># #{}<ESC>i
nnoremap <leader>d ologger.debug "============ line no : <C-r>=line('.')<CR> ============="<ESC>T i
nnoremap <leader>n :NERDTreeToggle<CR>
