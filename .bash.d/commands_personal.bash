taggrep() {
	if [ $# -lt 1 ]; then
		echo "Usage: taggrep <tag>"
	fi
	find . -name "*.md" -print0 | \
		xargs -0 -I % grep -Pzol "(?s)Tag:.*?$1.*?\n\n" %
}

