
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
set number
set colorcolumn=80
set history=1000
set listchars=tab:▸\ ,eol:¬ "One can turn on list with set list
set shell=sh
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

set nobackup
set nowritebackup
set noswapfile
set undofile "defaults to off, write undo history into a undofile
set undodir=~/.tmp/undo/


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

" This recenters the screen after each search forward so I don't have to
" move the eye
nmap n nzz
nmap N Nzz

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

if has ("gui_macvim")
  let macvim_skip_cmd_opt_movement = 1
endif
"--------------}}}

"Plugins managed with vundle {{{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let vundle manage bundles. This is required!
Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized


" surrounding tpope
" speeddating
" Control P vs. CommandT vs. mtrmu

Bundle 'L9'
Bundle 'Align'

" Bundle 'snipMate'
" Bundle 'honza/snipmate-snippets'
" " From time to time rebase against upstream honza/snipmate-snippets
" " tell snipmate to use the snippets from github/honza so that we don't get
" " warnings about multiple snippets mapped to the same shortcut
" let g:snippets_dir="~/.vim/bundle/snipmate-snippets/snippets"

" Python related stuff
" Bundle 'klen/python-mode'
" let g:pymode_breakpoint_key='<leader>i'
" let g:pymode_syntax = 1
Bundle 'majutsushi/tagbar.git'

Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview 

Bundle 'JSON.vim'
au! BufRead,BufNewFile *.json set filetype=json foldmethod=syntax 

Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'int3/vim-extradite'

Bundle 'vim-scripts/tComment'

Bundle 'kien/ctrlp.vim.git'
let g:ctrlp_map = '<c-e>'

Bundle 'tpope/vim-surround.git'
Bundle 'tpope/vim-eunuch.git'
Bundle 'sickill/vim-pasta'

Bundle 'Glench/Vim-Jinja2-Syntax.git'

Bundle 'groenewege/vim-less.git'
" Bundle 'skammer/vim-css-color.git'

filetype plugin indent on "This is required!
"}}}

" Set working directory to current file
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif  

" language specific stuff
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

augroup filetypes
au!
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile *.md set filetype=Markdown
au BufRead,BufNewFile *.features set filetype=cucumber
augroup END
