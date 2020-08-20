packadd minpac
call minpac#init()

" Fuzzy search
call minpac#add('junegunn/fzf')

" For comment and uncomment
call minpac#add('tpope/vim-commentary', { 'type': 'opt' })

" Dependency for kana/vim-textobj-entire
call minpac#add('kana/vim-textobj-user', { 'type': 'opt' })

" Text object for entire buffer
call minpac#add('kana/vim-textobj-entire', { 'type': 'opt' })

packadd vim-commentary
packadd vim-textobj-user
packadd vim-textobj-entire

command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! Rtp echo join(split(&runtimepath, ','), "\n")

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
