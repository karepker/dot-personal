# Installing manually may require that some pyenv shims directory be appended to
# path (as rbenv does), but Arch Linux installs to /usr/bin/.

# Only prepare pyenv if pyenv is actually installed.
# Inspired by https://stackoverflow.com/a/677212.
if command -v pyenv &> /dev/null ; then
	# Required by pyenv.
	eval "$(pyenv init -)"
fi
