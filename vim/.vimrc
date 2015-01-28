" VIM Configuration
" Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>;
" (C) 2014

set encoding=utf8    " set up encoding
set ffs=unix,dos,mac " standart file type

filetype plugin on
filetype indent on

syntax on

" this code doesn't work on vim in the terminal
set autoread " auto read when file changed from outside

colorscheme bayus

set background=dark

set expandtab    " translate tab to space
set shiftwidth=2 " 1 tab = 2 space
set smarttab
set softtabstop=2
set tabstop=2

set ai " Auto indent
set si " Smart indent

set textwidth=80  " break every 80 character

"set relativenumber
set number
set numberwidth=4

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
" Treat .rss files as XML
autocmd BufNewFile,BufRead *.rss setfiletype xml
" remove trailing whitespace when saved
autocmd BufWritePre * :call Preserve("%s/\\s\\+$//e")

" make 81st column standout from the crowd
highlight ColorColumn ctermbg=red ctermfg=blue
call matchadd('ColorColumn', '\%81v', 100)

" github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-easy-align'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-endwise'
  Plug 'lilydjwg/colorizer'
  Plug 'groenewege/vim-less'
  Plug 'jiangmiao/auto-pairs'
  Plug 'fatih/vim-go'
  Plug 'rhysd/vim-clang-format'
call plug#end()


" vim-easy-align
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

" clang-format
let g:clang_format#command = 'clang-format-3.5'
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
