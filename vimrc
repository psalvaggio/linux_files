colorscheme evening
syntax on
set background=dark
set t_Co=256
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
au BufNewFile,BufRead Jenkinsfile setf groovy
command! -bang -range=% -complete=file -nargs=* W <line1>,<line2>write<bang> <args>
command! -bang Q quit<bang>

function! ClangFormatFile()
  write
  setlocal autoread
  silent execute "!clang-format -i " . bufname("%")
  redraw!
  edit
endfunction

map ,cf :call ClangFormatFile()<cr>
