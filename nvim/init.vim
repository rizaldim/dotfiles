set listchars=tab:»\ ,eol:¬
set list
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4

filetype on

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

autocmd FileType html call Html_settings()

function! Html_settings()
  setlocal tabstop=2
  setlocal shiftwidth=2
  setlocal softtabstop=2
endfunction
