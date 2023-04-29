packadd minpac
call minpac#init()

set listchars=tab:»\ ,eol:¬
set list
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set termguicolors

filetype on

autocmd FileType html call Html_settings()
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

function! Html_settings()
  setlocal tabstop=2
  setlocal shiftwidth=2
  setlocal softtabstop=2
endfunction

function! EchoRunTimePath()
	echo join(split(&runtimepath, ','), "\n")
endfunction

command! RunTimePath call EchoRunTimePath()

