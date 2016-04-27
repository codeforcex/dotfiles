" -----------------------------------------------------------------------------
" CodeForceX VimRc
" ------------------------------------------------------------------------------

"-----------[Vundle]--------------"

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

"Undo Tree
Plugin 'mbbill/undotree'

"Better Start Screen
Plugin 'mhinz/vim-startify'

"Search Files
Plugin 'ctrlpvim/ctrlp.vim'

"Tree View
Plugin 'scrooloose/nerdtree'

"Indent Line Guide
Plugin 'Yggdroot/indentLine'

"Light Status Line
Plugin 'itchyny/lightline.vim'

"Full Screen for GVim
Plugin 'lambdalisue/vim-fullscreen'

"Toggle cursor according to mode terminal
Plugin 'jszakmeister/vim-togglecursor'

"Relative numbers
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

"Parentheses, brackets, quotes
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'

"Git
Plugin 'tpope/vim-fugitive'

"Preview Replace
Plugin 'osyo-manga/vim-over'

"Syntax
Plugin 'scrooloose/syntastic'

"Autocomplete
Plugin 'Valloric/YouCompleteMe'

"Faster navigation
Plugin 'easymotion/vim-easymotion'

"Highlight color codes
Plugin 'gorodinskiy/vim-coloresque'

"Make multiple edits
Plugin 'terryma/vim-multiple-cursors'

"Vim Profiling
Plugin 'hyiltiz/vim-plugins-profile'

"Python indent
Plugin 'vim-scripts/indentpython.vim'

"Restore cursor position/folding
Plugin 'vim-scripts/restore_view.vim'

call vundle#end()
filetype plugin indent on

"-----------[Settings]------------"

"Theme
if &t_Co >= 256 || has("gui_running")
    colorscheme monokai
endif

if &t_Co > 2 || has("gui_running")
    syntax on
endif

"Dark background
set background=dark

"File encoding
set encoding=utf-8
set ffs=unix,dos,mac

"Line numbers are necessery
set number

"Use external clipboard
set clipboard=unnamed

"Automatically indent code
set autoindent

"Auto read when file is changed from outside
set autoread

"Remove YouCompleteMe errors
set shortmess+=c

"Always try to keep this many lines above and below the cursor
set scrolloff=7

"Lots of history and undo
set history=1000
set undolevels=1000

"Using {{{1 to fold
set foldmethod=marker

"Enable mouse
set mouse=a

"Scrolling/Slow refresh
set ttyfast
set lazyredraw

"No backup
set nobackup
set noswapfile
set nowritebackup

"Allow backspacing over any char in insert mode
set backspace=indent,eol,start

"Hide toolbars in GVim
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

"Hide buffers on close
set hidden

"operate across lines regardless of the underlying text
set virtualedit=block

"Dont use /g when searching
set gdefault

" Make Esc work faster"
set ttimeoutlen=50

"Searching
set ignorecase
set smartcase
set hlsearch

"Always show status
set laststatus=2

"Naughty Characters
set list listchars=tab:»·,trail:·,nbsp:·

" -----------[Mappings]------------"

"Paste mode
set pastetoggle=<F2>
au InsertLeave * set nopaste

"Useful for creating more mappings
let mapleader =","

"Align python comments
nnoremap # :Tabularize/#/<cr>

"Show undotree/Nerd Tree
nnoremap <leader>gu :UndotreeToggle<cr>
nnoremap <leader>n :NERDTreeToggle<cr>

"vimrc edit/source
nnoremap <leader>v :edit! $MYVIMRC<cr>
nnoremap <leader>/ :source $MYVIMRC<cr>

"Git
nnoremap <C-g> :Git add %<cr>:Git commit -m ""
nnoremap <leader>g :Git push -u origin master<Cr>

"scrolling

nnoremap <home> <C-y><C-y><C-y>
nnoremap <end> <C-e><C-e><C-e>

"fold
nnoremap <space> za

"switch buffers
nnoremap <silent> <PageUp> :bp<CR>
nnoremap <silent> <PageDown> :bn<CR>

"Add blank line above
nnoremap \ O<esc>

"Clear last search with return
nnoremap <CR> :noh<CR><CR>

"Move line above/below
nnoremap  j ddkP
nnoremap  k ddp

"Move between splits
noremap <Tab> <C-w><C-w>

"Resize splits equally
nnoremap <Leader>= <C-w>=

"Create splits
nnoremap 11 :sv<cr><c-w><down>
nnoremap 22 :vs<cr><c-w><right>

"Indent code
nnoremap <F7> mzgg=G`z`

"Switch keys for visual and visual block mode
nnoremap v <C-v>
nnoremap <C-v> v

nmap <F5> :!python %<cr>

"Delete text between brackets/par.
nnoremap d' di'i
nnoremap d" di"i
nnoremap d9 di(i
nnoremap d[ di[i

"Y yanks from the cursor to the end of the line
map Y y$

"Close buffer
nnoremap `` :x!<cr>

"Quit vim
nnoremap <leader><F4> :w!<cr>:q!<cr>

"Remove extra blank lines, whitespaces and save
nnoremap / :%s/\s\+$//e<cr>:%s/\n\{3,}/\r\r/e<cr>:w!<cr>

"-----------[Plugin Settings]-----"

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': [],
            \ 'passive_filetypes': ['html'] }

"NerdTree
let g:NERDTreeWinSize=20
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_match_window_bottom=0
let g:ctrlp_max_depth=10
let g:ctrlp_max_files=500
let g:ctrlp_mruf_relative=1
let g:ctrlp_show_hidden = 1

"Start screen selection starts with 1 instead of 0
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')

"Better indent lines
let g:indentLine_char = '│'
let g:indentLine_color_term = 239
