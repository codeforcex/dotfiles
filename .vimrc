" =======================================================================
" Author:       CodeForceX <codeforcex@protonmail.com>
" Repo:         http://github.com/codeforcex/dotfiles
" Version:      1.0
" Last Updated: 28/04/2016
" =======================================================================

" =======================================================================
" VUNDLE PLUGIN MANAGER /*
" =======================================================================
" Initialize Vundle /*
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" -------------------------------------------------------------------- */
"Vim Bookmarks /*
Plugin 'MattesGroeger/vim-bookmarks'
" -------------------------------------------------------------------- */
" Preview color codes /*
Plugin 'gorodinskiy/vim-coloresque'
" -------------------------------------------------------------------- */
" Syntax checking hacks /*
Plugin 'scrooloose/syntastic'
" -------------------------------------------------------------------- */
" Toggle cursor shape in mode /*
Plugin 'jszakmeister/vim-togglecursor'
" -------------------------------------------------------------------- */
" Who does not need a git wrapper? /*
Plugin 'tpope/vim-fugitive'
" -------------------------------------------------------------------- */
" A light and configurable statusline/tabline /*
Plugin 'itchyny/lightline.vim'
" -------------------------------------------------------------------- */
"Vim script for text filtering and alignment /*
Plugin 'godlygeek/tabular'
" -------------------------------------------------------------------- */
" Send command from vim to a running tmux session /*
Plugin 'jgdavey/tslime.vim'
" -------------------------------------------------------------------- */
" Display indention levels with thin vertical lines /*
Plugin 'Yggdroot/indentLine'
" -------------------------------------------------------------------- */
" Insert or delete brackets, parens, quotes in pair /*
Plugin 'jiangmiao/auto-pairs'
" -------------------------------------------------------------------- */
" Show the list of buffers in the command bar/statusline /*
Plugin 'bling/vim-bufferline'
" -------------------------------------------------------------------- */
" Fast, as-you-type, fuzzy-search code completion engine /*
Plugin 'Valloric/YouCompleteMe'
" -------------------------------------------------------------------- */
" Python indent, tries to match closely what's suggested in PEP8 /*
Plugin 'vim-scripts/indentpython.vim'
" -------------------------------------------------------------------- */
" Toggles between relative and absolute line numbers automatically /*
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

" Vundle Ends
call vundle#end()
filetype plugin indent on
" ----------------------------------------------------------------- */ */
" =======================================================================

" =======================================================================
" SETTINGS /*
" =======================================================================
" Theme /*
colorscheme monokai
let g:monokai_thick_border = 0
" -------------------------------------------------------------------- */
" Encoding /*
set encoding=utf-8
" -------------------------------------------------------------------- */
" Folding /*
set foldmethod=marker
set foldmarker=/*,*/
set foldlevel=0
" -------------------------------------------------------------------- */
" No backup /*
set nobackup
set noswapfile
set nowritebackup
" -------------------------------------------------------------------- */
" Security /*
set modelines=0
set nomodeline
" -------------------------------------------------------------------- */
" Cursor /*
set cursorline
" -------------------------------------------------------------------- */
" Enable mouse /*
set mouse=a
" -------------------------------------------------------------------- */
" Better searching /*
set ignorecase
set smartcase
set hlsearch
" -------------------------------------------------------------------- */
" Line No./Page Title /*
set title
set titleold=
set number
" -------------------------------------------------------------------- */
" Make Esc work faster /*
set ttimeoutlen=50
" -------------------------------------------------------------------- */
" Hide buffers on close /*
set hidden
" -------------------------------------------------------------------- */
" Always show statusline /*
set laststatus=2
" -------------------------------------------------------------------- */
" Access system clipboard /*
set clipboard=unnamed
" -------------------------------------------------------------------- */
" Show Naughty Characters /*
set list listchars=tab:»·,trail:·,nbsp:·
" -------------------------------------------------------------------- */
" Lots of history and undo /*
set history=1000
set undolevels=1000
" -------------------------------------------------------------------- */
" Automatically Indent Code /*
set autoindent
set smartindent
" -------------------------------------------------------------------- */
" Hide YouCompleteMe errors /*
set shortmess+=c
" -------------------------------------------------------------------- */
"Show keypress in statusline /*
set showcmd
" -------------------------------------------------------------------- */
" Reducing the amount of processing required /*
set ttyfast
set lazyredraw
" -------------------------------------------------------------------- */
" Auto read When File is Changed From Outside /*
set autoread
" -------------------------------------------------------------------- */
" Allow backspacing over any char in insert mode /*
set backspace=indent,eol,start
" -------------------------------------------------------------------- */
" All matches in a line are replaced instead of one /*
set gdefault
" -------------------------------------------------------------------- */
" Place cursor around center of page when scrolling /*
set scrolloff=20
" -------------------------------------------------------------------- */
" Operate across lines regardless of the underlying text /*
set virtualedit=block
" -------------------------------------------------------------------- */
" Change directory to the current buffer when opening files. /*
set autochdir
" ----------------------------------------------------------------- */ */
" =======================================================================

