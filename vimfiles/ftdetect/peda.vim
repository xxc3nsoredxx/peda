" Vim filetype detection file
" Language: GDB init
" Author:   Oskari Pirhonen <xxc3ncoredxx@gmail.com>

" Simply set the filetype to gdb to enable gdb init's filetype stuff which is
" already included with Vim.
" EZ ;)
autocmd BufNewFile,BufRead *.pedainit* set filetype=gdb
