set listchars=tab:»\ ,eol:¬
set list
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4

filetype on

" highlight trailing whitespaces
highlight TrailingWhitespace ctermbg=red guibg=red
match TrailingWhitespace /\s\+$/

autocmd FileType html call Html_settings()
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

function! Html_settings()
  setlocal tabstop=2
  setlocal shiftwidth=2
  setlocal softtabstop=2
endfunction
