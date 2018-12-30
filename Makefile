# pgxn.github.com -- html pages generation

.PHONY: clean

all: html

html: pgxnclient/index.html

pgxnclient/index.html: sm/master/docs/html/index.html
	rsync -av --exclude ".*" --delete-excluded "$$(dirname $<)/" "$$(dirname $@)/"

sm/master/docs/html/index.html: sm/master
	$(MAKE) -C sm/master/docs html

clean:
	$(MAKE) -C sm/master/docs clean

sm: sm/master

sm/master: FORCE
	cd $@ && git fetch && git reset --hard origin/master

FORCE:
