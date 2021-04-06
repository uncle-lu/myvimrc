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

"C++  model
function Cppmodel() 
	"Shortcut key mapping
	set mp=g++\ %\ -std=c++11\ -o\ %<\ -g\ -Wall\ -Wshadow\ -Wextra
	map \ll :w<CR>:mak<CR>:let g:qf=0<CR>:call Qf()<CR><C-w><C-k><C-w><C-k>
	map \lv :!./%<<CR>
	map \lb :Termdbg lldb %< <CR><c-w>H
	inoremap ' ''<ESC>i
	inoremap " ""<ESC>i
	inoremap ( ()<ESC>i
	inoremap [ []<ESC>i
	inoremap { {<CR>}<ESC>O
endfunction

"C model
function Cmodel() 
	"Shortcut key mapping
	set mp=gcc\ %\ -o\ %<\ -g\ -Wall\ -Wshadow\ -Wextra
	map \ll :w<CR>:mak<CR>:let g:qf=0<CR>:call Qf()<CR><C-w><C-k><C-w><C-k>
	map \lv :!./%<<CR>
	map \lb :Termdbg lldb %< <CR><c-w>H
	inoremap ' ''<ESC>i
	inoremap " ""<ESC>i
	inoremap ( ()<ESC>i
	inoremap [ []<ESC>i
	inoremap { {<CR>}<ESC>O
endfunction

"JS model
function JSmodel()
	"Shortcut key mapping
	inoremap ' ''<ESC>i
	inoremap " ""<ESC>i
	inoremap ( ()<ESC>i
	inoremap [ []<ESC>i
	inoremap { {}<ESC>i
endfunction

:autocmd BufNewFile,BufRead *.cpp :call Cppmodel()
:autocmd BufNewFile,BufRead *.c :call Cmodel()
:autocmd BufNewFile,BufRead *.js :call JSmodel()
