" Github like theme for vim
" This on going process for each syntax
" 12 June 2016
" Bayu Aldi Yansyah <bayualdiyansyah@gmail.com>
set background=dark
highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name="githublike"

" Vim UI configuration
" Line number color
hi LineNr cterm=NONE ctermfg=253 ctermbg=NONE
" Current line color
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE

" Theme
" comment color: #969896 246

" Vim color
hi Comment ctermfg=246
hi Normal  ctermfg=235
hi Visual  ctermbg=147

hi vimCommand     ctermfg=160
hi vimFuncName    ctermfg=093
hi vimGroup       ctermfg=235
hi vimHiAttrib    ctermfg=235
hi vimHiCTerm     ctermfg=235
hi vimHiCTermFgBg ctermfg=235
hi vimHiGroup     ctermfg=235
hi vimHiNmbr      ctermfg=057
hi vimOper        ctermfg=235
hi vimOption      ctermfg=235
hi vimParenSep    ctermfg=235
hi vimString      ctermfg=057
hi vimSynType     ctermfg=235
hi vimVar         ctermfg=235

" Python syntax color
hi pythonBuiltIn     ctermfg=057
hi pythonException     ctermfg=160
hi pythonExceptions     ctermfg=160
hi pythonComment     ctermfg=246
hi pythonConditional ctermfg=160
hi pythonFunction    ctermfg=093
hi pythonInclude     ctermfg=160
hi pythonNumber      ctermfg=057
hi pythonOperator    ctermfg=160
hi pythonRepeat      ctermfg=160
hi pythonStatement   ctermfg=160
hi pythonString      ctermfg=057

" C syntax color
hi cCharacter        ctermfg=057
hi cConditional      ctermfg=160
hi cDefine           ctermfg=160
hi cFloat            ctermfg=057
hi cInclude          ctermfg=160
hi cIncluded         ctermfg=235
hi cNumber           ctermfg=057
hi cOperator         ctermfg=160
hi cRepeat           ctermfg=160
hi cSpecial          ctermfg=202
hi cSpecialCharacter ctermfg=202
hi cStatement        ctermfg=160
hi cStorageClass     ctermfg=057
hi cString           ctermfg=057
hi cStructure        ctermfg=057
hi cType             ctermfg=057
hi cConstant         ctermfg=057

" shell syntax color
hi shConditional ctermfg=160
hi shRange       ctermfg=160
hi shStatement   ctermfg=160
hi shEcho        ctermfg=057
hi shOption      ctermfg=235
hi shNumber      ctermfg=057

" Makefile syntax
hi makeCommands   ctermfg=235
hi makeIdent      ctermfg=235
hi makeSpecTarget ctermfg=093
hi makeTarget     ctermfg=093
hi makeCmdNextLine ctermfg=235

" Markdown syntax
hi markdownCode             ctermfg=093
hi markdownCodeDelimiter    ctermfg=093
hi markdownH1               ctermfg=235
hi markdownH2               ctermfg=235
hi markdownH3               ctermfg=235
hi markdownHeadingDelimiter ctermfg=093
hi markdownId               ctermfg=093
hi markdownIdDeclaration    ctermfg=093
hi markdownLinkText         ctermfg=093
hi markdownUrl              ctermfg=235
