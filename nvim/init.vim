packadd minpac
call minpac#init()

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set hidden
set colorcolumn=81
set number

set ignorecase
set smartcase

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

