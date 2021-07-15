#!/bin/sh
# gpg wrapper
path=/run/media/${USER}/important/gpg
if [ $# -eq 0 ]; then echo "g [i, ex, l, d, e]" ; fi

case "$1" in
l)
gpg --list-keys ;;
i)
gpg --import $path/public.key
gpg --allow-secret-key-import --import $path/private.key ;;
ex)
gpg --export -a $2 > public.key
gpg --export-secret-key -a $2 > private.key ;;
d)
gpg -d $2 ;;
e) 
gpg -e -r $USER $2
;;
esac