" =======================================================================
" MAPPINGS /*
" =======================================================================
" Save /*
nnoremap / :w!<cr>
" -------------------------------------------------------------------- */
" Leader /*
let mapleader =","
" -------------------------------------------------------------------- */
" Tslmie  /*
nmap <F5> :Tmux !python %<cr>
" -------------------------------------------------------------------- */
" Folding /*
nnoremap <F6> :set foldlevel=999<cr>
nnoremap <F6><F6> :set foldlevel=0<cr>
nnoremap s za
" -------------------------------------------------------------------- */
" Scrolling /*
nnoremap <home> <C-y><C-y><C-y>
nnoremap <end> <C-e><C-e><C-e>
" -------------------------------------------------------------------- */
" Bookmarks /*
nnoremap <Leader><Leader> :BookmarkToggle <cr>
nnoremap <Leader>i :BookmarkAnnotate<cr>
nnoremap <Leader>a :BookmarkShowAll<cr>
nnoremap <Pagedown> :BookmarkNext<cr>
nnoremap <Pageup> :BookmarkPrev<cr>
" -------------------------------------------------------------------- */
" Paste mode /*
set pastetoggle=<F2>
" -------------------------------------------------------------------- */
" Indent code /*
nnoremap <F7> mzgg=G`z`
" -------------------------------------------------------------------- */
" Close buffer /*
nnoremap `` :x!<cr>
" -------------------------------------------------------------------- */
" Explore files /*
nnoremap <silent>; :call VexToggle(getcwd())<CR>
" -------------------------------------------------------------------- */
"End/Start Line /*
nnoremap l $a
nnoremap h ^a
" -------------------------------------------------------------------- */
" Create splits /*
nnoremap 1<tab> :sv<cr><c-w><down>
nnoremap 2<tab> :vs<cr><c-w><right>
" -------------------------------------------------------------------- */
" Switch buffers /*
nnoremap <silent> b :bp<CR>
" -------------------------------------------------------------------- */
" Timestamp /*
nnoremap <F1> "=strftime("%c")<CR>P
inoremap <F1> <C-R>=strftime("%c")<CR>
" -------------------------------------------------------------------- */
" Vimrc edit/source /*
nnoremap <leader>v :edit! $MYVIMRC<cr>
nnoremap <leader>/ :source $MYVIMRC<cr>:noh<cr>
" -------------------------------------------------------------------- */
" Search and Replace /*
nnoremap ' :/
nnoremap <leader>' <cr>:%s/a/b/
" -------------------------------------------------------------------- */
" Move between splits /*
noremap <Tab> <C-w><C-w>
" -------------------------------------------------------------------- */
" Add blank line above /*
nnoremap \ O<esc>
" -------------------------------------------------------------------- */
" Move line above/below /*
nnoremap  <C-up> ddkP
nnoremap  <C-down> ddp
" -------------------------------------------------------------------- */
" Clear last search with return /*
nnoremap <CR> :noh<CR><CR>
" -------------------------------------------------------------------- */
" Delete text between brackets/par. /*
nnoremap d' di'i
nnoremap d" di"i
nnoremap d9 di(i
nnoremap d[ di[i
nnoremap d{ di{i
" -------------------------------------------------------------------- */
" Switch keys for visual and visual block mode /*
nnoremap v <C-v>
nnoremap <C-v> v
" -------------------------------------------------------------------- */
" Y yanks from the cursor to the end of the line /*
map Y y$
" ----------------------------------------------------------------- */ */
" =======================================================================

" =======================================================================
" PLUGIN SETTINGS /*
" =======================================================================
" Synastic /*
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_error_symbol = " "
let g:syntastic_warning_symbol = " "
let g:syntastic_style_error_symbol = " "
let g:syntastic_style_warning_symbol= " "
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_always_populate_loc_list = 1
" -------------------------------------------------------------------- */
" Bookmark /*
let g:bookmark_sign = ''
let g:bookmark_annotation_sign = ''
let g:bookmark_manage_per_buffer = 1
let g:bookmark_center = 1

highlight BookmarkSign ctermfg=214
highlight BookmarkAnnotationSign ctermfg=160
highlight BookmarkLine ctermbg=214
highlight BookmarkAnnotationLine ctermbg=160
" -------------------------------------------------------------------- */
" Lightline /*
let g:bufferline_show_bufnr = 0
let g:bufferline_active_buffer_left = '  '
let g:bufferline_active_buffer_right = '  '

let g:bufferline_echo = 0
let g:lightline = {
			\ 'colorscheme': 'jellybeans',
			\ 'active': {
			\     'left': [
			\         ['mode', 'paste'],
			\         ['modified'],
			\         ['fugitive'],
			\         ['bufferline']
			\     ],
			\     'right': [
			\ [ 'syntastic', 'lineinfo' ], ['percent']
			\     ]
			\ },
			\ 'component': {
			\     'paste': '%{&paste?"   ":""}',
			\     'readonly': '%{&readonly?"":""}',
			\     'bufferline': '%{bufferline#refresh_status()}%{MyBufferline()[0]}'.
			\                   '%#TabLineSel#%{g:bufferline_status_info.current}'.
			\                   '%#LightLineLeft_active_2#%{MyBufferline()[2]}'
			\ },
			\ 'component_function': {
			\     'fugitive': 'MyFugitive',
			\ },
			\ 'component_expand': {
			\     'syntastic': 'SyntasticStatuslineFlag',
			\ },
			\ 'component_type': {
			\     'syntastic': 'error',
			\ },
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }

let g:lightline.mode_map = {
			\ 'n'      : '   ',
			\ 'i'      : '   ',
			\ 'R'      : '   ',
			\ 'v'      : '   ',
			\ "\<C-v>" : '     ',
			\ }

function! LightLineReadonly()
	return &readonly ? '' : ''
endfunction

function! MyBufferline()
	call bufferline#refresh_status()
	let b = g:bufferline_status_info.before
	let c = g:bufferline_status_info.current
	let a = g:bufferline_status_info.after
	let alen = strlen(a)
	let blen = strlen(b)
	let clen = strlen(c)
	let w = winwidth(0)  * 4 / 10
	if w < alen+blen+clen
		let whalf = (w - strlen(c)) / 2
		let aa = alen > whalf && blen > whalf ? a[:whalf] : alen + blen < w - clen || alen < whalf ? a : a[:(w - clen - blen)]
		let bb = alen > whalf && blen > whalf ? b[-(whalf):] : alen + blen < w - clen || blen < whalf ? b : b[-(w - clen - alen):]
		return [(strlen(bb) < strlen(b) ? '...' : '') . bb, c, aa . (strlen(aa) < strlen(a) ? '...' : '')]
	else
		return [b, c, a]
	endif
endfunction

function! MyFugitive()
	try
		if expand('%:t') !~? 'Tagbar' && exists(' *fugitive#head')
			let mark = '  '
			let _ = fugitive#head()
			return strlen(_) ? mark._ : ''
		endif
	catch
	endtry
	return ''
endfunction

augroup AutoSyntastic
	autocmd!
	autocmd BufWritePost  *py call s:syntastic()
augroup END
function! s:syntastic()
	SyntasticCheck
	call lightline#update()
endfunction

function! MyMode()
	let fname = expand('%:t')
endfunction
" -------------------------------------------------------------------- */
" Remove trailing spaces /*
if has("autocmd")
	" remove trailing white spaces
	autocmd BufWritePre  * :%s/\s\+$//e
endif
" -------------------------------------------------------------------- */
" File Explorer - Need Tree Alternative /*
" >> Credit : http://ivanbrennan.nyc/blog/2014/01/16/rigging-vims-netrw/

fun! VexToggle(dir)
	if exists("t:vex_buf_nr")
		call VexClose()
	else
		call VexOpen(a:dir)
	endif
endf

fun! VexOpen(dir)
	let g:netrw_browse_split=4
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
	autocmd! BufEnter  * call NormalizeWidths()
augroup END

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_list_hide='\.pyc$,\.pyo$,\.o$,\.swp$,^\.svn/$,^\.DS_Store$'

" ------------------------------------------------------------------- */
" Auto enable paste mode when pasting in insert mode /*
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
noremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" -----------------------------------------------------------------*/ */
" =======================================================================
