# Bundler's default cache directory is ~/.bundle/cache/. I track ~/.bundle/ via
# git, so assign the cache elsewhere.

BUNDLE_CACHE_DIRECTORY=~/.cache/bundle/
mkdir -p "$BUNDLE_CACHE_DIRECTORY"

# https://bundler.io/man/bundle-config.1.html#CONFIGURE-BUNDLER-DIRECTORIES
export BUNDLE_USER_CACHE="$BUNDLE_CACHE_DIRECTORY"
