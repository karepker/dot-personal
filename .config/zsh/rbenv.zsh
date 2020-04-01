# rbenv normally requires that ~/.rbenv/bin/ be prepended to PATH, but the AUR
# version of rbenv installs to /usr/bin/, which is already in PATH.

# Required by rbenv.
eval "$(rbenv init -)"
