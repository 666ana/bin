#!/bin/sh
# ss tool.
# deps: maim, xclip
path=$HOME/Pictures/Screenshots
server=$(server main) link=$(server 1) spath=$(server path) r=$((RANDOM %25+15))
varrandom=$(cat /dev/urandom | tr -dc "[:alnum:]" | head -c$r)

if [ $# -eq 0 ]; then echo "ss [link, cb, select]" ; fi
if [ ! -d "$path" ]; then mkdir -p $path ; fi

case "$1" in
link)
maim -s -u -m 10 "$path/$varrandom.png"
rsync -rv $path/$varrandom.png $server:$spath/i/
echo "$link/i/$varrandom.png" | xclip -selection clipboard
;;
select)
maim -s -u -m 10 "$path/$varrandom.png"
;;
cb)
maim -s -u -m 10 | xclip -selection clipboard -t image/png
;;
esac
