all: pdf archive

pdf: module01.pdf
archive: ../workshop110521.tar.bz2

module01.pdf: module01.dvi
	dvipdfmx $^

../workshop110521.tar.bz2: module01.pdf
	tar -cjf $@ *.blend textures/* $^
