
filetype off
set nocompatible

set modelines=0

" Tabs, spaces, wrapping {{{
set tabstop=4
set shiftwidth=4
set softtabstop=4

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
set ignorecase
set smartcase

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

" remaps moving between buffers when there's a split window
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


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
Bundle 'altercation/vim-colors-solarized'
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized

Bundle 'L9' 
Bundle 'FuzzyFinder'
"Bundle 'SuperTab-continued.'
Bundle 'Align'

Bundle 'snipMate'
Bundle 'rosner/snipmate-snippets'
" From time to time rebase against upstream honza/snipmate-snippets
" tell snipmate to use the snippets from github/honza so that we don't get
" warnings about multiple snippets mapped to the same shortcut
let g:snippets_dir="~/.vim/bundle/snipmate-snippets/snippets"

Bundle 'taglist.vim'
" Latex gets the latest version from sourceforge and not from vimscripts.org
Bundle 'AutomaticTexPlugin'
"let g:atp_statusline=1 "atcivate the text status line
"let g:atp_Compiler="python"
"let b:atp_TexCompiler="/usr/texbin/pdflatex"

" Python related stuff
Bundle 'pep8'
let g:pep8_map='<leader>8'
Bundle 'pyflakes'
Bundle 'pydoc.vim'
Bundle 'klen/rope-vim'
autocmd FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview 

Bundle 'JSON.vim'
au! BufRead,BufNewFile *.json set filetype=json foldmethod=syntax 

" JS stuff and related
Bundle 'kchmck/vim-coffee-script'
autocmd BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

Bundle 'open-browser.vim'
"Bundle 'preview'
"

"Bundle 'motemen/git-vim'
Bundle 'tpope/vim-fugitive'

filetype plugin indent on "This is required!
"}}}

  

" language specific stuff
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

