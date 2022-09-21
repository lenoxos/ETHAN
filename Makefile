meta:
	+${MAKE} -C .meta

book: meta
	mdbook build

clean:
	rm -rf book
	rm notes/SUMMARY.md
