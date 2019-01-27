" Start with the whole markdown configuration.
source <sfile>:h/markdown.vim

nnoremap <buffer> <localleader>a :call jekyll_markdown#Autotag()<CR>
nnoremap <buffer> <localleader>p :call jekyll_markdown#PublishNote()<CR>
