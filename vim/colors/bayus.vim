set background=dark
highlight clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name="bayus"

" RGB     XTERM
"#121212 16  #287373 30 #5e468c 60 #4779B3 67 #7f62b3 97  #c0c0c0 145

hi Boolean      ctermfg=67   ctermbg=NONE cterm=NONE
hi ColorColumn  ctermfg=NONE ctermbg=NONE cterm=NONE
hi Conceal      ctermfg=NONE ctermbg=NONE cterm=NONE
hi Cursor       ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorIM     ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorLine   ctermfg=NONE ctermbg=NONE cterm=NONE
hi DiffAdd      ctermfg=NONE ctermbg=NONE cterm=NONE
hi DiffChange   ctermfg=NONE ctermbg=NONE cterm=NONE
hi DiffDelete   ctermfg=NONE ctermbg=NONE cterm=NONE
hi DiffText     ctermfg=NONE ctermbg=NONE cterm=NONE
hi Directory    ctermfg=NONE ctermbg=NONE cterm=NONE
hi ErrorMsg     ctermfg=231  ctermbg=NONE cterm=NONE
hi FoldColumn   ctermfg=NONE ctermbg=NONE cterm=NONE
hi Folded       ctermfg=NONE ctermbg=NONE cterm=NONE
hi IncSearch    ctermfg=59   ctermbg=231  cterm=NONE
hi LineNr       ctermfg=59   ctermbg=NONE cterm=NONE
hi ModeMsg      ctermfg=NONE ctermbg=NONE cterm=NONE
hi MoreMsg      ctermfg=NONE ctermbg=NONE cterm=NONE
hi NonText      ctermfg=NONE ctermbg=NONE cterm=NONE
hi Normal       ctermfg=145  ctermbg=NONE cterm=NONE
hi Pmenu        ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSbar    ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel     ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuThumb   ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question     ctermfg=NONE ctermbg=NONE cterm=NONE
hi Search       ctermfg=NONE ctermbg=NONE cterm=NONE
hi SignColumn   ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpecialKey   ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpellBad     ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpellCap     ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpellLocal   ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpellRare    ctermfg=NONE ctermbg=NONE cterm=NONE
hi StatusLine   ctermfg=145  ctermbg=NONE cterm=NONE
hi StatusLineNC ctermfg=59   ctermbg=NONE cterm=NONE
hi TabLine      ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLineFill  ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLineSel   ctermfg=NONE ctermbg=NONE cterm=NONE
hi Title        ctermfg=NONE ctermbg=NONE cterm=NONE
hi VertSplit    ctermfg=59   ctermbg=NONE cterm=NONE
hi Visual       ctermfg=231  ctermbg=60   cterm=NONE
hi VisualNOS    ctermfg=NONE ctermbg=NONE cterm=NONE
hi WarningMsg   ctermfg=NONE ctermbg=NONE cterm=NONE

hi vimAutoEvent    ctermfg=97  ctermbg=NONE cterm=NONE
hi vimBracket      ctermfg=67  ctermbg=NONE cterm=NONE
hi vimCommand      ctermfg=60  ctermbg=NONE cterm=NONE
hi vimComment      ctermfg=59  ctermbg=NONE cterm=NONE
hi vimCommentTitle ctermfg=59  ctermbg=NONE cterm=bold
hi vimFgBgAttrib   ctermfg=30  ctermbg=NONE cterm=NONE
hi vimFunc         ctermfg=97  ctermbg=NONE cterm=NONE
hi vimFuncName     ctermfg=97  ctermbg=NONE cterm=NONE
hi vimFuncSID      ctermfg=67  ctermbg=NONE cterm=NONE
hi vimFuncVar      ctermfg=97  ctermbg=NONE cterm=NONE
hi vimFunction     ctermfg=97  ctermbg=NONE cterm=NONE
hi vimGroup        ctermfg=67  ctermbg=NONE cterm=NONE
hi vimHiAttrib     ctermfg=30  ctermbg=NONE cterm=NONE
hi vimHiCterm      ctermfg=145 ctermbg=NONE cterm=NONE
hi vimHiCtermFgBg  ctermfg=145 ctermbg=NONE cterm=NONE
hi vimHiGroup      ctermfg=67  ctermbg=NONE cterm=NONE
hi vimHiKeyList    ctermfg=67  ctermbg=NONE cterm=NONE
hi vimHighlight    ctermfg=60  ctermbg=NONE cterm=NONE
hi vimLineComment  ctermfg=59  ctermbg=NONE cterm=NONE
hi vimMapLhs       ctermfg=67  ctermbg=NONE cterm=NONE
hi vimNotation     ctermfg=67  ctermbg=NONE cterm=NONE
hi vimNumber       ctermfg=97  ctermbg=NONE cterm=NONE
hi vimOper         ctermfg=145 ctermbg=NONE cterm=NONE
hi vimOption       ctermfg=67  ctermbg=NONE cterm=NONE
hi vimSet          ctermfg=60  ctermbg=NONE cterm=NONE
hi vimSetSep       ctermfg=59  ctermbg=NONE cterm=NONE
hi vimString       ctermfg=30  ctermbg=NONE cterm=NONE
hi vimSynType      ctermfg=97  ctermbg=NONE cterm=NONE
hi vimVar          ctermfg=97  ctermbg=NONE cterm=NONE

