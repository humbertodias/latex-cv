.PHONY: en

CC = xelatex
CV_SRCS = $(shell find . -name '*.tex')
UNAME = $(shell uname)

en: en/cv.tex $(CV_SRCS)
	$(CC) -output-directory=en $<

es: es/cv.tex $(CV_SRCS)
	$(CC) -output-directory=es $<

pt_br: pt_br/cv.tex $(CV_SRCS)
	$(CC) -output-directory=pt_br $<

clean:
ifeq ($(UNAME),Darwin)
	find -E . -regex '.*\.(out|log|aux)' -exec rm -f {} \;
endif

ifeq ($(UNAME),Linux)
	find . -regextype posix-egrep -regex '.*\.(out|log|aux)' -exec rm -f {} \;
endif
