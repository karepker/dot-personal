# Set umask so we end up with: rwxr-x---
# Linux does not allow files to be created with the execute permission set, so
# this is equivalent to: rw-r----- for files.
umask 027
