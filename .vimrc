" init
  set nocompatible
  scriptencoding utf-8
  set t_Co=256 "set 256 color support

" Change <Leader>
  let mapleader = ","	
  
" Use the tab complete menu
  set wildmenu 
  set wildmode=list:longest,full

" moving around, searching and patterns
  set autochdir  "change to directory of file in buffer
  set wrapscan	"search commands wrap around the end of the buffer
  set incsearch	"show match for partly typed search command
  set ignorecase	"ignore case when using a search pattern
  set smartcase	"override 'ignorecase' when pattern has upper case characters

" Make cursor move by visual lines instead of file lines (when wrapping)
  map <up> gk
  map k gk
  imap <up> <C-o>gk

  map <down> gj
  map j gj
  imap <down> <C-o>gj

" displaying text
  set scroll=7 "number of lines to scroll for C-u and C-d
  set scrolloff=3 "number of screen lines to show around the cursor
  set sidescrolloff=2 "scrollbars
  set wrap " long lines wrap
  set linebreak
  set showbreak=~ "string to put before wrapped screen lines
  set cmdheight=3 "number of lines used for the command-line
  set number "show the line number for each line
  set numberwidth=4 "number of columns to use for the line number

" syntax, highlighting and spelling
  syntax on
  filetype on
  filetype plugin indent on
  set background=dark " 'dark' or 'light' the background color brightness
  colorscheme herald " i will usually have this in vimfiles
  set hlsearch "highlight all matches for the last used search pattern
" set cursorcolumn "highlight the screen column of the cursor
  set cursorline "highlight the screen line of the cursor
" set spell "highlight spelling mistakes

" multiple windows
  set laststatus=2 "0, 1 or 2; when to use a status line for the last window
  set equalalways "make all windows the same size when adding/removing windows
  set eadirection=ver "in which direction 'equalalways' works: "ver", "hor" or "both"
  set hidden "don't unload a buffer when no longer shown in a window
  set splitbelow splitright

" terminal
  set title "show info in the window title
  set titlelen=85 "percentage of 'columns' used for the window title

" GUI
  set browsedir=last " last, buffer or current: which directory used for the file browser

" messages and info
  set showcmd "show (partial) command keys in the status line
  set showmode "display the current mode in the status line
  set ruler "show cursor position below each window
" set confirm "start a dialog when a command fails
  set noerrorbells "no bell for errors
  set novisualbell "no blinking for errors. hurts the eyes. maybe woof woof on status line

" selecting text
  set mouse=a
  set selectmode=mouse "mouse, key and/or cmd; when to start Select mode instead of Visual mode
  set clipboard+=unnamed " unnamed to use the * register like unnamed register; 'autoselect' to always put selected text on the clipboard

" editing text
  set backspace=indent,eol,start
  "set showmatch "When inserting a bracket, briefly jump to its match

" list of pairs that match for the "%" command
  set matchpairs+=<:>

" tabs and indenting
  set tabstop=2 "number of spaces a <Tab> in the text stands for
  set shiftwidth=2 "number of spaces used for each step of (auto)indent
  set smarttab "a <Tab> in an indent inserts 'shiftwidth' spaces
  set softtabstop=2 "if non-zero, number of spaces to insert for a <Tab>
  set expandtab "expand <Tab> to spaces in Insert mode
  set autoindent "automatically set the indent of a new line
  set smartindent "do clever autoindenting
  set copyindent "Copy whitespace for indenting from previous line
  set preserveindent "Preserve kind of whitespace when changing indent

" reading and writing files
" set fileformat=unix "end-of-line format: "dos", "unix" or "mac"
  set fileformats=unix ",dos " setting dos hides ^M chars on windows
" set writebackup "write a backup file before overwriting a file
  set nobackup "keep a backup after overwriting a file
" set autowrite "automatically write a file when leaving a modified buffer
" set autowriteall "as 'autowrite', but works with more commands
  set autoread "automatically read a file when it was modified outside of Vim

" swap file
  set noswapfile "use a swap file for this buffer

" Remember last position in file
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

" Tab navigation
  nmap <leader>tn :tabnext<CR>
  nmap <leader>tp :tabprevious<CR>
  nmap <leader>te :tabedit

" hashrocket for ruby hashes  
  imap hh => 
" inserts new line no insert mode
  map <S-Enter> O<ESC> 
  map <Enter> o<ESC>

" running ruby with F5
  map <f5> :w<CR>:!ruby %<CR>
  nmap <leader>st :Shell ruby %<CR>

" Hide search highlighting
  map <silent> <leader>nh :nohls <CR>

" NERDTree toggle
  :noremap <leader>n :NERDTreeToggle<CR>
" Use NERDTree instead of Netrw   
  let NERDTreeHijackNetrw=1 
" NERDTree single click for everything
  let NERDTreeMouseMode=1 
  
" TRICKS
" remap arrow keys to nothing to. if they are off you will not use them
" learn new vim habits without arrow keys instead.
"  map <down> <nop>
"  map <left> <nop>
"  map <right> <nop>
"  map <up> <nop>
"  imap <down> <nop>
"  imap <left> <nop>
"  imap <right> <nop>
"  imap <up> <nop>

" always show file name in ruler if ruler does not show it by default?
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" autocomplete parenthesis, brackets and braces. May cause problem if you
" need to enter just one more char.
" In insert mode enter opening bracket and vim replaces with both and puts
" your cursor between them
  inoremap ( ()<Left>
  inoremap [ []<Left>
  inoremap { {}<Left>
 
" this will not work when writing possesive of a noun inoremap ' ''<Left>
" autocomplete quotes
" inoremap '  '<Esc>:call QuoteInsertionWrapper("'")<CR>a
" inoremap "  "<Esc>:call QuoteInsertionWrapper('"')<CR>a
" inoremap `  `<Esc>:call QuoteInsertionWrapper('`')<CR>a
  
"function! QuoteInsertionWrapper (quote)
""  let col = col('.')
"  if getline('.')[col-2] !~ '\k' && getline('.')[col] !~ '\k'
"    normal ax
"    exe "normal r".a:quote."h"
"  end
"endfunction

" space / shift-space scroll in normal mode
   noremap <S-space> <C-b>
   noremap <space> <C-f>
