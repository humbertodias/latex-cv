.PHONY: cv.pdf

CC = xelatex
CV_DIR = ./cv
EXAMPLES_DIR = .
RESUME_SRCS = $(shell find $(RESUME_DIR) -name '*.tex')
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

cv.pdf: $(EXAMPLES_DIR)/cv.tex $(CV_SRCS)
	$(CC) -output-directory=$(EXAMPLES_DIR) $<

clean:
	rm {*.out,.*.aux,*.log,*.pdf}
