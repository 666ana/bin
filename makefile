PREFIX = /usr/local
path = ${DESTDIR}${PREFIX}/bin

all:
	@echo 'Use make install.'

install:
	install -Dm0755 yt ${path}/yt
	install -Dm0755 ss ${path}/ss
	install -Dm0755 ipv6 ${path}/ipv6
	install -Dm0755 file ${path}/file
	install -Dm0755 rss ${path}/rss
	install -Dm0755 g ${path}/g
	install -Dm0755 gt ${path}/gt
	install -Dm0755 ig ${path}/ig
	install -Dm0755 wb ${path}/wb
	install -Dm0755 pkg ${path}/pkg
	install -Dm0755 fch ${path}/fch
	install -Dm0755 spot ${path}/spot
	install -Dm0755 server ${path}/server
	install -Dm0755 rdmenu ${path}/rdmenu
	install -Dm0755 sdmenu ${path}/sdmenu
	install -Dm0755 tdmenu ${path}/tdmenu
	install -Dm0755 open ${path}/open
	install -Dm0755 pch ${path}/pch
	install -Dm0755 vol ${path}/vol
	install -Dm0755 bri ${path}/bri

uninstall:
	rm -rf -- ${path}/*
