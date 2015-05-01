" syntax/quickpic.vim
"
" Main syntax file

if exists("b:current_syntax")
  finish
endif
set foldmethod=syntax

syn match Comment	/^-.*/ display
syn region QPcode matchgroup=QPstate start=/^&.*/ end=/^\// fold transparent contains=ALL

syn match QPbool	/\.true\./ contained display
syn match QPbool	/\.false\./ contained display
syn match QPvalue	/\w*\(\((.*)\)*\s*=\)\@=/ contained display
syn match QPnumber	/\<\d\+\(\.\d\+\)\=\([eE][+-]\=\d\+\)\=\>/ display contained
syn match QPstring	/\(=\s*\)\@<=['"]\<.*\>['"]\+/ contained display
" syn match QPsection	// contained display

hi link QPbool		Boolean
hi link QPnumber	Number
hi link QPvalue		Identifier
hi link QPstring	String
hi link QPstate		Statement

syn sync fromstart
