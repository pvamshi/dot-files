" Installed plugins {{{
call plug#begin()
Plug 'sheerun/vim-polyglot' 			" All languages support
Plug 'crusoexia/vim-javascript-lib'	" Javascript libraries syntax support
Plug 'morhetz/gruvbox'			" colorscheme
Plug 'tpope/vim-commentary' "Comment
Plug 'ctrlpvim/ctrlp.vim'		" fuzzy search
Plug 'scrooloose/nerdtree' 	" nerd tree
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim' " ag search
Plug 'scrooloose/syntastic' " For eslint :( 
Plug 'maksimr/vim-jsbeautify' " js beautify
Plug 'dbakker/vim-projectroot' " Auto identify project root
Plug 'mtscout6/syntastic-local-eslint.vim'
call plug#end()
" }}}
" {{{ Leader & misc
filetype plugin on
let mapleader=';'
"no more accidental ex mode. I hate this !!
nnoremap Q <nop> 
map q: :q
set lazyredraw          " redraw only when we need to.
set wildmenu " opens file directory in ex
set backspace=indent,eol,start
" }}}
" {{{ Theme 
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256  " vim-monokai now only support 256 colours in terminal.
colo gruvbox
set background=dark
" }}}
" {{{ Appearance 
set cursorline
set number
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>  
" highlight last inserted text
nnoremap gV `[v`]

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
set list
" }}}
" {{{ tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
retab
" }}}
" {{{ Ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/bower_components/*,*/node_modules/*
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' "make ctrlp faster
" }}}
" {{{ Nerd Tree
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close vim if nerdtree is alone opened
" }}}
" {{{ Folding
"Folding tutorial 
"http://smartic.us/2009/04/06/code-folding-in-vim/
set foldmethod=syntax   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set foldenable        "dont fold by default
set foldlevel=3         "this is just what i use
" `za` - toggles
" `zc` - closes
" `zo` - opens
" `zR` - open all
" `zM` - close all
" }}} 
" {{{ Hacks 
" Move cursor to the end after pasting
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
" }}}
"{{{ Airline 
let g:airline_theme='wombat'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''
" }}}
" {{{ Change project root dir
function! <SID>AutoProjectRootCD()
  try
    if &ft != 'help'
      ProjectRootCD
    endif
  catch
    " Silently ignore invalid buffers
  endtry
endfunction

autocmd BufEnter * call <SID>AutoProjectRootCD()
" }}}
" {{{ Beautify 
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" }}}
"{{{ Syntastic
let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol = '✖'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction
let b:syntastic_javascript_eslint_exec = StrTrim(system('npm-which eslint'))
" }}}


" vim:foldmethod=marker:foldlevel=0
