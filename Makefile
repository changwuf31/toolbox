build:
	ninja -v -C builddir

install:
	cp -a builddir/src/toolbox /home/shared/bin/toolbox
