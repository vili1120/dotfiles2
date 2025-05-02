syntax keyword vlKeyword if elif else for while def return continue break

syntax region vlString start='"' end='"'

syntax region vlComment start="#" end="#"

syntax keyword vlFunctions print len exit append pop extend input int str isinstance run

syntax match mylangGeneral /\<\w\+\>/
highlight mylangGeneral guifg=#FFA500 ctermfg=Yellow

highlight link vlFunctions Identifier
highlight link vlKeyword Keyword
highlight link vlString String
highlight link vlComment Comment
