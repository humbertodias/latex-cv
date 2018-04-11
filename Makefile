.PHONY: en

CC = xelatex
UNAME = $(shell uname)

en: touch_all
	cd en && $(CC) cv.tex && cd ..
es: touch_all
	cd es && $(CC) cv.tex && cd ..
pt_br: touch_all
	cd pt_br && $(CC) cv.tex && cd ..

touch_all:
	touch es/cv.tex
	touch en/cv.tex
	touch pt_br/cv.tex

clean:
ifeq ($(UNAME),Darwin)
	find -E . -regex '.*\.(out|log|aux)' -exec rm -f {} \;
endif

ifeq ($(UNAME),Linux)
	find . -regextype posix-egrep -regex '.*\.(out|log|aux)' -exec rm -f {} \;
endif
