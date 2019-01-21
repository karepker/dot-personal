" This only detects Jekyll posts. Jekyll pages do not necessarily have to be in
" a _posts/ directory.
autocmd BufRead,BufNewFile */_posts/*.md set filetype=jekyll_markdown

" Inserts YAML header:
"
" * 0put (:h :put) pastes text from the given register onto line 0.
" * = uses the expression register (:h quote=) to output an expression.
" * I believe "|" terminates the command and $ makes the cursor go to the
"	end of the inserted text instead of the second to last line. I don't know
"	why.
"
" Inspiration from
" http://vim.wikia.com/wiki/Shebang_line_automatically_generated
"
" Maybe this should not be in ftdetect/, but it makes sense to put it here for
" now so I can keep the file patterns in sync.
autocmd BufNewFile */_posts/*.md 0put =jekyll_markdown#GetHeader()|$
