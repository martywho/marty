" ==============================================================================
"   Name:        marty
"   Author:      Marty Who <marty@yeah.nu>
"   Url:         https://github.com/martywho/marty
"   License:     The MIT License (MIT)
" ==============================================================================

set background=dark
highlight clear
syntax reset

let g:colors_name="marty"
let colors_name="marty"

let s:white       = "254"
let s:attention   = "197"
let s:inactive    = "240"
let s:main        = "168"
let s:accent1     = "151"
let s:accent2     = "179"
let s:accent3     = "190"

function! s:h(group, fg, bg)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=" . a:bg . " cterm=NONE"
endfun

function! s:f(group, fg)
  exec "hi " . a:group . " ctermfg=" . a:fg . " ctermbg=NONE cterm=NONE"
endfun

function! s:r(group)
  exec "hi " . a:group . " ctermfg=NONE ctermbg=NONE cterm=NONE"
endfun

call s:f("Statement", s:main)

call s:f("Normal", s:white)
call s:f("String", s:white)

call s:f("VertSplit", s:inactive)
call s:f("NonText", s:inactive)
call s:f("EndOfBuffer", s:inactive)
call s:f("StatusLineNC", s:inactive)
call s:f("TabLine", s:inactive)
call s:f("LineNr", s:inactive)
call s:f("Comment", s:inactive)

call s:f("Identifier", s:accent1)
call s:f("Directory", s:accent1)

call s:f("StatusLine", s:accent2)
call s:f("TabLineSel", s:accent2)
call s:f("CursorLine", s:accent2)
call s:f("CursorLineNr", s:accent2)
call s:f("Operator", s:accent2)
call s:f("Type", s:accent2)
call s:f("Function", s:accent2)
call s:f("Number", s:accent2)
call s:f("Float", s:accent2)
call s:f("Boolean", s:accent2)
call s:f("Character", s:accent2)

call s:f("Title", s:accent3)

call s:f("Error", s:attention)
call s:f("SpellBad", s:attention)
call s:f("MatchParen", s:attention)

call s:r("Cursor")
call s:r("iCursor")
call s:r("CursorColumn")
call s:r("SignColumn")
call s:r("StatusLineTerm")
call s:r("StatusLineTermNC")
call s:r("TabLineFill")
call s:r("Delimiter")
