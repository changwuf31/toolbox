build:
	ninja -C builddir

install:
	cp -a builddir/src/toolbox ~/bin/toolbox
