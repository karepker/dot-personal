" Toggles between hard line breaks and soft line breaks.
function! markdown#ToggleWrap()
	" If textwidth is currently set (hard breaks are ON), we turn them OFF.
	if &l:textwidth > 0
		" Save the current textwidth so we can restore it later.
		let b:hard_break_textwidth = &l:textwidth
		" Disable hard breaks.
		setlocal textwidth=0
	" If textwidth is not set (hard breaks are OFF), we turn them ON.
	else
		" Check if we have a previously saved textwidth value.
		if exists('b:hard_break_textwidth')
			" Restore the saved value.
			let &l:textwidth = b:hard_break_textwidth
			" Clean up the variable to reset the state.
			unlet b:hard_break_textwidth
		else
			" Prefer the global textwidth as a fallback. If that's not set, just
			" use 80.
			let &l:textwidth = (&g:textwidth > 0) ? &g:textwidth : 80
		endif
	endif
	" Always toggle the visual linebreak option.
	setlocal linebreak!
endfunction
