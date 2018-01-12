" VIM Configuration
" Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>;
" (C) 2014

set encoding=utf8    " set up encoding
set ffs=unix,dos,mac " standart file type

filetype plugin on
filetype indent on


" this code doesn't work on vim in the terminal
set autoread " auto read when file changed from outside


set background=dark

set expandtab    " translate tab to space
set shiftwidth=4 " 1 tab = 4 space
set smarttab
set softtabstop=4
set tabstop=4

" forces vim to source .vimrc file if it present in working directory
set exrc
" restrict usage of some commands in non-default .vimrc files
set secure

set ai " Auto indent
set si " Smart indent

set textwidth=80  " break every 80 character
" make 81st column standout from the crowd
" highlight ColorColumn ctermbg=59
" call matchadd('ColorColumn', '\%81v', 100)

" set relative number
set number
set numberwidth=4

" Hightlight the current line
set cursorline

set ignorecase
set smartcase
set hlsearch
set incsearch

set nobackup
set nowb
set noswapfile

" show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" Alt+arrow navigation
nmap <silent> <A-Up>    : wincmd k<CR>
nmap <silent> <A-Down>  : wincmd j<CR>
nmap <silent> <A-Left>  : wincmd h<CR>
nmap <silent> <A-Right> : wincmd l<CR>

" Preserve the state
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Enable file type detection
filetype on
" make file must use tab character
autocmd FileType make setlocal ts=4 sts=4 sw=4 noexpandtab
" Golang use 4 tab
autocmd FileType go setlocal ts=4 sts=4 sw=4 noexpandtab
" JSON use 4 tab
autocmd FileType json setlocal ts=4 sts=4 sw=4 noexpandtab
" Treat .rss files as XML
autocmd BufNewFile,BufRead *.rss setfiletype xml
" remove trailing whitespace when saved
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
    Plug 'vim-python/python-syntax' "Python support
    Plug 'junegunn/vim-easy-align' "Space align tool
    Plug 'vim-airline/vim-airline' "Show buffer ala-tab
    Plug 'vim-airline/vim-airline-themes' "Airline theme colors
    Plug 'jiangmiao/auto-pairs' "For auto-close bracket
    Plug 'maralla/completor.vim' "Autocomplete for any lang; no method support
    Plug 'tmhedberg/SimpylFold' "Python folding; command: zm, zr, zc, zo, za
    Plug 'scrooloose/nerdtree' "File browsing
    Plug 'vim-scripts/indentpython.vim' "Python auto-indent
    Plug 'vim-syntastic/syntastic' "Syntax checker
"    Plug 'Valloric/YouCompleteMe'
"    Plug 'davidhalter/jedi-vim' "Autocomplete for python; no virtualenv support
"    Plug 'nvie/vim-flake8' "Python syntax checker
"  Plug 'tpope/vim-endwise'
"  Plug 'lilydjwg/colorizer'
"  Plug 'groenewege/vim-less'
"  Plug 'fatih/vim-go'
"  Plug 'rhysd/vim-clang-format'
"  Plug 'mattn/emmet-vim'
"  Plug 'elixir-lang/vim-elixir'
"  Plug 'joshdick/onedark.vim'
"  Plug 'sheerun/vim-polyglot'
call plug#end()


" vim-easy-align
" Start interactive EasyAlign in visual mode
" Usage: vipal -> alignment
xmap al <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
" nmap <Leader>a <Plug>(EasyAlign)

" vim-airline for status bar
" set laststatus=2
" enable the list of buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = 't'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_theme='minimalist'

" jedi-vim config; disable doctring popup
autocmd FileType python setlocal completeopt-=preview

" vim-flake8
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

" clang-format
" let g:clang_format#command = 'clang-format-3.5'
" map to <Leader>cf in C++ code
" autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
" autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Toggle auto formatting:
" nmap <Leader>C :ClangFormatAutoToggle<CR>


syntax on
colorscheme white

" Vim 8.0; we can use a backspace normally
set backspace=indent,eol,start

" completor.vim setting for using tab to select the completion
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
" let g:completor_set_options = 0
" let g:completor_debug=1 " Enable debug to logfile pythonx/completor.log
let g:completor_python_binary = 'python'

"python with virtualenv support
"py3 << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  #execfile(activate_this, dict(__file__=activate_this))
"  with open(activate_this) as f:
"    code = compile(f.read(), activate_this, 'exec')
"    exec(code, dict(__file__=activate_this))
"EOF

" Shortcut CTRL+o untuk nerdtree
map <C-o> :NERDTreeToggle<CR>

" Identation settings for python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Syntastic conf
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['flake8', 'mypy']
let g:syntastic_python_checkers = ['flake8']

" Set clipboard, so we can do like: y then CTRL+V to copy outside vim
set clipboard=unnamedplus
