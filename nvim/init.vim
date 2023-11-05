packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

" whitespace characters handling
set listchars=tab:»\ ,eol:¬
set list

" searching
set ignorecase
set smartcase

" line numbers
set number

" tab size and stuffs
set tabstop=4
set shiftwidth=4
set softtabstop=4

" gui colors
set termguicolors

filetype on

autocmd FileType html call Html_settings()
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

autocmd FileType javascript call Javascript_settings()

function! Html_settings()
  setlocal tabstop=2
  setlocal shiftwidth=2
  setlocal softtabstop=2
endfunction

function! Javascript_settings()
  setlocal tabstop=2
  setlocal shiftwidth=2
  setlocal softtabstop=2
endfunction

function! EchoRunTimePath()
	echo join(split(&runtimepath, ','), "\n")
endfunction
command! RunTimePath call EchoRunTimePath()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

nnoremap <C-p> :<C-u>FZF<CR>
