

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
"Ag search " 
Plugin 'rking/ag.vim'
Plugin 'marijnh/tern_for_vim'
"Rails support
Plugin 'tpope/vim-rails'
"Javascript beautifier
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

"Javascript looks nice 
Plugin 'jelera/vim-javascript-syntax'

"Indent guides
"Plugin 'nathanaelkane/vim-indent-guides'

"Add brackets automatically 
Plugin 'Raimondi/delimitMate'
" Javascript suport"
" Plugin 'pangloss/vim-javascript'
" All of your Plugins must be added before the following line

"Colorscheme
Plugin 'Lokaltog/vim-distinguished'

"indent guides
" Plugin 'Yggdroot/indentLine'

Plugin 'othree/html5.vim'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
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
" colorscheme gruvbox
colorscheme distinguished


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


nnoremap <leader>q :bd<CR>

match Error /\s\+$/
inoremap <leader># #{}<ESC>i
nnoremap <leader>d ologger.debug "============ line no : <C-r>=line('.')<CR> ============="<ESC>T i
nnoremap <leader>n :NERDTreeToggle<CR>
:let g:html_indent_inctags = "html,body,head,tbody,td,th,tb,div"
set tabstop=2 shiftwidth=2 expandtab


"jsbeautify
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
"adds an enter if you are in between {} 
imap <C-c> <CR><Esc>O

"Folding tutorial 
"http://smartic.us/2009/04/06/code-folding-in-vim/
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldenable        "dont fold by default
set foldlevel=1         "this is just what i use
" `za` - toggles
" `zc` - closes
" `zo` - opens
" `zR` - open all
" `zM` - close all
