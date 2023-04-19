# rbenv normally requires that ~/.rbenv/bin/ be prepended to PATH, but the AUR
# version of rbenv installs to /usr/bin/, which is already in PATH.

# Only prepare rbenv if rbenv is actually installed.
# Inspired by https://stackoverflow.com/a/677212.
if command -v rbenv &> /dev/null ; then
	# Required by rbenv.
	eval "$(rbenv init -)"
fi
