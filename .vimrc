"  =============================================================================
"  CodeForceX VimRc
"  =============================================================================

" VUNDLE
" ==============================================================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Better Start Screen
Plugin 'mhinz/vim-startify'

" Search Files
Plugin 'ctrlpvim/ctrlp.vim'

" Indent Line Guide
Plugin 'Yggdroot/indentLine'

" Light Status Line
Plugin 'itchyny/lightline.vim'

" Full Screen for GVim
Plugin 'lambdalisue/vim-fullscreen'

" Tslime
Plugin 'jgdavey/tslime.vim'

" Toggle cursor according to mode terminal
Plugin 'jszakmeister/vim-togglecursor'

" Relative numbers
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Parentheses, brackets, quotes
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

" Git
Plugin 'tpope/vim-fugitive'

" Preview Replace
Plugin 'osyo-manga/vim-over'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" Highlight color codes
Plugin 'gorodinskiy/vim-coloresque'

" Make multiple edits
Plugin 'terryma/vim-multiple-cursors'

" Python indent
Plugin 'vim-scripts/indentpython.vim'

" Restore cursor position/folding
Plugin 'vim-scripts/restore_view.vim'

call vundle#end()
filetype plugin indent on

" SETTINGS
" ==============================================================================

" File encoding
set encoding=utf-8
set ffs=unix,dos,mac

" Theme
colorscheme monokai

" Line numbers are necessery
set number

" Use external clipboard
set clipboard=unnamed

" Automatically indent code
set autoindent

" Auto read when file is changed from outside
set autoread

" Remove YouCompleteMe errors
set shortmess+=c

" Always try to keep this many lines above and below the cursor
set scrolloff=7

" Lots of history and undo
set history=1000
set undolevels=1000

" Using '{{{1' to fold
set foldmethod=marker

" Enable mouse
set mouse=a

" Scrolling/Slow refresh
set ttyfast
set lazyredraw

" No backup
set nobackup
set noswapfile
set nowritebackup

" Allow backspacing over any char in insert mode
set backspace=indent,eol,start

" Hide toolbars in GVim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

" Hide buffers on close
set hidden

" operate across lines regardless of the underlying text
set virtualedit=block

" Dont use /g when searching
set gdefault

" Make Esc work faster"
set ttimeoutlen=50

" Searching
set ignorecase
set smartcase
set hlsearch

" Always show status
set laststatus=2

" Naughty Characters
set list listchars=tab:»·,trail:·,nbsp:·

" MAPPINGS
" ==============================================================================

" Paste mode
set pastetoggle=<F2>
au InsertLeave * set nopaste

" Useful for creating more mappings
let mapleader =" ,"

" Align python comments
nnoremap # :Tabularize/#/<cr>

" vimrc edit/source
nnoremap <leader>v :edit! $MYVIMRC<cr>
nnoremap <leader>/ :source $MYVIMRC<cr>

" Git
nnoremap <C-g> :Git add %<cr>:Git commit -m " "
nnoremap <leader>g :Git push -u origin master<Cr>

" scrolling

nnoremap <home> <C-y><C-y><C-y>
nnoremap <end> <C-e><C-e><C-e>

" fold
nnoremap <space> za

" switch buffers
nnoremap <silent> <PageUp> :bp<CR>
nnoremap <silent> <PageDown> :bn<CR>

" Add blank line above
nnoremap \ O<esc>

" Clear last search with return
nnoremap <CR> :noh<CR><CR>

" Move line above/below
nnoremap  j ddkP
nnoremap  k ddp

" Move between splits
noremap <Tab> <C-w><C-w>

" Resize splits equally
nnoremap <Leader>= <C-w>=

" Create splits
nnoremap 11 :sv<cr><c-w><down>
nnoremap 22 :vs<cr><c-w><right>

" Indent code
nnoremap <F7> mzgg=G`z`

" Switch keys for visual and visual block mode
nnoremap v <C-v>
nnoremap <C-v> v

nmap <F5> :Tmux !python %<cr>

" Delete text between brackets/par.
nnoremap d' di'i
nnoremap d"  di" i
nnoremap d9 di(i
nnoremap d[ di[i

" Y yanks from the cursor to the end of the line
map Y y$

" Close buffer
nnoremap `` :x!<cr>

" Quit vim
nnoremap <leader><F4> :w!<cr>:q!<cr>

" Remove extra blank lines, whitespaces and save
nnoremap / :%s/\s\+$//e<cr>:%s/\n\{3,}/\r\r/e<cr>:w!<cr>

" PLUGIN SETTINGS
" ==============================================================================

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_show_hidden = 1

" Start screen selection starts with 1 instead of 0
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

" Better indent lines
let g:indentLine_char = '│'
let g:indentLine_color_term = 239