hi rubyASCIIcode                ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyAliasDeclaration         ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyAliasDeclaration2        ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyArrayDelimiter           ctermfg=145  ctermbg=NONE cterm=NONE
hi rubyAttribute                ctermfg=145  ctermbg=NONE cterm=NONE
hi rubyBeginEnd                 ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyBlock                    ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyBlockArgument            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyBlockParameter           ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyBlockParameterList       ctermfg=145  ctermbg=NONE cterm=NONE
hi rubyBoolean                  ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyClass                    ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyClassDeclaration         ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyClassVariable            ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyComment                  ctermfg=59   ctermbg=NONE cterm=NONE
hi rubyConditional              ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyConditionalModifier      ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyConstant                 ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyControl                  ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyCurlyBlock               ctermfg=145  ctermbg=NONE cterm=NONE
hi rubyData                     ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyDeclaration              ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyDefine                   ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyDelimEscape              ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyDocumentation            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyEscape                   ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyEval                     ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyException                ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyExceptional              ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyExtendedStringSpecial    ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyFloat                    ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyFunction                 ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyGlobalVariable           ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyHeNONEocStart            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyInclude                  ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyInstanceVariable         ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyInteger                  ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyInterpolation            ctermfg=145  ctermbg=NONE cterm=NONE
hi rubyInterpolationDelimiter   ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyInvalidVariable          ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyKeyword                  ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyKeywordAsMethod          ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyLocalVariableOrMethod    ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyMethodBlock              ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyMethodDeclaration        ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyMethodExceptional        ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyModule                   ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyModuleDeclaration        ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyMultilineComment         ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyNestedAngleBrackets      ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyNestedCurlyBraces        ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyNestedParentheses        ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyNestedSquareBrackets     ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyNoInterpolation          ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyNotTop                   ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyOperator                 ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyPNONEefinedConstant      ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyPNONEefinedVariable      ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyPseudoVariable           ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyQuoteEscape              ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyRailsARAssociationMethod ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyRailsARMethod            ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyRailsMethod              ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyRailsRenderMethod        ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyRailsUserClass           ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyRegexp                   ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyRegexpAnchor             ctermfg=145  ctermbg=NONE cterm=NONE
hi rubyRegexpBrackets           ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyRegexpCharClass          ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyRegexpComment            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyRegexpDelimiter          ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyRegexpDot                ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyRegexpEscape             ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyRegexpParens             ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyRegexpQuantifier         ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyRegexpSpecial            ctermfg=60   ctermbg=NONE cterm=NONE
hi rubyRepeatModifier           ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubySharpBang                ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubyString                   ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyStringDelimiter          ctermfg=30   ctermbg=NONE cterm=NONE
hi rubyStringEscape             ctermfg=67   ctermbg=NONE cterm=NONE
hi rubyStringSpecial            ctermfg=NONE ctermbg=NONE cterm=NONE
hi rubySymbol                   ctermfg=97   ctermbg=NONE cterm=NONE
hi rubyTodo                     ctermfg=60   ctermbg=NONE cterm=NONE

hi yamlAlias                    ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlAnchor                   ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlBlockCollectionItemSmart ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlBlockMappingKey          ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlBlockMappingMerge        ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlBlockScalarHeader        ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlComment                  ctermfg=59   ctermbg=NONE cterm=NONE
hi yamlConstant                 ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlDirective                ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlDocumentEnd              ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlDocumentStart            ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlEscape                   ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFloat                    ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlow                     ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowCollection           ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowIndicator            ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowMapping              ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowMappingKey           ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowMappingMerge         ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowString               ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlFlowStringDelimiter      ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlInteger                  ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlKeyValueDelimiter        ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlMappingKeyStart          ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlNodeTag                  ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlPlainScalar              ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlReservedDirective        ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlSingleEscape             ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlTAGDirective             ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlTagHandle                ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlTagPrefix                ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlTimestamp                ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlTodo                     ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlYAMLDirective            ctermfg=NONE ctermbg=NONE cterm=NONE
hi yamlYAMLVersion              ctermfg=NONE ctermbg=NONE cterm=NONE

