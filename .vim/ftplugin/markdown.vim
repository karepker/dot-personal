setlocal expandtab
setlocal softtabstop=2
setlocal tabstop=2
setlocal shiftwidth=2

" Turn off extra whitespace at the end of lines when in markdown mode.
augroup highlight_extra_whitespace
	autocmd!
augroup END

" Show trailing whitespace as underscores.
setlocal listchars=trail:_
setlocal list

" Formatting for bullets.
setlocal comments=fb:*,fb:-,fb:+,n:>,se:```

" Makes hitting <CR> after typing the text for the bullet not add extra
" whitespace.
setlocal noautoindent

" Turn off trailing whitespace highlighting in insert mode.
" Some intricacies about buffer-local autocommands in:
" https://vi.stackexchange.com/questions/8056
augroup list_trailing_whitespace
	autocmd! * <buffer>
	autocmd InsertEnter <buffer> :setlocal nolist
	autocmd InsertLeave <buffer> :setlocal list
augroup END

" Turn on spelling for markdown files.
setlocal spell

" Common abbreviations for typos.
iabbrev <buffer> work_directory work_director
