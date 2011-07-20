" changes the zoom behaviour of macvim:
" defaults write org.vim.MacVim MMZoomBoth 1
"  




filetype off
set nocompatible

set modelines=0

" Tabs, spaces, wrapping {{{
set tabstop=2
set shiftwidth=2
set softtabstop=2

set expandtab
set wrap
set linebreak "enables wrapping in lines and not inside a word
"}}}

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)
set title "Adds the buffer to the window when run in terminal
set shortmess=atI


set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set undofile
set number
"set colorcolumn=80
set history=1000
set undofile "defaults to off, write undo history into a undofile
set listchars=tab:▸\ ,eol:¬ "One can turn on list with set list
set shell=/usr/local/bin/zsh
set wildignore+=*.pyc,.hg,.git,.svn,.DS_Store "Ignores files that match this patterns when completing paths etc.
set showmatch
set matchtime=3
set showbreak=↪ "String for wrapped lines
set splitbelow
set splitright
set hlsearch "highlights search terms 

au FocusLost * :wa

syntax on
set background=dark

set undodir=~/.tmp/undo//
set backupdir=~/.tmp/backup//
set directory=~/.tmp/swap//
set backup


" Key Mappings {{{
let mapleader=","
"Disable the arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" maps the ack plugin
nmap <leader>a <Esc>:Ack!

if has ("gui_macvim")
  let macvim_skip_cmd_opt_movement = 1
endif
"--------------}}}

"Plugins managed with vundle {{{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let vundle manage bundles. This is required!
Bundle 'gmarik/vundle'

Bundle 'molokai'
Bundle 'L9' 
Bundle 'FuzzyFinder'
Bundle 'SuperTab-continued.'
Bundle 'snipMate'
Bundle 'ack.vim'

" Python related stuff
Bundle 'pep8'
Bundle 'pyflakes'
Bundle 'pydoc.vim'

filetype plugin indent on "This is required!
"}}}

  
if has('gui_running')
    colorscheme molokai
    set guifont=Menlo:h12

    set go-=T
    "Disable all scrollbars"
    set go-=l
    set go-=L
    set go-=r
    set go-=R

    highlight SpellBad term=underline gui=undercurl guisp=Orange

"    set fillchars+=vert:|
    set guicursor=n-c:block-Cursor-blinkon0
    set guicursor+=v:block-vCursor-blinkon0
    set guicursor+=i-ci:ver20-iCursor

endif

" supertap options as seen here: http://thecatatemysourcecode.posterous.com/vim-python-tab-completion
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview 
