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

setlocal autoindent " Or this happens https://vi.stackexchange.com/q/9753

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

" Convenience abbreviations for deep headings.
iabbrev <buffer> h4 ####
iabbrev <buffer> h5 #####
iabbrev <buffer> h6 ######

" Toggle between wrapped text and text with hard line breaks.
nnoremap <buffer> <localleader>w :call markdown#ToggleWrap()<CR>