hi NERDTreeCWD      ctermfg=30 ctermbg=NONE cterm=NONE
hi NERDTreeDir      ctermfg=59 ctermbg=NONE cterm=NONE
hi NERDTreeDirSlash ctermfg=60 ctermbg=NONE cterm=NONE
hi NERDTreeHelp     ctermfg=59 ctermbg=NONE cterm=NONE
hi NERDTreeUp       ctermfg=60 ctermbg=NONE cterm=NONE

hi HtmlArg            ctermfg=60 ctermbg=NONE cterm=NONE
hi HtmlComment        ctermfg=59 ctermbg=NONE cterm=NONE
hi HtmlEndTag         ctermfg=59 ctermbg=NONE cterm=NONE
hi HtmlLink           ctermfg=67 ctermbg=NONE cterm=NONE
hi HtmlSpecialChar    ctermfg=97 ctermbg=NONE cterm=NONE
hi HtmlSpecialTagName ctermfg=97 ctermbg=NONE cterm=NONE
hi HtmlString         ctermfg=30 ctermbg=NONE cterm=NONE
hi HtmlTag            ctermfg=59 ctermbg=NONE cterm=NONE
hi HtmlTagName        ctermfg=59 ctermbg=NONE cterm=NONE

hi cssBoxAttr              ctermfg=67  ctermbg=NONE cterm=NONE
hi cssBoxProp              ctermfg=145 ctermbg=NONE cterm=NONE
hi cssBraces               ctermfg=145 ctermbg=NONE cterm=NONE
hi cssClassName            ctermfg=97  ctermbg=NONE cterm=NONE
hi cssColor                ctermfg=67  ctermbg=NONE cterm=NONE
hi cssColorProp            ctermfg=145 ctermbg=NONE cterm=NONE
hi cssComment              ctermfg=59  ctermbg=NONE cterm=NONE
hi cssCommonAttr           ctermfg=67  ctermbg=NONE cterm=NONE
hi cssDefinition           ctermfg=145 ctermbg=NONE cterm=NONE
hi cssFontAttr             ctermfg=67  ctermbg=NONE cterm=NONE
hi cssFontProp             ctermfg=145 ctermbg=NONE cterm=NONE
hi cssGeneratedContentProp ctermfg=145 ctermbg=NONE cterm=NONE
hi cssPseudoClass          ctermfg=145 ctermbg=NONE cterm=NONE
hi cssPseudoClassId        ctermfg=145 ctermbg=NONE cterm=NONE
hi cssRenderAttr           ctermfg=67  ctermbg=NONE cterm=NONE
hi cssRenderProp           ctermfg=145 ctermbg=NONE cterm=NONE
hi cssStringQ              ctermfg=67  ctermbg=NONE cterm=NONE
hi cssStringQQ             ctermfg=67  ctermbg=NONE cterm=NONE
hi cssTagName              ctermfg=60  ctermbg=NONE cterm=NONE
hi cssTextAttr             ctermfg=67  ctermbg=NONE cterm=NONE
hi cssTextProp             ctermfg=145 ctermbg=NONE cterm=NONE
hi cssUIAttr               ctermfg=67  ctermbg=NONE cterm=NONE
hi cssValueLength          ctermfg=67  ctermbg=NONE cterm=NONE
hi cssValueNumber          ctermfg=67  ctermbg=NONE cterm=NONE

hi lessVariable ctermfg=60 ctermbg=NONE cterm=NONE

hi javaScriptBraces       ctermfg=145 ctermbg=NONE cterm=NONE
hi javaScriptComment      ctermfg=59  ctermbg=NONE cterm=NONE
hi javaScriptCommentTodo  ctermfg=97  ctermbg=NONE cterm=NONE
hi javaScriptConditional  ctermfg=60  ctermbg=NONE cterm=NONE
hi javaScriptFunction     ctermfg=60  ctermbg=NONE cterm=NONE
hi javaScriptIdentifier   ctermfg=60  ctermbg=NONE cterm=NONE
hi javaScriptLineComment  ctermfg=59  ctermbg=NONE cterm=NONE
hi javaScriptOperator     ctermfg=97  ctermbg=NONE cterm=NONE
hi javaScriptRegexpString ctermfg=67  ctermbg=NONE cterm=NONE
hi javaScriptReserved     ctermfg=145 ctermbg=NONE cterm=NONE
hi javaScriptStatement    ctermfg=97  ctermbg=NONE cterm=NONE
hi javaScriptStringD      ctermfg=30  ctermbg=NONE cterm=NONE
hi javaScriptStringS      ctermfg=30  ctermbg=NONE cterm=NONE
hi javaScriptType         ctermfg=67  ctermbg=NONE cterm=NONE

