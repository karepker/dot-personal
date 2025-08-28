setlocal expandtab
setlocal softtabstop=2
setlocal tabstop=2
setlocal shiftwidth=2

" No hard text wrapping by default.
setlocal textwidth=0
setlocal linebreak
" Soft wrap in a more aesthetically pleasing way (line up with text and an
" additional two spaces to get list text to line up).
setlocal breakindent
setlocal breakindentopt=list:2
" `list` above is informed by `formatlistpat` below, where we match ordered |
" unordered lists.
" vim escaping is crazy: \ and | need to be escaped with \.
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^\\s*[-*+]\\s\\+

" Show trailing whitespace as underscores.
setlocal listchars=trail:_
setlocal list

" Turn on spelling for markdown files.
setlocal spell

" Convenience abbreviations for deep headings.
iabbrev <buffer> h4 ####
iabbrev <buffer> h5 #####
iabbrev <buffer> h6 ######

" Toggle between wrapped text and text with hard line breaks.
nnoremap <buffer> <localleader>w :call markdown#ToggleWrap()<CR>
