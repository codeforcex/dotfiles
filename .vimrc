" CodeForceX VimRc
" Written for for python with tmux, gnome terminal and ubuntu.

" VUNDLE /*
" ==============================================================================
"Init. Vundle /*
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"-----------------------------------------------------------------------------*/
" Indent Line Guide /*
Plugin 'Yggdroot/indentLine'
"-----------------------------------------------------------------------------*/
" Full Screen for GVim /*
Plugin 'lambdalisue/vim-fullscreen'
"-----------------------------------------------------------------------------*/
" Tslime /*
Plugin 'jgdavey/tslime.vim'
"-----------------------------------------------------------------------------*/
" Toggle cursor according to mode terminal /*
Plugin 'jszakmeister/vim-togglecursor'
"-----------------------------------------------------------------------------*/
" Relative numbers /*
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
"-----------------------------------------------------------------------------*/
" Parentheses, brackets, quotes /*
Plugin 'jiangmiao/auto-pairs'
"-----------------------------------------------------------------------------*/
" Preview Replace /*
Plugin 'osyo-manga/vim-over'
"-----------------------------------------------------------------------------*/
" Autocomplete /*
Plugin 'Valloric/YouCompleteMe'
"-----------------------------------------------------------------------------*/
" Highlight color codes /*
Plugin 'gorodinskiy/vim-coloresque'
"-----------------------------------------------------------------------------*/
" Make multiple edits /*
Plugin 'terryma/vim-multiple-cursors'
"-----------------------------------------------------------------------------*/
" Python indent /*
Plugin 'vim-scripts/indentpython.vim'
"-----------------------------------------------------------------------------*/
" Restore cursor position/folding /*
Plugin 'vim-scripts/restore_view.vim'

call vundle#end()

filetype plugin indent on
" -----------------------------------------------------------------------------*/
" =========================================================================== */
" SETTINGS /*
" ==============================================================================
" File Encoding /*
set encoding=utf-8
set ffs=unix,dos,mac
"-----------------------------------------------------------------------------*/
" Theme /*
colorscheme monokai
"-----------------------------------------------------------------------------*/
" Higilight Cross /*
set cursorline
set cursorcolumn
"-----------------------------------------------------------------------------*/
" Line Numbers/Title /*
set title
set titleold=

