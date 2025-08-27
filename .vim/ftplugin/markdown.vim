setlocal expandtab
setlocal softtabstop=2
setlocal tabstop=2
setlocal shiftwidth=2

" Show trailing whitespace as underscores.
setlocal listchars=trail:_
setlocal list

" Formatting for bullets.
setlocal comments=fb:*,fb:-,fb:+,n:>,se:```

setlocal autoindent " Or this happens https://vi.stackexchange.com/q/9753

" Turn on spelling for markdown files.
setlocal spell

" Convenience abbreviations for deep headings.
iabbrev <buffer> h4 ####
iabbrev <buffer> h5 #####
iabbrev <buffer> h6 ######

" Toggle between wrapped text and text with hard line breaks.
nnoremap <buffer> <localleader>w :call markdown#ToggleWrap()<CR>
