

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


" Shows different levels of paranthesis in diff colors 
Plugin 'luochen1990/rainbow'

" Plugin 'Lokaltog/vim-powerline'

"colorshcme mayan smoke
Plugin 'vim-scripts/mayansmoke'
"colorscheme lucious
Plugin 'jonathanfilip/vim-lucius'
"Color scheme gryvbox
Plugin 'morhetz/gruvbox'

"python auto completion 
"Plugin 'davidhalter/jedi-vim'

"Python pylint autocompletion etc 
Plugin 'klen/python-mode'

Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'

" Statusbar at the bottom 
Plugin 'bling/vim-airline'

" Git management 
Plugin 'airblade/vim-gitgutter'

" ack
" Plugin 'mileszs/ack.vim'
Plugin 'tomtom/tcomment_vim'
"Ag search " 
Plugin 'rking/ag.vim'
"Plugin 'marijnh/tern_for_vim'
"Rails support
Plugin 'tpope/vim-rails'
"Javascript beautifier
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'

"Javascript looks nice 
Plugin 'jelera/vim-javascript-syntax'

"Jslint
Plugin 'wookiehangover/jshint.vim'

"Indent guides
Plugin 'nathanaelkane/vim-indent-guides'

"Add brackets automatically 
Plugin 'Raimondi/delimitMate'
" Javascript suport"
" Plugin 'pangloss/vim-javascript'
" All of your Plugins must be added before the following line

"Colorscheme
Plugin 'Lokaltog/vim-distinguished'

Plugin 'altercation/vim-colors-solarized'

Plugin 'junegunn/seoul256.vim'
Plugin 'dsolstad/vim-wombat256i'

"indent guides
" Plugin 'Yggdroot/indentLine'

"Plugin 'othree/html5.vim'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'


" Easy motion to navigate like vimperator 
"Plugin 'Lokaltog/vim-easymotion'

"Coffee script support
"Plugin 'kchmck/vim-coffee-script'

"Jade support
"Plugin 'digitaltoad/vim-jade'

" Use [ and ] to perform varios actions 
"Plugin 'tpope/vim-unimpaired'

"Graphical Undo 
Plugin 'sjl/gundo.vim'

"colorscheme
Plugin 'chriskempson/base16-vim'
 
Plugin 'nanotech/jellybeans.vim'
      
" HTML zencoding
Plugin 'mattn/emmet-vim'

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
"set background=dark
" colorscheme gruvbox
colorscheme  seoul256
" colorscheme solarized
" let g:solarized_termcolors=256


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
cmap w!! w !sudo tee % >/dev/null
set lazyredraw          " redraw only when we need to."
 " move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]`

" jj is escape
inoremap jj <esc>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

"Telling ctrlp to use ag
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" toggle between number and relativenumber
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc

" strips trailing whitespace at the end of files. this
" is called on buffer write in the autogroup above.
function! <SID>StripTrailingWhitespaces()
    " save last search & cursor position
    let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    let @/=_s
    call cursor(l, c)
endfunction

" Display all buffers 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"Warnings 
nnoremap <silent><F3> :lnext<CR>
nnoremap <silent><F4> :lprevious<CR>

nnoremap <leader>1 :b1<CR>
nnoremap <leader>2 :b2<CR>
nnoremap <leader>3 :b3<CR>
nnoremap <leader>4 :b4<CR>
nnoremap <leader>5 :b5<CR>
nnoremap <leader>6 :b6<CR>
nnoremap <leader>7 :b7<CR>
nnoremap <leader>8 :b8<CR>
nnoremap <leader>9 :b9<CR>
nnoremap <leader>0 :b0<CR>
set guifont=Inconsolata\ for\ Powerline
set guioptions=

"emmet configuration ===================================================
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
"Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"=========================================================================
