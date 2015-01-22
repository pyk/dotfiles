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
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  Plug 'jiangmiao/auto-pairs'
  Plug 'jnwhiteh/vim-golang'
call plug#end()


" vim-easy-align
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

" http://vim.wikia.com/wiki/Have_Vim_check_automatically_if_the_file_has_changed_externally
command! -bang WatchForChanges                  :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0})
command! -bang WatchForChangesWhileInThisBuffer :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0, 'while_in_this_buffer_only': 1})
command! -bang WatchForChangesAllFile           :call WatchForChanges('*', {'toggle': 1, 'autoread': <bang>0})

function! WatchForChanges(bufname, ...)
  if a:bufname == '*'
    let id = 'WatchForChanges'.'AnyBuffer'
    let bufspec = ''
  else
    if bufnr(a:bufname) == -1
      echoerr "Buffer " . a:bufname . " doesn't exist"
      return
    end
    let id = 'WatchForChanges'.bufnr(a:bufname)
    let bufspec = a:bufname
  end
  if len(a:000)
    let options = {}
  else
    if type(a:1) == type({})
      let options = a:1
    else
      echoerr "Argument must be a Dict"
    end
  end
  let autoread    = has_key(options, 'autoread')    ? options['autoread']    : 0
  let toggle      = has_key(options, 'toggle')      ? options['toggle']      : 0
  let disable     = has_key(options, 'disable')     ? options['disable']     : 0
  let more_events = has_key(options, 'more_events') ? options['more_events'] : 1
  let while_in_this_buffer_only = has_key(options, 'while_in_this_buffer_only') ? options['while_in_this_buffer_only'] : 0

  if while_in_this_buffer_only
    let event_bufspec = a:bufname
  else
    let event_bufspec = '*.*'
  end

  let reg_saved = @"
  let msg = "\n"

  redir @"
    silent! exec 'au '.id
  redir END
  let l:defined = (@" !~ 'E216: No such group or event:')")
  if !l:defined
    if l:autoread
      let msg = msg . 'Autoread enabled - '
      if a:bufname == '*.*'
        set autoread
      else
        setlocal autoread
      end
    end
    silent! exec 'augroup '.id
      if a:bufname != '*.*'
        exec "au BufDelete    ".a:bufname . " execute 'au! ".id."' | execute 'augroup! ".id."'"
      end
        exec "au BufEnter     ".event_bufspec . " :checktime ".bufspec
        exec "au CursorHold   ".event_bufspec . " :checktime ".bufspec
        exec "au CursorHoldI  ".event_bufspec . " :checktime ".bufspec

      if more_events
        exec "au CursorMoved  ".event_bufspec . " :checktime ".bufspec
        exec "au CursorMovedI ".event_bufspec . " :checktime ".bufspec
      end
    augroup END
    let msg = msg . 'Now watching ' . bufspec . ' for external updates...'
  end

  if l:disable || (l:toggle && l:defined)
    if l:autoread
      let msg = msg . 'Autoread disabled - '
      if a:bufname == '*.*'
        set noautoread
      else
        setlocal noautoread
      end
    end
    silent! exec 'au! '.id
    silent! exec 'augroup! '.id
    let msg = msg . 'No longer watching ' . bufspec . ' for external updates.'
  elseif l:defined
    let msg = msg . 'Already watching ' . bufspec . ' for external updates'
  end
  " echo msg
  let @"=reg_saved"
endfunction

autocmd BufEnter *.* :WatchForChanges!
