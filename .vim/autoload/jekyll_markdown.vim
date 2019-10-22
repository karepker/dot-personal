" Runs `jekyll autotag` on the current file.
function! jekyll_markdown#Autotag()
	" Yeah, this only works if the jekyll repo is controlled by git, but it's
	" better than hard-coding two parent directories.
	!cd "$(git rev-parse --show-toplevel)" && bundler exec jekyll autotag --file "%:p"
endfunction

" Copies current file from my personal logs site to my website directory via a
" script.
function! jekyll_markdown#PublishNote()
	" Yeah, this only works if the jekyll repo is controlled by git, but it's
	" better than hard-coding two parent directories.
	!"$(git rev-parse --show-toplevel)/_util/notes_transfer.sh" "%:p"
endfunction

" Creates a YAML header for the note with the title if possible.
function! jekyll_markdown#GetHeader()
	" :t gets tail,
	" :r gets root,
	" :s command strips date prefix,
	" :gs command substitutes space for hyphen.
	" TODO: Dedupe with logic in UltiSnips snippet.
	let stripped_title = expand('%:t:r:s?\d\d\d\d-\d\d-\d\d-??:gs?-? ?')
	" Reminder, single quote does not allow escape characters.
	if empty(stripped_title)
		return "---\n---\n\n"
	endif
	return "---\ntitle: _" . stripped_title . "_\n---\n\n"
endfunction
