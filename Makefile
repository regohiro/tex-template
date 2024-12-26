SHELL:=/bin/bash
MAKEFLAGS+=--no-print-directory

files_tex:=$(shell find . -name 'main.tex' -not -path './z/*')
files_pdf:=$(files_tex:.tex=.pdf)

all: $(files_pdf)

%.pdf: %.tex
	@OUTPUT_FILE=$(shell dirname $<) ;\
	OUTDIR=${abspath .}/build; \
	mkdir -p $${OUTDIR}; \
	texfot latexmk -outdir=$${OUTDIR} -jobname=$${OUTPUT_FILE} -r .latexmkrc -cd $< -silent; CODE=$$?; \
	[ "$$CODE" != 0 ] && tail -n 50 ./build/$${OUTPUT_FILE}.log; \
	exit $$CODE

.PHONY: clean
clean:
	@rm -rf build/
