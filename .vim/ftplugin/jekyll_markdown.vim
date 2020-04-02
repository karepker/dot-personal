" Start with the whole markdown configuration.
source <sfile>:h/markdown.vim

nnoremap <buffer> <localleader>a :call jekyll_markdown#Autotag()<CR>
nnoremap <buffer> <localleader>p :call jekyll_markdown#PublishNote()<CR>

" Convenience abbreviations.
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