hi plug1       ctermfg=59   ctermbg=NONE cterm=NONE
hi plug2       ctermfg=30   ctermbg=NONE cterm=NONE
hi plugBracket ctermfg=60   ctermbg=NONE cterm=NONE
hi plugDash    ctermfg=59   ctermbg=NONE cterm=NONE
hi plugName    ctermfg=60   ctermbg=NONE cterm=NONE
hi plugNumber  ctermfg=97   ctermbg=NONE cterm=NONE
hi plugX       ctermfg=NONE ctermbg=NONE cterm=NONE

hi markdownBlockquote       ctermfg=59 ctermbg=NONE cterm=NONE
hi markdownCode             ctermfg=59 ctermbg=NONE cterm=NONE
hi markdownCodeBlock        ctermfg=59 ctermbg=NONE cterm=NONE
hi markdownCodeDelimiter    ctermfg=59 ctermbg=NONE cterm=NONE
hi markdownHeadingDelimiter ctermfg=59 ctermbg=NONE cterm=NONE
hi markdownRule             ctermfg=59 ctermbg=NONE cterm=NONE

hi erubyDelimiter ctermfg=59 ctermbg=NONE cterm=NONE

hi cConditional ctermfg=67 ctermbg=NONE cterm=NONE
hi cCppString   ctermfg=30 ctermbg=NONE cterm=NONE
hi cInclude     ctermfg=60 ctermbg=NONE cterm=NONE
hi cIncluded    ctermfg=30 ctermbg=NONE cterm=NONE
hi cNumber      ctermfg=67 ctermbg=NONE cterm=NONE
hi cRepeat      ctermfg=67 ctermbg=NONE cterm=NONE
hi cType        ctermfg=60 ctermbg=NONE cterm=NONE
hi cppStatement ctermfg=60 ctermbg=NONE cterm=NONE
hi cppStructure ctermfg=37 ctermbg=NONE cterm=NONE

hi PreProc              ctermfg=145 ctermbg=NONE cterm=NONE
hi bashSpecialVariables ctermfg=67  ctermbg=NONE cterm=NONE
hi shAlias              ctermfg=30  ctermbg=NONE cterm=NONE
hi shCase               ctermfg=60  ctermbg=NONE cterm=NONE
hi shCaseEsac           ctermfg=60  ctermbg=NONE cterm=NONE
hi shCmdSubRegion       ctermfg=145 ctermbg=NONE cterm=NONE
hi shCommandSub         ctermfg=145 ctermbg=NONE cterm=NONE
hi shComment            ctermfg=59  ctermbg=NONE cterm=NONE
hi shConditional        ctermfg=30  ctermbg=NONE cterm=NONE
hi shDerefOp            ctermfg=67  ctermbg=NONE cterm=NONE
hi shDerefSimple        ctermfg=67  ctermbg=NONE cterm=NONE
hi shDo                 ctermfg=30  ctermbg=NONE cterm=NONE
hi shDoubleQuote        ctermfg=145 ctermbg=NONE cterm=NONE
hi shExpr               ctermfg=145 ctermbg=NONE cterm=NONE
hi shFor                ctermfg=30  ctermbg=NONE cterm=NONE
hi shLoop               ctermfg=30  ctermbg=NONE cterm=NONE
hi shQuote              ctermfg=60  ctermbg=NONE cterm=NONE
hi shRange              ctermfg=60  ctermbg=NONE cterm=NONE
hi shSet                ctermfg=60  ctermbg=NONE cterm=NONE
hi shSetList            ctermfg=145 ctermbg=NONE cterm=NONE
hi shSingleQuote        ctermfg=145 ctermbg=NONE cterm=NONE
hi shSnglCase           ctermfg=60  ctermbg=NONE cterm=NONE
hi shSource             ctermfg=60  ctermbg=NONE cterm=NONE
hi shStatement          ctermfg=60  ctermbg=NONE cterm=NONE
hi shTestPattern        ctermfg=145 ctermbg=NONE cterm=NONE
hi shTestSingleQuote    ctermfg=145 ctermbg=NONE cterm=NONE
hi shVariable           ctermfg=67  ctermbg=NONE cterm=NONE