set number
set numberwidth=5
"-----------------------------------------------------------------------------*/
" Use External Clipboard /*
set clipboard=unnamed
"-----------------------------------------------------------------------------*/
" Automatically Indent Code /*
set autoindent
set smartindent
"-----------------------------------------------------------------------------*/
" Auto Read When File is Changed From Outside /*
set autoread
"-----------------------------------------------------------------------------*/
" Remove YouCompleteMe errors /*
set shortmess+=c
"-----------------------------------------------------------------------------*/
" Always try to keep this many lines above and below the cursor /*
set scrolloff=7
"-----------------------------------------------------------------------------*/
" Lots of history and undo /*
set history=1000
set undolevels=1000
"-----------------------------------------------------------------------------*/
"Show keypress in statusline /*
set showcmd
"-----------------------------------------------------------------------------*/
" Folding /*
set foldmethod=marker
set foldmarker=/*,*/
"-----------------------------------------------------------------------------*/
" Enable mouse /*
set mouse=a
"-----------------------------------------------------------------------------*/
" Scrolling/Slow refresh /*
set ttyfast
set lazyredraw
"-----------------------------------------------------------------------------*/
" No backup /*
set nobackup
set noswapfile
set nowritebackup
"-----------------------------------------------------------------------------*/
" Security /*
set modelines=0
"-----------------------------------------------------------------------------*/
" Allow backspacing over any char in insert mode /*
set backspace=indent,eol,start
"-----------------------------------------------------------------------------*/
" Hide toolbars in GVim /*
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
"-----------------------------------------------------------------------------*/
" Hide buffers on close /*
set hidden
"-----------------------------------------------------------------------------*/
" Operate across lines regardless of the underlying text /*
set virtualedit=block
"-----------------------------------------------------------------------------*/
" Dont use /g when searching /*
set gdefault
"-----------------------------------------------------------------------------*/
" Make Esc work faster /*
set ttimeoutlen=50
"-----------------------------------------------------------------------------*/
" Searching /*
set ignorecase
set smartcase
set hlsearch
"-----------------------------------------------------------------------------*/
" Change directory to the current buffer when opening files. /*
set autochdir
"-----------------------------------------------------------------------------*/
" Always show status /*
set laststatus=2
"-----------------------------------------------------------------------------*/
" Naughty Characters /*
set list listchars=tab:»·,trail:·,nbsp:·
"-----------------------------------------------------------------------------*/
" =========================================================================== */
" MAPPINGS /*
" ==============================================================================
" Paste mode /*
set pastetoggle=<F2>
"-----------------------------------------------------------------------------*/
" Useful for creating more mappings /*
let mapleader =","
"-----------------------------------------------------------------------------*/
" Align python comments /*
nnoremap # :Tabularize/#/<cr>
"-----------------------------------------------------------------------------*/
" Vimrc edit/source /*
nnoremap <leader>v :edit! $MYVIMRC<cr>
nnoremap <leader>/ :source $MYVIMRC<cr>
"-----------------------------------------------------------------------------*/
" Scrolling /*
nnoremap <home> <C-y><C-y><C-y>
nnoremap <end> <C-e><C-e><C-e>
"-----------------------------------------------------------------------------*/
" Fold /*
nnoremap <space> za
"-----------------------------------------------------------------------------*/
" Switch buffers /*
nnoremap <silent> <PageUp> :bp<CR>
nnoremap <silent> <PageDown> :bn<CR>
"-----------------------------------------------------------------------------*/
" Add blank line above /*
nnoremap \ O<esc>
"-----------------------------------------------------------------------------*/
" Clear last search with return /*
nnoremap <CR> :noh<CR><CR>
"-----------------------------------------------------------------------------*/
" Move line above/below /*
nnoremap  j ddkP
nnoremap  k ddp
"-----------------------------------------------------------------------------*/
"Searching /*
nnoremap ' :/
nnoremap <leader>' :s% /search/replace/
"-----------------------------------------------------------------------------*/
" Move between splits /*
noremap <Tab> <C-w><C-w>
"-----------------------------------------------------------------------------*/
" Resize splits equally /*
nnoremap <Leader>= <C-w>=
"-----------------------------------------------------------------------------*/
" Create splits /*
nnoremap 11 :sv<cr><c-w><down>
nnoremap 22 :vs<cr><c-w><right>
"-----------------------------------------------------------------------------*/
" Indent code /*
nnoremap <F7> mzgg=G`z`
"-----------------------------------------------------------------------------*/
" Switch keys for visual and visual block mode /*
nnoremap v <C-v>
nnoremap <C-v> v
"-----------------------------------------------------------------------------*/
"Tslmie  /*
nmap <F5> :Tmux !python %<cr>
"-----------------------------------------------------------------------------*/
" Delete text between brackets/par. /*
nnoremap d' di'i
nnoremap d" di"i
nnoremap d9 di(i
nnoremap d[ di[i
"-----------------------------------------------------------------------------*/
" Explore files /*
nnoremap ; :call VexToggle(getcwd())<CR>
noremap <Leader>` :call VexToggle("")<CR>
"-----------------------------------------------------------------------------*/
" Y yanks from the cursor to the end of the line /*
map Y y$
"-----------------------------------------------------------------------------*/
" Close buffer /*
nnoremap `` :x!<cr>
"-----------------------------------------------------------------------------*/
" Quit vim /*
nnoremap <leader><F4> :w!<cr>:q!<cr>
"-----------------------------------------------------------------------------*/
" Remove extra blank lines, whitespaces and save /*
nnoremap / :%s/\s\+$//e<cr>:%s/\n\{3,}/\r\r/e<cr>:w!<cr>
"-----------------------------------------------------------------------------*/
" =========================================================================== */
" PLUGIN SETTINGS /*
" ==============================================================================
"File Explorer /*
fun! VexToggle(dir)
  if exists("t:vex_buf_nr")
    call VexClose()
  else
    call VexOpen(a:dir)
  endif
endf

fun! VexOpen(dir)
  let g:netrw_browse_split=4    " open files in previous window
  let vex_width = 25

  execute "Vexplore " . a:dir
  let t:vex_buf_nr = bufnr("%")
  wincmd H

  call VexSize(vex_width)
endf

fun! VexClose()
  let cur_win_nr = winnr()
  let target_nr = ( cur_win_nr == 1 ? winnr("#") : cur_win_nr )

  1wincmd w
  close
  unlet t:vex_buf_nr

  execute (target_nr - 1) . "wincmd w"
  call NormalizeWidths()
endf

fun! VexSize(vex_width)
  execute "vertical resize" . a:vex_width
  set winfixwidth
  call NormalizeWidths()
endf

fun! NormalizeWidths()
  let eadir_pref = &eadirection
  set eadirection=hor
  set equalalways! equalalways!
  let &eadirection = eadir_pref
endf

augroup NetrwGroup
  autocmd! BufEnter * call NormalizeWidths()
augroup END

let g:netrw_liststyle=3         " thin (change to 3 for tree)
let g:netrw_banner=0            " no banner
"-----------------------------------------------------------------------------*/
" Better indent lines /*
let g:indentLine_char = '│'
let g:indentLine_color_term = 239
"-----------------------------------------------------------------------------*/
" Status Line  /*
function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  elseif a:mode == 'r'
    hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  else
    hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

set statusline=%f
set statusline+=%r
set statusline+=%m

set statusline+=%#error#
set statusline+=%{&paste?'\ [PASTE]\ ':''}
set statusline+=%*

set statusline+=\ \|\ Line:%l
set statusline+=\ Col:%c

set statusline+=\ %=
"-----------------------------------------------------------------------------*/
"Disable paste mode after exit insert mode /*
au InsertLeave * set nopaste
au InsertEnter * set paste
"-----------------------------------------------------------------------------*/
" =========================================================================== */
