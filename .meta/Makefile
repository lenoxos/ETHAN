notes: atoms SUMMARY.md TOC.md
	cp SUMMARY.md ../notes/

atoms:
	printf "# Atoms\n\n" > ATOMS.md
	find ../notes/atoms/*.md | sort | sed 's|^\.\./notes/atoms/||' | sed 's|^\(.*\)\.md|* [\1](./atoms/\1.md)|' >> ATOMS.md

SUMMARY.md: atoms TOC.md
	cat TOC.md > SUMMARY.md
	cat ATOMS.md >> SUMMARY.md

TOC.md:
	printf "# Summary\n\n" > TOC.md
