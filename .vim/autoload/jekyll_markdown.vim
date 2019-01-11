" Runs `jekyll autotag` on the current file.
function! jekyll_markdown#Autotag()
	" Yeah, this only works if the jekyll repo is controlled by git, but it's
	" better than hard-coding two parent directories.
	!cd "$(git rev-parse --show-toplevel)" && bundler exec jekyll autotag --file "%:p"
endfunction
