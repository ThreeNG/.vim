" Autogroups
" ==========


augroup vimrc_autocmds
  autocmd!

  " Remove trailing whitespace on write.
  autocmd BufWritePre * :%s/\s\+$//e

  " Set some file types.
  autocmd BufRead,BufNewFile *.md set filetype=mkd
  autocmd BufRead,BufNewFile *.mmd set filetype=mkd
  autocmd BufRead,BufNewFile *.markdown set filetype=mkd

  " Turn spell-checking on for specific filetypes.
  autocmd FileType gitcommit setlocal spell
  autocmd FileType mkd setlocal spell

  " Wrap text at the when using markdown.
  autocmd FileType mkd setlocal textwidth=80

  " PHP files are HTML files too.
  autocmd BufRead,BufNewFile *.php set filetype=php.html

  " Set the program which will be used to execute the current file based on
  " the current file type.
  autocmd BufRead,BufNewFile *.ex let g:execute_with = 'elixir'
  autocmd BufRead,BufNewFile *.exs let g:execute_with = 'elixir'
  autocmd BufRead,BufNewFile *.rb let g:execute_with = 'ruby'
augroup END