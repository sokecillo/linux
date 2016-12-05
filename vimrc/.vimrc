"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sections:
"   -> VIM user interface
"   -> Colors and fonts
"   -> Files, backups and undo
"   -> Text, tab and indent
"
" Attribution:
"   This .vimrc file is mostly based on the amix's .vimrc file.
"   https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim
"
"   amix _at_ amix.dk
"   http://amix.dk/
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Vim settings, rather than Vi settings. Must be first, changes other
" options
set nocompatible

""""""""""""""""""""""""""""""""
" VIM user interface
""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add number line to the ledt
set nu

" Set title
set title

" Show tabs, spaces
set list

" Always show statusline
set laststatus=2

" Statusline configuration
set statusline=%F       " Path to the file
set statusline+=%=      " Switch to the right side
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " Show encoding
set statusline+=-       " Separator
set statusline+=%y      " Filetype of the file
set statusline+=%20c    " Current column
set statusline+=%5l     " Current line
set statusline+=%5L     " Total lines
set statusline+=%5p     " Percentage

" Cursorline
" set cursorline


""""""""""""""""""""""""""""""""
" Colors and fonts
""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Theme
set background=dark
set t_Co=256                    " Assume your terminal emulator is 256 colors
hi ColorColumn ctermbg=Black


""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""
set backup
set wb
set swapfile

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


""""""""""""""""""""""""""""""""
" Text, tab and indent
""""""""""""""""""""""""""""""""
"Show tabs, trail, invisible chars
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Tabs ;)
"set noexpandtab
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Linebreak, indent and wrap
set lbr
set tw=79
set ai              " Auto indent
" set si            " Smart indent
set nowrap          " Wrap lines

" Behaviour
set backspace=indent,eol,start  " Make backspace works like other apps

""""""""""""""""""""""""""""""""
" Maps
""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
