.PHONY: en

CC = xelatex
CV_SRCS = $(shell find . -name '*.tex')

en: en/cv.tex $(CV_SRCS)
	$(CC) -output-directory=en $<

es: es/cv.tex $(CV_SRCS)
	$(CC) -output-directory=es $<

clean:
	find -E . -regex '.*\.(out|log|aux)' -exec rm -f {} \;
