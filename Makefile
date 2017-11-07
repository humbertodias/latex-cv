.PHONY: en

CC = xelatex
CV_SRCS = $(shell find . -name '*.tex')

en: en/cv.tex $(CV_SRCS)
	$(CC) -output-directory=en $<

es: es/cv.tex $(CV_SRCS)
	$(CC) -output-directory=es $<

pt_br: pt-br/cv.tex $(CV_SRCS)
	$(CC) -output-directory=pt-br $<

clean:
	# Mac
	#find -E . -regex '.*\.(out|log|aux)' -exec rm -f {} \;
	# Linux
	find . -regextype posix-egrep -regex '.*\.(out|log|aux)' -exec rm -f {} \;
