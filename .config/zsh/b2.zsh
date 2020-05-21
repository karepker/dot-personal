# B2_ACCOUNT_INFO controls the location where B2 account information is cached.
# The standard location is ~/.b2_account_info. Create a b2 directory in the standard cache directory and use that instead.

mkdir -p ~/.cache/b2
export B2_ACCOUNT_INFO=~/.cache/b2/b2_account_info
