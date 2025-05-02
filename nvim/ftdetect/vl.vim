" ~/.config/nvim/ftdetect/mylang.vim
augroup vlFileType
  autocmd!
  autocmd BufNewFile,BufRead *.vl set filetype=vl
augroup END

