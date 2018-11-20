# Aliases

# For compiling C++ code, options that I use every time.
alias g++='g++ -Wall -Wextra -Werror -pedantic-errors -std=c++14'
alias clang++='clang++ -Wall -Wextra -Werror -pedantic-errors -std=c++14'

alias pylint='pylint --extension-pkg-whitelist=numpy'

# Git aliases
alias gs='git status'  # Take precedence over ghostscript `gs` command.
alias gb='git branch'
alias gd='git diff'

# Makes ghostscript callable.
alias ghostscript='/usr/bin/gs'

# Evil mode is still overrated though.
alias ed="emacsclient -c -n"

# Functions
# These are not technically aliases but really what's the difference from bash's
# perspective?

# Finds tags in jekyll.
# Note: Under development.
taggrep() {
	if [ $# -lt 1 ]; then
		echo "Usage: taggrep <tag>"
	fi
	find . -name "*.md" -print0 | \
		xargs -0 -I % grep -Pzol "(?s)Tag:.*?$1.*?\n\n" %
}
