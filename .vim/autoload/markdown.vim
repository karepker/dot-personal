" Toggles between hard line breaks and soft line breaks.
function! markdown#ToggleWrap()
	" Save the value of textwidth to a buffer-local variable if it is set.
	if !exists('b:hard_break_textwidth')
		let b:hard_break_textwidth = &textwidth
		setlocal textwidth=0
	else
		let &l:textwidth = b:hard_break_textwidth
		unlet b:hard_break_textwidth
	endif
	setlocal linebreak!
endfunction
