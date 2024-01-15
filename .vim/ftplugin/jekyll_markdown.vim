" Start with the whole markdown configuration.
source <sfile>:h/markdown.vim

" Calls autotag on the current file and replaces the buffer's contents with the
" output. See :h range! for details.
nnoremap <buffer> <localleader>a :%!cd "$(git rev-parse --show-toplevel)" && python _util/autotag/autotag.py "%:p" "autotags.json"<CR>
nnoremap <buffer> <localleader>p :call jekyll_markdown#PublishNote()<CR>
nnoremap <buffer> <localleader>w :call jekyll_markdown#ToggleWrap()<CR>

" Convenience abbreviations.

" Expand `sp` to a span template and position cursor inside `class` attribute.
" `8hi` positions the cursor, and the trailing space is then removed.
" Inspired by
" https://stackoverflow.com/questions/11858927#comment92460029_11865489
iabbrev <buffer> sp <span class=""></span><ESC>8hi<C-R>=jekyll_markdown#RemoveTrailingSpace()<CR>

iabbrev <buffer> [TOC] <div class="post-toc">
\<CR><details>
\<CR><summary>
\<CR>
\<CR>### Table of Contents
\<CR>{:.no_toc}
\<CR>
\<CR></summary>
\<CR>
\<CR>* Use unordered list
\<CR>{:toc}
\<CR>
\<CR></details>
\<CR></div>
