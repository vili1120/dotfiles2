" vasm.vim - Syntax highlighting for VASM (case-insensitive)

if exists("b:current_syntax")
  finish
endif

syntax case ignore

" VASM Instructions (case-insensitive)
syntax keyword vasmInstruction PUSH PULL READ DADV ADV REMOVE PRINTS PRINT LEN ADD SUB IDX LABEL JUMP END ENDL

" Numbers
syntax match   vasmNumber      /\v[-+]?\d+/

" Comments: # or //
syntax match   vasmComment     /#.*/ contains=vasmTodo
syntax match   vasmComment     /\/\/.*/ contains=vasmTodo
syntax keyword vasmTodo        contained TODO FIXME NOTE

" Highlight links
highlight def link vasmInstruction Keyword
highlight def link vasmNumber      Number
highlight def link vasmComment     Comment
highlight def link vasmTodo        Todo

let b:current_syntax = "vasm"

