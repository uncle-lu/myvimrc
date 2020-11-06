"Basis
set number
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=2
set showmatch
set mouse=a
set belloff=all
 
"gvim
set gfn=Consolas:h15:cANSI:qDRAFT
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b 
autocmd GUIEnter * simalt ~x

"Chinese
set fileencoding=utf-8
set encoding=utf-8

"Color
syntax enable
syntax on
colorscheme molokai
set background=dark

"Map 
map <F2> :tabnew 
map \t :call Qf()<CR>
map <c-n> :NERDTreeToggle<CR>
map <c-t> :TagbarToggle<CR>
map <c-c> "+y
map <c-v> "+p

"The window function
let g:qf=0
func! Qf()
	if g:qf
		let g:qf=0
		cclose
	else
		let g:qf=1
		copen
	end
endfunc

"C++  medol
function Cppmodel() 
  "Shortcut key mapping
  packadd termdebug
  set mp=g++\ %\ -std=c++11\ -o\ %<\ -g\ -Wall\ -Wshadow\ -Wextra
  map \ll :w<CR>:mak<CR>:let g:qf=0<CR>:call Qf()<CR><C-w><C-k><C-w><C-k>
  map \lv :!%<<CR>
  map \lb :Termdebug %< <CR><c-w>L
  map s :Step<CR>
  inoremap ' ''<ESC>i
  inoremap " ""<ESC>i
  inoremap ( ()<ESC>i
  inoremap [ []<ESC>i
  inoremap { {<CR>}<ESC>O
endfunction
:autocmd BufNewFile,BufRead *.cpp :call Cppmodel()

"C medol
function Cmodel() 
  "Shortcut key mapping
  packadd termdebug
  set mp=gcc\ %\ -o\ %<\ -g\ -Wall\ -Wshadow\ -Wextra
  map \ll :w<CR>:mak<CR>:let g:qf=0<CR>:call Qf()<CR><C-w><C-k><C-w><C-k>
  map \lv :!%<<CR>
  map \lb :Termdebug %< <CR><c-w>L
  map s :Step<CR>
  inoremap ' ''<ESC>i
  inoremap " ""<ESC>i
  inoremap ( ()<ESC>i
  inoremap [ []<ESC>i
  inoremap { {<CR>}<ESC>O
endfunction
:autocmd BufNewFile,BufRead *.c :call Cmodel()

"plug
call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'majutsushi/tagbar'
"Plug 'vim-latex/vim-latex'
call plug#end()

"Vim-latex
"let g:tex_flavor='latex'
"filetype plugin on
"filetype indent on
"set shellslash

"Vim-TagBar
let g:tagbar_autofocus = 1

"Vim-startify
let g:startify_custom_header = [
            \ '+------------------------------+',
            \ '|  Say little, do much.        |',
            \ '|  The future is upon us.      |',
            \ '|  Are you happy today?        |',
            \ '+----------------+-------------+',
            \]
