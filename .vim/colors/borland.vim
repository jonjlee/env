" Vim color file
" Maintainer:   Yegappan Lakshmanan
" Last Change:  2001 Sep 9

" Color settings similar to that used in Borland IDE's.

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="borland"

hi Normal       term=NONE cterm=NONE 
hi NonText      term=NONE cterm=NONE ctermfg=White 
hi SpecialKey   term=NONE cterm=NONE ctermfg=yellow
hi MoreMsg		 term=NONE cterm=NONE ctermfg=Black ctermbg=Green
hi Question  	 term=NONE cterm=NONE ctermfg=Black ctermbg=Green

hi Statement    term=NONE cterm=NONE ctermfg=White  
hi Special      term=NONE cterm=NONE ctermfg=Cyan 
hi Constant     term=NONE cterm=NONE ctermfg=Magenta 
hi Comment      term=NONE cterm=NONE ctermfg=DarkCyan
hi Preproc      term=NONE cterm=NONE ctermfg=Green 
hi Type         term=NONE cterm=NONE ctermfg=White 
hi Identifier   term=NONE cterm=NONE ctermfg=White 
hi Underlined	 term=NONE cterm=underline ctermfg=Yellow

hi StatusLine   term=bold cterm=bold ctermfg=Black ctermbg=White

hi StatusLineNC term=NONE cterm=NONE ctermfg=Black ctermbg=White

hi Visual       term=NONE cterm=NONE ctermfg=Black ctermbg=DarkCyan

hi Search       term=NONE cterm=NONE ctermfg=White ctermbg=Gray

hi VertSplit    term=NONE cterm=NONE ctermfg=Black ctermbg=White

hi Directory    term=NONE cterm=NONE ctermfg=Green 

hi WarningMsg   term=standout cterm=NONE ctermfg=Red 

hi Error        term=NONE cterm=NONE ctermfg=Red ctermbg=NONE

hi Cursor       ctermfg=Black ctermbg=Yellow

