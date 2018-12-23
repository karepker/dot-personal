" This only detects Jekyll posts. Jekyll pages do not necessarily have to be in
" a _posts/ directory.
autocmd BufRead,BufNewFile */_posts/*.md set filetype=jekyll_markdown
