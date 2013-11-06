source $VIMRUNTIME/mswin.vim
behave mswin "on linux mint

if has("gui_macvim")
  set guifont=Inconsolata:h16
else
" gnome, win32 should be the same
  set guifont=Inconsolata\ 13
endif

set background=dark "light
colorscheme herald "dark background
"colorscheme github256 " light background
set lines=50
set columns=130
set anti " set antialias
set linespace=2	 "number of pixel lines to use between characters
set showtabline=2 " just show tabs
set novisualbell "don't flash the screen
