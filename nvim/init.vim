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

" Enable us to switch file without saving current buffer first
set hidden

set colorcolumn=81,101
set number

" Ignore case when searching
set ignorecase
" but if search term is mixed case then don't ignore case
set smartcase

" Autocomplete
set wildmenu
set wildmode=list:longest

" When cursor is moving up/down don't wait until it's in the first/last line to scroll.
" In this setting, once cursor in the 3rd top/bottom line then scroll.
set scrolloff=3

let mapleader = ","

" autocomple %% into current working directory
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
