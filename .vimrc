" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible        " Use Vim defaults (much better!)
set backspace=2         " allow backspacing over everything in insert mode

" Now we set some defaults for the editor 
set autoindent
set ruler

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
 
syntax on               " enable syntax highlighting
" set nohlsearch        " do not highlight search matches

set whichwrap=b,s,<,>,[,]   " wrap bs and arrow keys b/w lines
set backspace=2             " backspace over everything in insert

set nowrap                  " don't wrap lines to screen
set lbr                     " but break at given characters only
set showbreak=+             " show a + at every wrapped line
" set textwidth=79          " wrap at 79 characters with <EOL>

set showmatch               " show matching parens
set tabstop=4
set shiftwidth=3
set expandtab               " expand tabs into spaces

"set fo=ql                  " set format options: allow format comments with gq
                            "   long lines are not broken in insert 

nnoremap n nzz              " when searching, center on screen
nnoremap N Nzz
map <C-H> :noh<cr>
imap <C-H> <C-O>:noh<cr>

" For Mac keyboard
" Home & End
map  0
map  $
" option+-> = 'f'
map f w

" Navigate words
map [C w
map [D b

" ^Left,Right,Up and Down
imap <ESC>Oa <Up>
imap <ESC>Ob <Down>
imap <ESC>Oc <C-O>w
imap <ESC>Od <C-O>b
map <ESC>Oa <Up>
map <ESC>Ob <Down>
map <ESC>Oc w
map <ESC>Od b

" Shift select
map <S-Right> v<Right>
map <S-Left> v<Left>
map <S-Down> v<Down>
map <S-Up> v<Up>
map <S-Home> v<Home>
map <S-End> v<End>
imap <S-Right> <C-O>v<Right>
imap <S-Left> <C-O>v<Left>
imap <S-Up> <C-O>v<Up>
imap <S-Down> <C-O>v<Down>
imap <S-Home> <C-O>v<Home>
imap <S-End> <C-O>v<End>
vmap <S-Up> <Up>
vmap <S-Down> <Down>
vmap <S-Right> <Right>
vmap <S-Left> <Left>

" copy in visual mode
vmap <Return> y

" Undo, redo
imap <C-Z> <C-O>u
imap <C-Y> <C-O><C-R>

" Save
map  <C-S> :w<Return>
imap <C-S> <C-O>:w<Return>

" Winmanager commands
map <c-w><c-t> :WMToggle<cr>
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>

colorscheme ir_black
"colorscheme borland
