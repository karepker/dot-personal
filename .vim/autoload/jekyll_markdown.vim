" Copies current file from my personal logs site to my website directory via a
" script.
function! jekyll_markdown#PublishNote()
	let l:notes_path = '~/link/personal/webzone/notes/_posts/' . expand('%:t')
	let l:script_path = '~/link/log/_util/conversion/transfer_notes/transfer_notes.pl'
	execute '!perl ' . l:script_path . ' < %:p > ' . l:notes_path
endfunction

" Eats trailing spaces.
" Inspired by a `:help abbreviation`.
function! jekyll_markdown#RemoveTrailingSpace()
	let last_typed_char = nr2char(getchar(0))
	return (last_typed_char =~ '\s') ? '' : last_typed_char
endfunction

" Creates a YAML header for the note with the title if possible.
function! jekyll_markdown#GetHeader()
	" :t gets tail,
	" :r gets root,
	" :s command strips date prefix,
	" :gs command substitutes space for hyphen.
	" TODO: Dedupe with logic in UltiSnips snippet.
	let l:stripped_title = expand('%:t:r:s?\d\d\d\d-\d\d-\d\d-??:gs?-? ?')
	" Reminder, single quote does not allow escape characters.
	" 'entry' is a placeholder title that I use because Jekyll doesn't like
	" empty titles.
	if empty(l:stripped_title) || l:stripped_title == "entry"
		return "---\n---\n\n"
	endif
	return "---\ntitle: _" . l:stripped_title . "_\n---\n\n"
endfunction
