packadd minpac
call minpac#init()
call minpac#add('tpope/vim-commentary', { 'type': 'opt' })

packadd vim-commentary

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()

" Tabs and spaces
set noexpandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Whitespace
set listchars=tab:▸\ ,eol:¬
set list

set hidden

set colorcolumn=81
set number

" Searching
set ignorecase
set smartcase

" Autocomplete
set wildmenu
set wildmode=list:longest

set scrolloff=3

let mapleader = ","
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Fuzzy search file
nnoremap <C-p> :<C-u>FZF<CR>

let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'grep']

nnoremap <Leader>g :Grepper -tool rg<CR>

" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>

" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

nnoremap <Leader><Space> :noh<CR>

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
